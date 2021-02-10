import 'package:flutter/material.dart';
import 'package:uzmobile/constants/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:uzmobile/screens/settings_language/settings_language_screen.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      color: Colors.transparent,
      elevation: 9,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            color: kMainBlueColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    FlutterIcons.ios_person_ion,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    FlutterIcons.credit_ent,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    FlutterIcons.ios_globe_ion,
                    color: Colors.white,
                    size: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        SettingsLanguageScreen.routeName,
                      );
                    },
                    child: Icon(
                      FlutterIcons.ios_settings_ion,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
