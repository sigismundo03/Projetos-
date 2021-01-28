// To parse this JSON data, do
//
//     final apiModel = apiModelFromJson(jsonString);

import 'dart:convert';

class ApiModel {
    ApiModel({
        this.global,
    });

    final Global global;

    factory ApiModel.fromRawJson(String str) => ApiModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
        global: json["Global"] == null ? null : Global.fromJson(json["Global"]),
    );

    Map<String, dynamic> toJson() => {
        "Global": global == null ? null : global.toJson(),
    };
}

class Global {
    Global({
        this.moeda,
    });

    final double moeda;

    factory Global.fromRawJson(String str) => Global.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Global.fromJson(Map<String, dynamic> json) => Global(
        moeda: json["moeda"] == null ? null : json["moeda"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "moeda": moeda == null ? null : moeda,
    };
}