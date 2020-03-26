import 'package:be_the_hero/app/modules/home/models/incident_model.dart';
import 'package:be_the_hero/app/shared/size_config.dart';
import 'package:flutter/material.dart';

class CardItemLandscapeWidget extends StatelessWidget {

  final IncidentModel incidentModel;
  final Function onTap;

  const CardItemLandscapeWidget({Key key, this.incidentModel, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
          child: Container(
        height: 31.25 * SizeConfig.heightMultiplier ,
        width: 300,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5 * SizeConfig.widthMultiplier),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                    Text(
                "ONG:",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 15),
                ),
              Text(
                incidentModel.ongName,
                style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 13),
                ),
                 ],),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text(
                "VALOR:",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 15),
                ),
                Text(
                " R\$ ${incidentModel.value}",
                style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 13),
                ),
                ],)
                ],
                ),
                SizedBox(height: 20),
              Text(
                "CASO:",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 15),
                ),
              FittedBox(
                              child: Text(
                  incidentModel.description,
                  style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 12),
                  ),
              ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Veja mais detalhes",
                      style: Theme.of(context).textTheme.title.copyWith(color: Theme.of(context).accentColor, fontSize: 15),
                      ),
                    Icon(Icons.arrow_forward, color: Theme.of(context).accentColor),
                  ],
                  )
            ],
          ),
        ),
        ),
    );
  }
}
