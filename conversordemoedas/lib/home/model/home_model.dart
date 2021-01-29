// To parse this JSON data, do
//
//     final apiModel = apiModelFromJson(jsonString);

import 'dart:convert';

class ApiModel {
    ApiModel({
        this.usdBrl,
    });

    final double usdBrl;

    factory ApiModel.fromRawJson(String str) => ApiModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
        usdBrl: json["USD_BRL"] == null ? null : json["USD_BRL"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "USD_BRL": usdBrl == null ? null : usdBrl,
    };
}
