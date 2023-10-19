import 'package:flutter/foundation.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketService {
  late io.Socket socket;

  void connectToSocket() {
    socket = io.io(
        "http://192.168.10.14:9000",
        io.OptionBuilder().setTransports(['websocket']).enableAutoConnect().build()
    );
    socket.onConnect((data) => print("Connection Established"));
    socket.onConnectError((data) => print("Connection Error"));

    socket.connect();
  }

  void joinRoom(String uid) {
    socket.emit('join-room', {'uid': uid});

    socket.on('join-check', (data) {
      if (kDebugMode) {
        print(data);
      }
    });
  }

  void addNewChat(Map chatInfo, String uid) {
    socket.emit('add-new-chat', {'chatInfo': chatInfo, "uid" : uid});

    socket.on('new-chat', (chat) {
      if (kDebugMode) {
        print('New chat created: $chat');
      }
    });
  }

  joinChat(String uid) {
    socket.emit('join-chat', {'uid': uid});

    socket.on('all-messages', (messages) {
      if (kDebugMode) {
        print('All messages in the chat: $messages');
      }
    });
  }

  addNewMessage(String message, String sender, String chat) {
    socket.emit('add-new-message', {
      "message": message, "sender" : sender, "chat" : chat
    });

    socket.on('all-messages', (messages) {
      if (kDebugMode) {
        print('All messages in the chat: $messages');
      }
    });
  }

  getAllChats(String uid) {
    socket.emit('get-all-chats', {'uid': uid});

    socket.on('all-chats', (chats) {
      if (kDebugMode) {
        print('All chats: $chats');
      }
    });
  }

  void disconnect() {
    socket.disconnect();
  }
}