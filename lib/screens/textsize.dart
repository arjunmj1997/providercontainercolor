import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercontainercolor/providers/colorprovider.dart';
import 'package:providercontainercolor/providers/textprovider.dart';
class TxtSize extends StatefulWidget {
  const TxtSize({Key? key}) : super(key: key);

  @override
  _TxtSizeState createState() => _TxtSizeState();
}

class _TxtSizeState extends State<TxtSize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green,
        title: Consumer<TxtProvider>(
          builder: (BuildContext context,value,Widget? child){
             return Text("WELCOME",
              style: TextStyle(
                  color:context.read<ColorProvider>().contcolour,
                  fontSize:value.textsize,

              ),
            );
          },

        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Welcome"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed:(){context.read<TxtProvider>().changetoTwelve();}, child:Text("Size12")),
            ElevatedButton(onPressed:(){context.read<TxtProvider>().changetoFifteen();}, child:Text("changeto15")),
            ElevatedButton(onPressed:(){context.read<ColorProvider>().changetoRed();}, child:Text("RED"))
          ],
        ),
      ),
    );
  }
}
