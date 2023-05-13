import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:publicoffer/components/text_widget_.dart';

Widget CompanyCard(
  Widget wdg1,
  Widget wdg2,
  BuildContext context,
  //String img,
  Widget icon,
) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    child: Card(
      color: Colors.grey[200],
      child: Row(
        children: [
          Flexible(
            child: icon,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                wdg1,
                wdg2,
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
