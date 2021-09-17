
import 'dart:convert';

List<BreweryModel> breweryModelFromJson(String str) => List<BreweryModel>.from(json.decode(str).map((x) => BreweryModel.fromJson(x)));

String breweryModelToJson(List<BreweryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BreweryModel {
  BreweryModel({
    this.id,
    this.obdbId,
    this.name,
    this.breweryType,
    this.street,
    this.address2,
    this.address3,
    this.city,
    this.state,
    this.countyProvince,
    this.postalCode,
    this.country,
    this.longitude,
    this.latitude,
    this.phone,
    this.websiteUrl,
    this.updatedAt,
    this.createdAt,
  });

  int id;
  String obdbId;
  String name;
  String breweryType;
  dynamic street;
  dynamic address2;
  dynamic address3;
  String city;
  String state;
  dynamic countyProvince;
  String postalCode;
  String country;
  dynamic longitude;
  dynamic latitude;
  dynamic phone;
  dynamic websiteUrl;
  DateTime updatedAt;
  DateTime createdAt;

  factory BreweryModel.fromJson(Map<String, dynamic> json) => BreweryModel(
    id: json["id"],
    obdbId: json["obdb_id"],
    name: json["name"],
    breweryType: json["brewery_type"],
    street: json["street"],
    address2: json["address_2"],
    address3: json["address_3"],
    city: json["city"],
    state: json["state"],
    countyProvince: json["county_province"],
    postalCode: json["postal_code"],
    country: json["country"],
    longitude: json["longitude"],
    latitude: json["latitude"],
    phone: json["phone"],
    websiteUrl: json["website_url"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "obdb_id": obdbId,
    "name": name,
    "brewery_type": breweryType,
    "street": street,
    "address_2": address2,
    "address_3": address3,
    "city": city,
    "state": state,
    "county_province": countyProvince,
    "postal_code": postalCode,
    "country": country,
    "longitude": longitude,
    "latitude": latitude,
    "phone": phone,
    "website_url": websiteUrl,
    "updated_at": updatedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
  };
}
