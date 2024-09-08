import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenLocalization extends StatefulWidget {
  const ScreenLocalization({Key? key}) : super(key: key);

  @override
  State<ScreenLocalization> createState() => _ScreenLocalizationState();
}

class _ScreenLocalizationState extends State<ScreenLocalization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Localization'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                  // .tr mean translation it is get from getx library
                  'message'.tr

              ),
              subtitle: Text('name'.tr),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                    onPressed: (){
                      Get.updateLocale(Locale('en','US'));
                    },
                    child: Text('English')
                ),
                SizedBox(width: 10,),
                OutlinedButton(
                    onPressed: (){
                      Get.updateLocale(Locale('ur','PK'));
                    },
                    child: Text('Urdu'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
