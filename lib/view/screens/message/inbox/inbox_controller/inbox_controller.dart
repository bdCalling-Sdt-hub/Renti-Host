import 'package:get/get.dart';
import 'package:renti_host/service/socket_service.dart';

class InboxController extends GetxController {

  SocketService socketService = SocketService();

  hostMsg({required String hostUid, required String userUid}) {
    socketService.connectToSocket();
    socketService.joinRoom(hostUid);
    socketService.addNewChat({
      "participants": [userUid, hostUid],
    }, hostUid);
    socketService.joinChat(hostUid);
    // socketService.addNewMessage("Hiii", hostUid, hostUid);
    socketService.getAllChats(hostUid);
  }

  userMsg({required String hostUid, required String userUid}) {
    socketService.connectToSocket();
    socketService.joinRoom(userUid);
    socketService.addNewChat({
      "participants": [hostUid, userUid],
    }, hostUid);
    socketService.joinChat(userUid);
    // socketService.addNewMessage("Hiii", userUid, userUid);
    socketService.getAllChats(userUid);
  }
}