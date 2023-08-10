import 'package:whats_app_clone/data/entities/call.dart';
import 'package:whats_app_clone/data/entities/chat.dart';
import 'package:whats_app_clone/data/entities/community.dart';
import 'package:whats_app_clone/data/entities/contact.dart';
import 'package:whats_app_clone/data/entities/status.dart';

const imageRadius = 25.0;

final chats = [
  Chat("Pak IT Companies Review", "assets/images/pak_it_review.png",
      "~ Safi: + plus you cannot join any company", "12:20 PM"),
  Chat("Shughul Mughal", "assets/images/shugal_mughal.png",
      "~ Shakeel: Sticker", "12:02 PM"),
  Chat("Umair Khan", "assets/images/umair_khan.png", "Alhamdulillah",
      "11:52 AM"),
  Chat("Software Developers LHR", "assets/images/software_developer.png",
      "~ Zeeshan Gulzar: Part time", "11:38 AM"),
  Chat("HAJJ FELLOWS", "assets/images/hajj_fellows.png", "~ Haji Naveed: Photo",
      "11:17 AM"),
  Chat(
      "Android Devs Community II",
      "assets/images/android_dev_community.png",
      "~ Muhammad Waqas: Hi i have been working with MuPdf library to edit pdf's by drawing over it.",
      "10:49 AM"),
  Chat("Salman Ahmed Rayn", "assets/images/salman_ahmed.png",
      "You reacted to: great...thanks for looking into this.", "Saturday"),
  Chat("Tech brothers", "assets/images/tech_brothers.png",
      "You: Top 10 websites for sharping your skills.", "Thursday"),
];

final status = [
  Status(type: StatusType.me),
  Status(type: StatusType.header),
  Status(
      iconPath: "assets/images/hajj_fellows.png",
      senderTitle: "Hajj Fellows",
      timestamp: "17 minutes ago",
      type: StatusType.item),
  Status(
      iconPath: "assets/images/android_dev_community.png",
      senderTitle: "Android Devs Community II",
      timestamp: "Today, 4:53 PM",
      type: StatusType.item),
  Status(
      iconPath: "assets/images/software_developer.png",
      senderTitle: "Software Developers LHR",
      timestamp: "Yesterday, 1:10 PM",
      type: StatusType.item),
];

final communities = [
  Community(type: CommunityType.header),
  Community(
      iconPath: "assets/images/software_developer.png",
      title: "Android Developers",
      description: "https://www.youtube.com/watch?android-developers",
      timestamp: "8/6/23",
      type: CommunityType.item),
  Community(
      iconPath: "assets/images/android_dev_community.png",
      title: "Android Devs Community II",
      description: "~~: Any Graphic Designers available for a paid task?",
      timestamp: "11:47 AM",
      type: CommunityType.item),
];

final calls = [
  Call(
    itemType: CallItemType.header,
    type: CallType.none,
  ),
  Call(
    itemType: CallItemType.recent,
    type: CallType.none,
  ),
  Call(
      itemType: CallItemType.item,
      type: CallType.audio,
      title: "Umair Khan",
      iconPath: "assets/images/umair_khan.png",
      description: "Today, 10:57 AM"),
  Call(
      itemType: CallItemType.item,
      type: CallType.video,
      title: "Umair Khan",
      iconPath: "assets/images/umair_khan.png",
      description: "Yesterday, 11:10 AM"),
  Call(
      itemType: CallItemType.item,
      type: CallType.audio,
      title: "Asad ",
      iconPath: "assets/images/asad.png",
      description: "Today, 02:57 PM"),
  Call(
      itemType: CallItemType.item,
      type: CallType.video,
      title: "Asad",
      iconPath: "assets/images/asad.png",
      description: "Today, 6:10 PM"),
];

final contacts = [
  Contact(type: ContactType.group),
  Contact(type: ContactType.contact),
  Contact(type: ContactType.community),
  Contact(type: ContactType.header),
  Contact(
      type: ContactType.item,
      iconPath: "assets/images/user_me.png",
      title: "+92xxxxxxxx(You)",
      statusMessage: "Message yourself"),
  Contact(
      type: ContactType.item,
      iconPath: "assets/images/user.png",
      title: "John Doe",
      statusMessage:
          "The world’s oldest wooden wheel has been around for more than 5,000 years"),
  Contact(
      type: ContactType.item,
      iconPath: "assets/images/user.png",
      title: "Jordan Patterson",
      statusMessage: "Dead skin cells are a main ingredient in household dust"),
  Contact(
      type: ContactType.item,
      iconPath: "assets/images/user.png",
      title: "Ellis Dean",
      statusMessage: "Sudan has more pyramids than any country in the world"),
  Contact(
      type: ContactType.item,
      iconPath: "assets/images/user.png",
      title: "Ervin Bass",
      statusMessage: "The bumblebee bat is the world’s smallest mammal"),
  Contact(
      type: ContactType.item,
      iconPath: "assets/images/user.png",
      title: "Bizz John",
      statusMessage: "The circulatory system is more than 60,000 miles long"),
  Contact(
      type: ContactType.item,
      iconPath: "assets/images/user.png",
      title: "Jeremiah Warren",
      statusMessage:
          "The world’s first animated feature film was made in Argentina"),
];
