import 'package:connectivity_plus/connectivity_plus.dart';

class SyncService {
  void startSync() {
    Connectivity().onConnectivityChanged.listen((result) {
      if (result != ConnectivityResult.none) {
        syncData();
      }
    });
  }

  void syncData() {
    print("Syncing with server...");
    // For prototype: simulate sync
  }
}