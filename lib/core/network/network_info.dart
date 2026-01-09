import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class NetworkResult {
  final ConnectivityResult connectivityResult;
  final bool isConnected;

  NetworkResult(this.connectivityResult, this.isConnected);
}

abstract class NetworkInfo {
  Future<NetworkResult> get network;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;
  final InternetConnection internetConnection;

  NetworkInfoImpl(this.connectivity, this.internetConnection);

  @override
  Future<NetworkResult> get network async {
    ConnectivityResult connectivityResult =
    await connectivity.checkConnectivity();
    bool isConnected = await internetConnection.hasInternetAccess;
    return NetworkResult(connectivityResult, isConnected);
  }
}
