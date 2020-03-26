import 'package:be_the_hero/app/modules/home/models/incident_model.dart';
import 'package:be_the_hero/app/shared/size_config.dart';
import 'package:flutter/material.dart';

class ContactCardWidget extends StatelessWidget {

  final IncidentModel incidentModel;

  const ContactCardWidget({Key key, this.incidentModel}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35 * SizeConfig.heightMultiplier,
        width: SizeConfig.isPortrait ?  90 * SizeConfig.widthMultiplier : 80 * SizeConfig.widthMultiplier ,
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
                "ONG:",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 18),
                ),
              Text(
                incidentModel.ongName,
                style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 16),
                ),
                SizedBox(height: 20),
              Text(
                "CASO:",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 18),
                ),
              Text(
                incidentModel.description,
                style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 16),
                ),
                SizedBox(height: 20),
              Text(
                "VALOR:",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 18),
                ),
              Text(
                " R\$ ${incidentModel.value}",
                style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 16),
                ),
            ],
          ),
        ),
        );
  }
}
