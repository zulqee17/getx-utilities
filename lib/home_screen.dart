import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagment/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx HomeScreen'),
      ),
      body: Column(
        children: [
          Card(
            child:ListTile(
              title: Text('Getx Dialog Alert'),
              subtitle:Text('getx dialog Alert'),
              onTap: (){
                // this is dialogAlert utility provided by Getx
                // we dont have to code for dialog box
                Get.defaultDialog(
                  titlePadding: EdgeInsets.only(top: 20),
                  title: 'Detele Chat',
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are you sure, want to delete',
                  confirm: TextButton(
                      onPressed: (){
                        Get.back();
                      },
                      child: Text('Ok')
                  ),
                  cancel: TextButton(
                      onPressed: (){
                        Get.back();
                      },
                      child: Text('cancel')
                  )
                );
              },
            ),
          ),
          Card(
            child:ListTile(
              title: Text('Theme'),
              subtitle:Text('changing theme through getx'),
              onTap: (){
                // this is bottomSheet utility provided by Getx
                // we dont have to code for bottomSheet box
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlue
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Mode'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Mode'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),

                      ],
                    ),
                  )
                );

              },
            ),
          ),
          
          Center(
            child: TextButton(
              onPressed: (){
                // get.to is used to navigate from one screen to another
                // Get.to(ScreenOne(name: 'zulqarnain',));

                // get.toNamed is used when we declare routes
                // to pass data using get,toNamed then we define data in argments
                // that we want to pass
                Get.toNamed('/ScreenOne',arguments: [
                  'zulqarnain',
                  'zulqarnain niaz'
                ]);

              },
              child: Text('go to screen 1'),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        onPressed: (){
          // we get snackBar by using get.snackbar this utility provided by getx
          // we dont need to code for snackbar.
          Get.snackbar('Fire Alert', 'fire is exceeded its limit so call 911');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
