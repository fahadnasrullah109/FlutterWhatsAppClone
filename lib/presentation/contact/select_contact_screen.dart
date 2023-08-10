import 'package:flutter/material.dart';
import 'package:whats_app_clone/data/entities/contact.dart';
import 'package:whats_app_clone/utils/utils.dart';

class SelectContactScreen extends StatelessWidget {
  const SelectContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 128, 105),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select contact',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            Text(
              '${contacts.length} contacts',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
            color: Colors.white,
            tooltip: 'Search',
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.white,
            tooltip: 'More options',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: contacts.length,
            itemBuilder: (context, position) {
              if (contacts[position].type.name == ContactType.group.name) {
                return const GroupWidget();
              } else if (contacts[position].type.name ==
                  ContactType.contact.name) {
                return const ContactWidget();
              } else if (contacts[position].type.name ==
                  ContactType.community.name) {
                return const CommunityWidget();
              } else if (contacts[position].type.name ==
                  ContactType.header.name) {
                return const HeaderWidget();
              } else {
                return ItemWidget(
                  contact: contacts[position],
                );
              }
            }),
      ),
    );
  }
}

class GroupWidget extends StatelessWidget {
  const GroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const SizedBox(
              width: 8.0,
            ),
            Container(
              width: imageRadius * 2,
              height: imageRadius * 2,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 128, 105),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(
                Icons.group,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              'New group',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 18, 27, 34),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const SizedBox(
              width: 8.0,
            ),
            Container(
              width: imageRadius * 2,
              height: imageRadius * 2,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 128, 105),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(
                Icons.person_add,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Expanded(
              child: Text(
                'New contact',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 18, 27, 34),
                ),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.qr_code,
                  color: Color.fromARGB(255, 96, 100, 102),
                ))
          ],
        ),
      ),
    );
  }
}

class CommunityWidget extends StatelessWidget {
  const CommunityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const SizedBox(
              width: 8.0,
            ),
            Container(
              width: imageRadius * 2,
              height: imageRadius * 2,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 128, 105),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(
                Icons.groups,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              'New community',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 18, 27, 34),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: Text(
        'Contacts on WhatsApp',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 96, 100, 102),
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const SizedBox(
              width: 8.0,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(contact.iconPath ?? ''),
              radius: imageRadius,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: Text(
                        contact.title ?? '',
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 18, 27, 34)),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          contact.statusMessage ?? '',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 96, 100, 102),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}
