import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectvityController {

  ConnectvityController._();

  static final ConnectvityController instance = ConnectvityController._();
  ValueNotifier<bool> isConnected = ValueNotifier(true);
 Future<void> init() async{
   final result =  await Connectivity().checkConnectivity();
   isInternetConnected(result);
   Connectivity().onConnectivityChanged.listen(isInternetConnected);
  }

  bool isInternetConnected(ConnectivityResult? result){
      if(result== ConnectivityResult.none){
        isConnected.value = false;
        return false;
      }else if(result== ConnectivityResult.mobile || result == ConnectivityResult.wifi){
        isConnected.value=true;
        return true;
      }
      return false;
  }

}