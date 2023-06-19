class TopicSubmissionsModel {
    The3DRenders? the3DRenders;
    The3DRenders? wallpapers;
    The3DRenders? fashionBeauty;
    The3DRenders? nature;
    ArchitectureInterior? people;
    The3DRenders? travel;
    ArchitectureInterior? texturesPatterns;
    The3DRenders? health;
    The3DRenders? spirituality;
    ArchitectureInterior? architectureInterior;

    TopicSubmissionsModel({
        this.the3DRenders,
        this.wallpapers,
        this.fashionBeauty,
        this.nature,
        this.people,
        this.travel,
        this.texturesPatterns,
        this.health,
        this.spirituality,
        this.architectureInterior,
    });

    factory TopicSubmissionsModel.fromMap(Map<String, dynamic> json) => TopicSubmissionsModel(
        the3DRenders: json["3d-renders"] == null ? null : The3DRenders.fromMap(json["3d-renders"]),
        wallpapers: json["wallpapers"] == null ? null : The3DRenders.fromMap(json["wallpapers"]),
        fashionBeauty: json["fashion-beauty"] == null ? null : The3DRenders.fromMap(json["fashion-beauty"]),
        nature: json["nature"] == null ? null : The3DRenders.fromMap(json["nature"]),
        people: json["people"] == null ? null : ArchitectureInterior.fromMap(json["people"]),
        travel: json["travel"] == null ? null : The3DRenders.fromMap(json["travel"]),
        texturesPatterns: json["textures-patterns"] == null ? null : ArchitectureInterior.fromMap(json["textures-patterns"]),
        health: json["health"] == null ? null : The3DRenders.fromMap(json["health"]),
        spirituality: json["spirituality"] == null ? null : The3DRenders.fromMap(json["spirituality"]),
        architectureInterior: json["architecture-interior"] == null ? null : ArchitectureInterior.fromMap(json["architecture-interior"]),
    );
}

class ArchitectureInterior {
    Status status;

    ArchitectureInterior({
        required this.status,
    });

    factory ArchitectureInterior.fromMap(Map<String, dynamic> json) => ArchitectureInterior(
        status: statusValues.map[json["status"]]!,
    );
}

enum Status { APPROVED, REJECTED }

final statusValues = EnumValues({
    "approved": Status.APPROVED,
    "rejected": Status.REJECTED
});

class The3DRenders {
    Status? status;
    DateTime? approvedOn;

    The3DRenders({
        this.status,
        this.approvedOn,
    });

    factory The3DRenders.fromMap(Map<String, dynamic> json) => The3DRenders(
        status: statusValues.map[json["status"]],
        approvedOn: json["approved_on"] == null ? null : DateTime.parse(json["approved_on"]),
    );
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}