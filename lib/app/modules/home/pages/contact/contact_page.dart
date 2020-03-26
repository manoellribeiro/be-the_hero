import 'package:be_the_hero/app/modules/home/components/contactCard/contactCard_widget.dart';
import 'package:be_the_hero/app/modules/home/components/contactCardButtons/contactCardButtons_widget.dart';
import 'package:be_the_hero/app/modules/home/models/incident_model.dart';
import 'package:be_the_hero/app/shared/images.dart';
import 'package:be_the_hero/app/shared/size_config.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {

  final IncidentModel incidentModel;

  final String title;
  const ContactPage({Key key, this.title = "Contact", this.incidentModel}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
              IconButton(
                icon: Icon(
                Icons.arrow_back,
                size: 8 * SizeConfig.imageSizeMultiplier,
                color: Theme.of(context).iconTheme.color,  
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
                )
            ],
            ),
          ),
          Flex(
            mainAxisAlignment: MainAxisAlignment.center,
            direction: SizeConfig.isPortrait ? Axis.vertical : Axis.horizontal,
            children: <Widget>[
              Center(child: ContactCardWidget(incidentModel: widget.incidentModel,)),
              SizedBox(height: 30, width: 20,),
              Center(child: ContactCardButtonsWidget(incidentModel: widget.incidentModel,))
            ],
            )
        ],
      ),
    );
  }
}
