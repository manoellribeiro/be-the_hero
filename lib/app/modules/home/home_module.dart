import 'package:be_the_hero/app/modules/home/pages/contact/contact_page.dart';
import 'package:be_the_hero/app/modules/home/repositories/incident_repository.dart';
import 'package:be_the_hero/app/modules/home/home_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:be_the_hero/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<IncidentRepository>())),
        Bind((i) => IncidentRepository(i.get<Dio>())),
        Bind((i) => Dio())
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/contact', child: (_, args) => ContactPage(incidentModel: args.data)),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
