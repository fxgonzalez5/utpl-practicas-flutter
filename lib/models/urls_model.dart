class UrlsModel {
    String raw;
    String full;
    String regular;
    String small;
    String thumb;
    String smallS3;

    UrlsModel({
        required this.raw,
        required this.full,
        required this.regular,
        required this.small,
        required this.thumb,
        required this.smallS3,
    });

    factory UrlsModel.fromMap(Map<String, dynamic> json) => UrlsModel(
        raw: json["raw"],
        full: json["full"],
        regular: json["regular"],
        small: json["small"],
        thumb: json["thumb"],
        smallS3: json["small_s3"],
    );
}