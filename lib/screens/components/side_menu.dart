import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'myInfo.dart';
import 'area_info.dart';

import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: 'Residence',
                    text: 'Kenya',
                  ),
                  AreaInfoText(
                    title: 'City',
                    text: 'Nairobi',
                  ),
                  AreaInfoText(
                    title: 'Age',
                    text: '24',
                  ),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledge(),
                  Divider(),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            'DOWNLOAD CV',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                          ),
                          SizedBox(
                            width: defaultPadding / 2,
                          ),
                          Icon(
                            Icons.file_download,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xff24242e),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.linked_camera),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.whatshot),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.youtube_searched_for),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
