// To parse this JSON data, do
//
//     final photoModel = photoModelFromMap(jsonString);

import 'dart:convert';

import 'package:practicas/models/exif_model.dart';
import 'package:practicas/models/location_model.dart';
import 'package:practicas/models/potho_links_model.dart';
import 'package:practicas/models/topic_submissions_model.dart';
import 'package:practicas/models/urls_model.dart';
import 'package:practicas/models/user_model.dart';

List<PhotoModel> photoModelFromMap(String str) => List<PhotoModel>.from(json.decode(str).map((x) => PhotoModel.fromMap(x)));

// String photoModelToMap(List<PhotoModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class PhotoModel {
    String id;
    String slug;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime promotedAt;
    int width;
    int height;
    String color;
    String? blurHash;
    String? description;
    String? altDescription;
    UrlsModel urls;
    PhotoLinksModel links;
    int likes;
    bool likedByUser;
    List<dynamic> currentUserCollections;
    dynamic sponsorship;
    TopicSubmissionsModel? topicSubmissions;
    UserModel user;
    ExifModel? exif;
    LocationModel location;
    int views;
    int downloads;

    PhotoModel({
        required this.id,
        required this.slug,
        required this.createdAt,
        required this.updatedAt,
        required this.promotedAt,
        required this.width,
        required this.height,
        required this.color,
        this.blurHash,
        this.description,
        this.altDescription,
        required this.urls,
        required this.links,
        required this.likes,
        required this.likedByUser,
        required this.currentUserCollections,
        this.sponsorship,
        this.topicSubmissions,
        required this.user,
        this.exif,
        required this.location,
        required this.views,
        required this.downloads,
    });

    factory PhotoModel.fromMap(Map<String, dynamic> json) => PhotoModel(
        id: json["id"],
        slug: json["slug"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        promotedAt: DateTime.parse(json["promoted_at"]),
        width: json["width"],
        height: json["height"],
        color: json["color"],
        blurHash: json["blur_hash"],
        description: json["description"],
        altDescription: json["alt_description"],
        urls: UrlsModel.fromMap(json["urls"]),
        links: PhotoLinksModel.fromMap(json["links"]),
        likes: json["likes"],
        likedByUser: json["liked_by_user"],
        currentUserCollections: List<dynamic>.from(json["current_user_collections"].map((x) => x)),
        sponsorship: json["sponsorship"],
        topicSubmissions: TopicSubmissionsModel.fromMap(json["topic_submissions"]),
        user: UserModel.fromMap(json["user"]),
        exif: ExifModel.fromMap(json["exif"]),
        location: LocationModel.fromMap(json["location"]),
        views: json["views"],
        downloads: json["downloads"],
    );
}