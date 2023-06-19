class PhotoLinksModel {
    String self;
    String html;
    String download;
    String downloadLocation;

    PhotoLinksModel({
        required this.self,
        required this.html,
        required this.download,
        required this.downloadLocation,
    });

    factory PhotoLinksModel.fromMap(Map<String, dynamic> json) => PhotoLinksModel(
        self: json["self"],
        html: json["html"],
        download: json["download"],
        downloadLocation: json["download_location"],
    );
}