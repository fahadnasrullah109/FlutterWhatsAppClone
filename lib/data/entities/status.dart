class Status {
  Status({this.iconPath, this.senderTitle, this.timestamp, required this.type});

  String? iconPath;
  String? senderTitle;
  String? timestamp;
  StatusType type;
}

enum StatusType { me, header, item }
