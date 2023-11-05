import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/notification.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketService extends GetxController{

  late io.Socket socket;

  NotificationClass notificationClass = NotificationClass();

  List<dynamic> messageList = [];
  bool isLoading = false;
  String chatId = "";

  void connectToSocket() {
    socket = io.io(
        "192.168.10.14:9000",
        io.OptionBuilder().setTransports(['websocket']).enableAutoConnect().build()
    );

    socket.onConnect((data) => print("Connection Established"));
    socket.onConnectError((data) => print("Connection Error"));

    socket.connect();

    socket.on('join-check', (data) {
      if (kDebugMode) {
        print("this is: $data");
      }
    });

    socket.on('new-chat', (chat) {
      chatId = chat["_id"];
      joinChat(chatId);
      if (kDebugMode) {
        print("chat id: $chatId");
      }
      if (kDebugMode) {
        print("chat id type: ${chat.runtimeType}");
      }
    });

    socket.on('all-messages', (messages) {
      messageList.clear();
      isLoading = true;
      update();

      if(messages is List){
        for(var message in messages){
          if(message is Map<String, dynamic>){
            messageList.add(message);
          }
        }
      }
      if (kDebugMode) {
        print(messageList);
      }
      isLoading = false;
      update();
    });

    socket.on('all-chats', (chats) {
      if (kDebugMode) {
        print('All chats: $chats');
      }
    });

    socket.on('host-notification', (data) {
      if (data == null) {
        if (kDebugMode) {
          print("No Data: $data");
        }
      } else {
        notificationClass
            .showNotification(data['allNotification'][0]['message']);
        if (kDebugMode) {
          print("This is  Data: $data");
        }
        if (kDebugMode) {
          print("This is Data msg : ${data['allNotification'][0]['message']}");
        }
      }
    });
  }

  void joinRoom(String uid) {
    socket.emit('join-room', {'uid': uid});
  }

  void addNewChat(Map chatInfo, String uid) {
    socket.emit('add-new-chat', {'chatInfo': chatInfo, "uid": uid});
  }

  joinChat(String uid) {
    socket.emit('join-chat', {'uid': uid});
  }

  addNewMessage(String message, String sender, String chat) {
    socket.emit('add-new-message', {"message": message, "sender": sender, "chat": chat});
  }

  getAllChats(String uid) {
    socket.emit('get-all-chats', {'uid': uid});
  }

  void getNotification(String uid) {
    socket.emit('join-room', {'uid': uid});
  }

  void disconnect() {
    socket.disconnect();
  }
}