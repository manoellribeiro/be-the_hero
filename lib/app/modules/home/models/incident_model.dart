class IncidentModel {

  final int id;
  final String title;
  final String description;
  final String value;
  final String ongId;
  final String ongName;
  final String email;
  final String whatsapp;
  final String city;
  final String uf;

  IncidentModel({this.id, this.title, this.description, this.value, this.ongId, this.ongName, this.email, this.whatsapp, this.city, this.uf});

  factory IncidentModel.fromJson(Map<String, dynamic> json) {
    return IncidentModel(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        value: json['value'],
        ongId: json['ong_id'],
        ongName: json['name'],
        email: json['email'],
        whatsapp: json['whatsapp'],
        city: json['city'],
        uf: json['uf'],
        );
  }

  Map<String, dynamic> toJson() => {};
}
