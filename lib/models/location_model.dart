class LocationModel {
    String? name;
    String? city;
    String? country;
    PositionModel position;

    LocationModel({
        this.name,
        this.city,
        this.country,
        required this.position,
    });

    factory LocationModel.fromMap(Map<String, dynamic> json) => LocationModel(
        name: json["name"],
        city: json["city"],
        country: json["country"],
        position: PositionModel.fromMap(json["position"]),
    );
}

class PositionModel {
    double? latitude;
    double? longitude;

    PositionModel({
        this.latitude,
        this.longitude,
    });

    factory PositionModel.fromMap(Map<String, dynamic> json) => PositionModel(
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
    );
}