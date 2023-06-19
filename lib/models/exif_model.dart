class ExifModel {
    String? make;
    String? model;
    String? name;
    String? exposureTime;
    String? aperture;
    String? focalLength;
    int? iso;

    ExifModel({
        this.make,
        this.model,
        this.name,
        this.exposureTime,
        this.aperture,
        this.focalLength,
        this.iso,
    });

    factory ExifModel.fromMap(Map<String, dynamic> json) => ExifModel(
        make: json["make"],
        model: json["model"],
        name: json["name"],
        exposureTime: json["exposure_time"],
        aperture: json["aperture"],
        focalLength: json["focal_length"],
        iso: json["iso"],
    );
}