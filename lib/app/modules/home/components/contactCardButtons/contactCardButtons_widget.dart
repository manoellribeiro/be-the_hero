import 'package:be_the_hero/app/modules/home/models/incident_model.dart';
import 'package:be_the_hero/app/shared/size_config.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactCardButtonsWidget extends StatelessWidget {

  final IncidentModel incidentModel;

  const ContactCardButtonsWidget({Key key, this.incidentModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeConfig.isPortrait ? 30 * SizeConfig.heightMultiplier: 35 * SizeConfig.heightMultiplier,
        width:  SizeConfig.isPortrait ? 90 * SizeConfig.widthMultiplier : 80 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.isPortrait ? 4 * SizeConfig.widthMultiplier: 5 * SizeConfig.widthMultiplier),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Salve o dia!",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 18),
                ),
              Text(
                "Seja o herói desse caso",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 18),
                ),
                SizedBox(height: 20),
                Text(
                "Entre em contato",
                style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 15),
                ),
                Flex(
                  mainAxisAlignment: MainAxisAlignment.center,
                  direction: Axis.horizontal,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      color: Theme.of(context).buttonColor,
                      child: Text("Whatsapp", style: Theme.of(context).textTheme.title.copyWith(fontSize: 15, color: Colors.white),),
                      onPressed: () async {
                        await launch('https://wa.me/55${incidentModel.whatsapp}');
                      },
                    ),
                    SizedBox(width: 30,),
                    RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      color: Theme.of(context).buttonColor,
                      child: Text("E-mail", style: Theme.of(context).textTheme.title.copyWith(fontSize: 15, color: Colors.white),),
                      onPressed: () async {
                        //await launch("${incidentModel.email}");
                      },
                    ),
                  ],
                  )
            ],
          ),
        ),
        );
  }
}
