class UserModel {
    String id;
    DateTime updatedAt;
    String username;
    String name;
    String firstName;
    String? lastName;
    String? twitterUsername;
    String? portfolioUrl;
    String? bio;
    String? location;
    UserLinks links;
    ProfileImage profileImage;
    String? instagramUsername;
    int totalCollections;
    int totalLikes;
    int totalPhotos;
    bool acceptedTos;
    bool forHire;
    Social? social;

    UserModel({
        required this.id,
        required this.updatedAt,
        required this.username,
        required this.name,
        required this.firstName,
        this.lastName,
        this.twitterUsername,
        this.portfolioUrl,
        this.bio,
        this.location,
        required this.links,
        required this.profileImage,
        this.instagramUsername,
        required this.totalCollections,
        required this.totalLikes,
        required this.totalPhotos,
        required this.acceptedTos,
        required this.forHire,
        this.social,
    });

    factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        username: json["username"],
        name: json["name"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        twitterUsername: json["twitter_username"],
        portfolioUrl: json["portfolio_url"],
        bio: json["bio"],
        location: json["location"],
        links: UserLinks.fromMap(json["links"]),
        profileImage: ProfileImage.fromMap(json["profile_image"]),
        instagramUsername: json["instagram_username"],
        totalCollections: json["total_collections"],
        totalLikes: json["total_likes"],
        totalPhotos: json["total_photos"],
        acceptedTos: json["accepted_tos"],
        forHire: json["for_hire"],
        social: Social.fromMap(json["social"]),
    );
}

class UserLinks {
    String self;
    String html;
    String photos;
    String likes;
    String portfolio;
    String following;
    String followers;

    UserLinks({
        required this.self,
        required this.html,
        required this.photos,
        required this.likes,
        required this.portfolio,
        required this.following,
        required this.followers,
    });

    factory UserLinks.fromMap(Map<String, dynamic> json) => UserLinks(
        self: json["self"],
        html: json["html"],
        photos: json["photos"],
        likes: json["likes"],
        portfolio: json["portfolio"],
        following: json["following"],
        followers: json["followers"],
    );
}

class ProfileImage {
    String small;
    String medium;
    String large;

    ProfileImage({
        required this.small,
        required this.medium,
        required this.large,
    });

    factory ProfileImage.fromMap(Map<String, dynamic> json) => ProfileImage(
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
    );
}

class Social {
    String? instagramUsername;
    String? portfolioUrl;
    String? twitterUsername;
    String? paypalEmail;

    Social({
        this.instagramUsername,
        this.portfolioUrl,
        this.twitterUsername,
        this.paypalEmail,
    });

    factory Social.fromMap(Map<String, dynamic> json) => Social(
        instagramUsername: json["instagram_username"],
        portfolioUrl: json["portfolio_url"],
        twitterUsername: json["twitter_username"],
        paypalEmail: json["paypal_email"],
    );
}