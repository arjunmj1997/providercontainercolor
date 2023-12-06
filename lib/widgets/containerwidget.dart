import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercontainercolor/providers/textprovider.dart';

import '../screens/dropdownsize.dart';

class ShowContainer extends StatefulWidget {

   ShowContainer({Key? key}) : super(key: key);

  @override
  _ShowContainerState createState() => _ShowContainerState();
}

class _ShowContainerState extends State<ShowContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      color: Colors.red,
      child:Consumer<TxtProvider>(builder: (BuildContext context, value, Widget? child) {
        return Text(value.name,
          style: TextStyle(color: value.textcolor,fontSize: value.textsize),
        );
      },

      ),
    );
  }
}
