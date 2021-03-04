// To parse this JSON data, do
//
//     final apiModel = apiModelFromJson(jsonString);

 import 'dart:convert';
 
 class ApiModel {
    ApiModel({
        this.moeda,
    });

    final Moeda? moeda;

    factory ApiModel.fromRawJson(String str) => ApiModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ApiModel.fromJson(Map<String, dynamic> json) {
           var moeda;
           if(json["USD"] != null){  
             //(Dólar Comercial)
              moeda = json["USD"] == null ? null : Moeda.fromJson(json["USD"]);

           }else if(json["USDT"] != null){

             moeda = json["USDT"] == null ? null : Moeda.fromJson(json["USDT"]);

           } else if(json["AUD"] != null){

             moeda = json["AUD"] == null ? null : Moeda.fromJson(json["AUD"]);

           } else if(json["CAD"] != null){

             moeda = json["CAD"] == null ? null : Moeda.fromJson(json["CAD"]);

           } else if(json["EUR"] != null){

             moeda = json["EUR"] == null ? null : Moeda.fromJson(json["EUR"]);

           } else if(json["GBP"] != null){

             moeda = json["GBP"] == null ? null : Moeda.fromJson(json["GBP"]);

           } else if(json["ARS"] != null){

             moeda = json["ARS"] == null ? null : Moeda.fromJson(json["ARS"]);

           } else if(json["JPY"] != null){

             moeda = json["JPY"] == null ? null : Moeda.fromJson(json["JPY"]);


           } else if(json["CHF"] != null){

             moeda = json["CHF"] == null ? null : Moeda.fromJson(json["CHF"]);

           }else if(json["CNY"] != null){

             moeda = json["CNY"] == null ? null : Moeda.fromJson(json["CNY"]);

           } else if(json["YLS"] != null){

             moeda = json["YLS"] == null ? null : Moeda.fromJson(json["YLS"]);

           } else if(json["BTC"] != null){

             moeda = json["BTC"] == null ? null : Moeda.fromJson(json["BTC"]);
             
           } else if(json["LTC"] != null){

             moeda = json["LTC"] == null ? null : Moeda.fromJson(json["LTC"]);

           } else if(json["ETH"] != null){

             moeda = json["ETH"] == null ? null : Moeda.fromJson(json["ETH"]);

           }else if(json["XRP"] != null){

             moeda = json["XRP"] == null ? null : Moeda.fromJson(json["XRP"]);
           }

        return ApiModel(
         moeda:  moeda == null ? null :  moeda,
        );
    } 

    Map<String, dynamic> toJson() => {
        "BTC": moeda == null ? null : moeda!.toJson(),
    };
}

class Moeda {
    Moeda({
        this.code,
        this.codein,
        this.name,
        this.high,
        this.low,
        this.varBid,
        this.pctChange,
        this.bid,
        this.ask,
        this.timestamp,
        this.createDate,
    });

    final String? code;
    final String? codein;
    final String? name;
    final String? high;
    final String? low;
    final String? varBid;
    final String? pctChange;
    final String? bid;
    final String? ask;
    final String? timestamp;
    final DateTime? createDate;

    factory Moeda.fromRawJson(String str) => Moeda.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Moeda.fromJson(Map<String, dynamic> json) => Moeda(
        code: json["code"] == null ? null : json["code"],
        codein: json["codein"] == null ? null : json["codein"],
        name: json["name"] == null ? null : json["name"],
        high: json["high"] == null ? null : json["high"],
        low: json["low"] == null ? null : json["low"],
        varBid: json["varBid"] == null ? null : json["varBid"],
        pctChange: json["pctChange"] == null ? null : json["pctChange"],
        bid: json["bid"] == null ? null : json["bid"],
        ask: json["ask"] == null ? null : json["ask"],
        timestamp: json["timestamp"] == null ? null : json["timestamp"],
        createDate: json["create_date"] == null ? null : DateTime.parse(json["create_date"]),
    );

    Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "codein": codein == null ? null : codein,
        "name": name == null ? null : name,
        "high": high == null ? null : high,
        "low": low == null ? null : low,
        "varBid": varBid == null ? null : varBid,
        "pctChange": pctChange == null ? null : pctChange,
        "bid": bid == null ? null : bid,
        "ask": ask == null ? null : ask,
        "timestamp": timestamp == null ? null : timestamp,
        "create_date": createDate == null ? null : createDate!.toIso8601String(),
    };
}
// class ApiModel {
//   BTC bTC;

//   ApiModel({this.bTC});

//   ApiModel.fromJson(Map<String, dynamic> json) {
//     bTC = json['BTC'] != null ? new BTC.fromJson(json['BTC']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.bTC != null) {
//       data['BTC'] = this.bTC.toJson();
//     }
//     return data;
//   }
// }

// class BTC {
//   String code;
//   String codein;
//   String name;
//   String high;
//   String low;
//   String varBid;
//   String pctChange;
//   String bid;
//   String ask;
//   String timestamp;
//   String createDate;

//   BTC(
//       {this.code,
//       this.codein,
//       this.name,
//       this.high,
//       this.low,
//       this.varBid,
//       this.pctChange,
//       this.bid,
//       this.ask,
//       this.timestamp,
//       this.createDate});

//   BTC.fromJson(Map<String, dynamic> json) {
//     code = json['code'];
//     codein = json['codein'];
//     name = json['name'];
//     high = json['high'];
//     low = json['low'];
//     varBid = json['varBid'];
//     pctChange = json['pctChange'];
//     bid = json['bid'];
//     ask = json['ask'];
//     timestamp = json['timestamp'];
//     createDate = json['create_date'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['code'] = this.code;
//     data['codein'] = this.codein;
//     data['name'] = this.name;
//     data['high'] = this.high;
//     data['low'] = this.low;
//     data['varBid'] = this.varBid;
//     data['pctChange'] = this.pctChange;
//     data['bid'] = this.bid;
//     data['ask'] = this.ask;
//     data['timestamp'] = this.timestamp;
//     data['create_date'] = this.createDate;
//     return data;
//   }
// }