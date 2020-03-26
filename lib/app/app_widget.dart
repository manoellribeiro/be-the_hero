import 'package:be_the_hero/app/shared/size_config.dart';
import 'package:be_the_hero/app/shared/stylings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        return OrientationBuilder(
          builder: (context, orientation){
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              navigatorKey: Modular.navigatorKey,
              title: 'Flutter Slidy',
              theme: AppTheme.lightTheme,
              initialRoute: '/',
              onGenerateRoute: Modular.generateRoute,
            );
          },
        );
      },
    );
  }
}
