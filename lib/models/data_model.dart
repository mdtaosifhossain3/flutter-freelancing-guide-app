class DataModel {
  int? id;
  String? cardTitle;
  String? data;

  DataModel({this.id, this.cardTitle, this.data});

  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cardTitle = json['card_title'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['card_title'] = cardTitle;
    data['data'] = this.data;
    return data;
  }
}
