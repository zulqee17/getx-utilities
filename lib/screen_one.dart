import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagment/screen_two.dart';

// ignore: must_be_immutable
class ScreenOne extends StatefulWidget {
  var name;
   ScreenOne({Key? key, this.name}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Screen One'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                // get.to is used to navigate from one screen to another
                // Get.to(ScreenTwo());
                Get.offNamed('ScreenTwo');
              },
              child: Text('go to screen 2'),
            ),
          ),
          Center(
            child: Text('wellcome '+Get.arguments[1]+' to getx tutorial'),
          ),

          // {
          // in formal way we define height ans width using mediaquery
          //   height/width=mediaQuery.of(context).size.height/width*1;

          //   but in getx we define it like
          //   height/width=Get.height/width*1;
        //   }


        ],
      ),

    );
  }
}
