import 'package:be_the_hero/app/modules/home/models/incident_model.dart';
import 'package:be_the_hero/app/modules/home/repositories/incident_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  
  final IncidentRepository repository;

  _HomeControllerBase(this.repository){
    fetchIncidents();
    getTotalofIncidents();
    getOngNames();
    print(totalOfIncidents);
  }

  @computed
  List<IncidentModel> get listFieltered {
    if(hintText == "Todas"){
      return incidents.value;
    }else {
      return incidents.value.where((item) => item.ongName.toLowerCase().contains(hintText.toLowerCase())).toList();
    }
  }

  @observable
  String hintText = "Todas";

  @observable
  ObservableFuture<List<String>> ongNames;

  @action
  getOngNames(){
    ongNames = repository.getOngsName().asObservable();
  }

  @observable
  ObservableFuture<List<String>> totalOfIncidents;

  @action
  getTotalofIncidents(){
    totalOfIncidents = repository.getTotalOfIncidents().asObservable();
  }

  @observable
  ObservableFuture<List<IncidentModel>> incidents;

  @action
  fetchIncidents(){
    incidents = repository.getIncidents().asObservable();
  }

}
