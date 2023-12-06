import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TxtProvider with ChangeNotifier{
  double? textsize=10;
  Color? textcolor=Colors.indigo;
   String name="";
  changetoTwelve() {
    textsize = 12;
    notifyListeners();
  }

  changetoThirteen() {
    textsize = 13;
    notifyListeners();
  }
  changetoFourteen() {
    textsize = 14;
    notifyListeners();
  }
  changetoFifteen(){
    textsize = 15;
    notifyListeners();
  }
  changetoRed(){
    textcolor=Colors.red;
    notifyListeners();
  }
  changetoGreen(){
    textcolor=Colors.green;
    notifyListeners();
  }
  textName(String name1){
    name=name1;
    notifyListeners();

  }
}