import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColorProvider with ChangeNotifier {
  Color contcolour = Colors.orange;
  changetoRed(){
   contcolour=Colors.red;
   notifyListeners();
   return contcolour;

 }
 changetoGreen(){
   contcolour=Colors.green;
   notifyListeners();
   return contcolour;
 }
}