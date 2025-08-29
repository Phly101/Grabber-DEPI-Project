import 'package:flutter/material.dart';
import 'package:grabber_app/Theme/light_theme.dart';
import 'widgetT/biscuit_items.dart';
import 'widgetT/detergent_items.dart';
import 'widgetT/fruit_items.dart';

//TODO: make FloatingActionButton
//TODO: make Navigator

class HomeTab extends StatelessWidget {
  static const String routeName = "home_tab";
  const HomeTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
              children: [
                  Row(
                    children: [
                      Text(
                        'Fruits',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: TextStyle(color: LightThemeData.darkPrimaryColor,fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                SizedBox(height: 10),
                AspectRatio(            //card maintains its shape on any screen.
                  aspectRatio: 3 / 2,
                  child: FruitsItems(),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Detergent',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(color: LightThemeData.darkPrimaryColor,fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5),
                AspectRatio(            //card maintains its shape on any screen.
                  aspectRatio: 3 / 2,
                  child:DetergentItems(),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Biscuit',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(color: LightThemeData.darkPrimaryColor,fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                AspectRatio(            //card maintains its shape on any screen.
                  aspectRatio: 3 / 2,
                  child:BiscuitItems(),
                  ),

              ],
            ),
        ),
      ),
      //),
    );
  }
}
