import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercontainercolor/providers/colorprovider.dart';
class ContainerColor extends StatefulWidget {
  const ContainerColor({Key? key}) : super(key: key);

  @override
  _ContainerColorState createState() => _ContainerColorState();
}

class _ContainerColorState extends State<ContainerColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Container(
            //   height:100,
            //   width:100,
            //   decoration: BoxDecoration(
            //     color: context.read<ColorProvider>().contcolour
            //   ),
            //
            // ),
            Consumer<ColorProvider>(
              builder: (BuildContext context, value, Widget? child) {
              return Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color:value.contcolour
                ),
              );
              },
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(onPressed:(){Provider.of<ColorProvider>(context,listen:false).changetoRed();}, child: Text("RED")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(onPressed:(){Provider.of<ColorProvider>(context,listen: false).changetoGreen();}, child: Text("GREEN")),
          ],
        ),
      ),
    );
  }
}
