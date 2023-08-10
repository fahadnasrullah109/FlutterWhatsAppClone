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
        title: const Text(
          'Select contact',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: ListView.builder(
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
              width: 60,
              height: 60,
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
              width: 60,
              height: 60,
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
            const Text(
              'New contact',
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
              width: 60,
              height: 60,
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const SizedBox(
            width: 8.0,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromARGB(80, 96, 100, 102),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.groups,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const SizedBox(
            width: 8.0,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromARGB(80, 96, 100, 102),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.groups,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
