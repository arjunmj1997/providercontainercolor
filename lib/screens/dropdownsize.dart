import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercontainercolor/providers/textprovider.dart';

import '../widgets/containerwidget.dart';

class DropSize extends StatefulWidget {
  const DropSize({Key? key}) : super(key: key);

  @override
  _DropSizeState createState() => _DropSizeState();
}

class _DropSizeState extends State<DropSize> {
  var dropvalue;
  TextEditingController namecontrl=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Enter Your Name",style: TextStyle(color: Colors.blue),),
            TextFormField(
              controller: namecontrl,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: "Enter Name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(
                    color: Colors.red,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.green,
                  )
                )
              ),
            ),
            Container(
             // height: 100,
              width: 200,
              decoration: BoxDecoration(
                border:Border.all(color: Colors.red)
              ),
              child: DropdownButton(
                //dropdownColor: Colors.red,
                alignment: AlignmentDirectional.topStart,
                icon:Padding(
                  padding: const EdgeInsets.only(left:100),
                  child: Icon(Icons.keyboard_arrow_down),
                ),
                value: dropvalue,
                focusColor: Colors.green,
                items: [
                  DropdownMenuItem(
                    value: 1,
                      child:TextButton(
                        onPressed: () {
                          context.read<TxtProvider>().changetoTwelve();
                        },
                      child: Text("12"),),

                  ),
                  DropdownMenuItem(
                    value: 2,
                    child:TextButton(
                    onPressed: (){
                      context.read<TxtProvider>().changetoThirteen();
                    },
                    child: Text("13"),
                  ),),
                  DropdownMenuItem(
                    value: 3,
                    child:TextButton(
                    onPressed: (){
                      context.read<TxtProvider>().changetoFourteen();
                    },
                    child: Text("14"),
                  ),),
                  DropdownMenuItem(
                    value: 5,
                    child:TextButton(
                    onPressed: (){ context.read<TxtProvider>().changetoFifteen();},
                    child: Text("15"),
                  ),),
                  DropdownMenuItem(
                    value: 5,
                    child:TextButton(
                    onPressed: (){ context.read<TxtProvider>().changetoFifteen();},
                    child: Text("16"),
                  ),),
                ],
                onChanged: (value) {

                  setState(() {
                    dropvalue=value;
                  });
                },

              ),
            ),
            ElevatedButton(onPressed:(){
              context.read<TxtProvider>().textName(namecontrl.text.toString());
            }, child:Text("Show Text")),
            SizedBox(
              height: 15,
            ),
            ShowContainer(),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
  Widget displayText(){
  //   return Container(
  //     height: 150,
  //     width: 150,
  //     color: Colors.yellow,
  //     child: Consumer<TxtProvider>(builder: (BuildContext context, value, Widget? child) {
  // return Text(name,style: TextStyle(color:value.textcolor,fontSize: value.textsize),);
  // },
  //     ),
  //   );
    return Container(
      height: 150,
      width: 150,
      color: Colors.red,
      child: Text(
        "WELCOME",
        style: TextStyle(color: Colors.yellow,fontSize: 24),
      ),
    );
  }
}



