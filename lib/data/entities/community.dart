class Community {
  Community(
      {this.iconPath,
      this.title,
      this.description,
      this.timestamp,
      required this.type});

  String? iconPath;
  String? title;
  String? description;
  String? timestamp;
  CommunityType type;
}

enum CommunityType { header, item }
