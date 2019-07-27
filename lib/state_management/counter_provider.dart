import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{

  int productCount = 0;
  getProductCount() => productCount;
  setProductCount(int count) => productCount = count;

  void increment(){
    productCount++;
    notifyListeners();
  }
  void decrement(){
    productCount--;
    notifyListeners();
  }


}