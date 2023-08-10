class Contact {
  Contact({this.iconPath, this.title, this.statusMessage, required this.type});

  String? iconPath;
  String? title;
  String? statusMessage;
  ContactType type;
}

enum ContactType { group, contact, community, header, item }
