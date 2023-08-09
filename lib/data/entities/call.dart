class Call {
  Call(
      {this.iconPath,
      this.title,
      this.description,
      this.timestamp,
      required this.type,
      required this.itemType});

  String? iconPath;
  String? title;
  String? description;
  String? timestamp;
  CallType type;
  CallItemType itemType;
}

enum CallItemType { header, recent, item }

enum CallType { audio, video, none }
