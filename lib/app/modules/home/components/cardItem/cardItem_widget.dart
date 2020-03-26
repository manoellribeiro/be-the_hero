import 'package:be_the_hero/app/modules/home/models/incident_model.dart';
import 'package:be_the_hero/app/shared/size_config.dart';
import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {

  final IncidentModel incidentModel;
  final Function onTap;

  const CardItemWidget({Key key, this.incidentModel, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: onTap,
          child: Container(
        height: 31.25 * SizeConfig.heightMultiplier,
        width: 55.55 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 4 * SizeConfig.widthMultiplier,
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "ONG:",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 15),
                ),
              Text(
                incidentModel.ongName,
                style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 13),
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
                SizedBox(height: 20),
              Text(
                "VALOR:",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 15),
                ),
              Text(
                " R\$ ${incidentModel.value}",
                style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 13),
                ),
                SizedBox(height: 20),
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
