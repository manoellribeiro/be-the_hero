import 'package:be_the_hero/app/modules/home/components/cardItemLandscape/cardItemLandscape_widget.dart';
import 'package:be_the_hero/app/shared/images.dart';
import 'package:be_the_hero/app/shared/size_config.dart';
import 'package:be_the_hero/app/shared/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/cardItem/cardItem_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.isPortrait? 7 * SizeConfig.heightMultiplier: 7 * SizeConfig.heightMultiplier,
              left:  SizeConfig.isPortrait? 6 * SizeConfig.widthMultiplier: 3 * SizeConfig.widthMultiplier,
              right: SizeConfig.isPortrait? 3 * SizeConfig.widthMultiplier: 3 * SizeConfig.widthMultiplier,
              bottom: SizeConfig.isPortrait? 5 * SizeConfig.heightMultiplier: 2 * SizeConfig.heightMultiplier,
              ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(Images.logo),
              Observer(
                builder: (_){
                 if(controller.totalOfIncidents.value == null){
                   return CircularProgressIndicator();
                 } else {
                   return Text("Total de ${controller.totalOfIncidents.value[0]} casos",
                  style: Theme.of(context).textTheme.subtitle,
                  );
                 }
                },)
            ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:  SizeConfig.isPortrait? 6 * SizeConfig.widthMultiplier: 3 * SizeConfig.widthMultiplier),
            child: Text(
              Strings.welcomeMessage,
              style: Theme.of(context).textTheme.title.copyWith(fontSize: 25),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal:  SizeConfig.isPortrait? 6 * SizeConfig.widthMultiplier: 3 * SizeConfig.widthMultiplier,
              vertical: SizeConfig.isPortrait? 2 * SizeConfig.heightMultiplier: 0 ,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                  SizeConfig.isPortrait ? Strings.initialMessagePortrait : Strings.initialMessageLandscape,
                  style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 15),
                  textAlign: TextAlign.left,
                  ),
                  
                ],
              ),
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.isPortrait ? 6 * SizeConfig.widthMultiplier: 3 * SizeConfig.widthMultiplier),
            child: Observer(
                          builder: (_){
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: DropdownButton<String>(
                                  key: Key("DropdownButton"),
                                  isExpanded: false,
                                  elevation: 0,
                                  hint: Text(controller.hintText),
                                  icon: Icon(Icons.arrow_drop_down),
                                  items: controller.ongNames.value.map((String dropDownStringItem){
                                    return DropdownMenuItem<String>(
                                      value: dropDownStringItem,
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.filter_list, size: 10),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 5),
                                          ),
                                          Text(dropDownStringItem)
                                        ],
                                      )
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      controller.hintText = value;
                                    });
                                  }
                              ),
                            );
                          },
                        ),
          ),
          Expanded(
            child:  Observer(
                  builder: (_){
                    return ListView.builder(
                  scrollDirection: SizeConfig.isPortrait ? Axis.vertical : Axis.horizontal,
                  itemCount: controller.listFieltered.length,
                  itemBuilder: (BuildContext context, index){
                    if(controller.listFieltered ==null){
                      return CircularProgressIndicator();
                    }
                    return Padding(
                      padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.isPortrait? 6 * SizeConfig.widthMultiplier: 3 * SizeConfig.widthMultiplier,
                      vertical: SizeConfig.isPortrait? 3 * SizeConfig.widthMultiplier: 3 * SizeConfig.widthMultiplier,
                    ),
                      child: SizeConfig.isPortrait ?
                       CardItemWidget(
                        onTap: (){
                        Navigator.pushNamed(context, 'contact', arguments: controller.listFieltered[index]);
                        },
                        incidentModel: controller.listFieltered[index],) : 
                        CardItemLandscapeWidget(
                          onTap: (){
                          Navigator.pushNamed(context, 'contact', arguments: controller.listFieltered[index]);
                          },
                          incidentModel: controller.listFieltered[index],),
                    );
                  });
                  },)
                
          )
        ],
      ),
    );
  }
}
