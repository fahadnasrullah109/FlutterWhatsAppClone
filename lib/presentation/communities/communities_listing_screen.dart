import 'package:flutter/material.dart';
import 'package:whats_app_clone/data/entities/community.dart';
import 'package:whats_app_clone/utils/utils.dart';

class CommunityListScreen extends StatelessWidget {
  const CommunityListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: communities.length,
        itemBuilder: (context, position) {
          return communities[position].type.name == CommunityType.header.name
              ? const HeaderWidget()
              : ItemWidget(
                  community: communities[position],
                );
        },
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
            width: 8,
          ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: imageRadius * 2,
                height: imageRadius * 2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(80, 96, 100, 102),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.groups,
                  color: Colors.white,
                ),
              ),
              ClipOval(
                child: Material(
                  color: const Color.fromARGB(255, 0, 128, 105), // Button color
                  child: InkWell(
                    splashColor:
                        const Color.fromARGB(100, 0, 128, 105), // Splash color
                    onTap: () {},
                    child: const SizedBox(
                        width: 25,
                        height: 25,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'New community',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 18, 27, 34),
            ),
          )
        ],
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.community});

  final Community community;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                const SizedBox(
                  width: 8.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(community.iconPath ?? ''),
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
                          community.title ?? '',
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 18, 27, 34)),
                        )),
                        Text(
                          community.timestamp ?? '',
                          style: const TextStyle(
                              fontSize: 11,
                              color: Color.fromARGB(255, 96, 100, 102)),
                        )
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
                            community.description ?? '',
                            style: const TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 96, 100, 102)),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Color.fromARGB(255, 96, 100, 102),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 96, 100, 102)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
