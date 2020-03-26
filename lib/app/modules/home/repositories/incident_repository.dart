import 'package:be_the_hero/app/modules/home/models/incident_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class IncidentRepository extends Disposable {
  
  final Dio dio;

  IncidentRepository(this.dio);


  Future<List<IncidentModel>> getIncidents() async {
    var response = await dio.get('http://192.168.15.5:3333/incidents');
    return (response.data as List).map((item) => IncidentModel.fromJson(item)).toList();
  }

  Future<List<String>> getOngsName() async {
    var response = await dio.get('http://192.168.15.5:3333/ongs');
    List<String> listOfNames = [];
    (response.data as List).map((item) => listOfNames.add(item['name'])).toList();
    return listOfNames;
  }

  Future<List<String>> getTotalOfIncidents() async {
    var response = await dio.get('http://192.168.15.5:3333/incidents');
    return (response.headers['x-total-count']);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
