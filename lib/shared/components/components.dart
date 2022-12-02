import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate/models/projects.dart';
import 'package:real_estate/models/recommendation.dart';
import 'package:real_estate/shared/styles/colors.dart';
import 'package:real_estate/shared/styles/styles.dart';

Widget info(context, {required String text1, required String text2}) => Row(
      children: [
        Text(
          text1,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.white,
                fontSize: 12,
              ),
        ),
        Spacer(),
        Text(
          text2,
          style: Theme.of(context).textTheme.bodyText2!,
        ),
      ],
    );

Widget myGoal(context, {String? text}) => Padding(
      padding: const EdgeInsetsDirectional.only(
        bottom: 5.0,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/check.svg',
            width: 12.0,
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(
            text!,
            style: Theme.of(context).textTheme.bodyText2!,
          ),
        ],
      ),
    );

Widget iconInfo(BuildContext context,
        {required IconData icon,
        required String number,
        required String text}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 40,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          number,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: kPrimaryColor,
                fontSize: 25,
              ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );

Widget projectItemBuilder(BuildContext context, Project project) => Container(
      color: kSecondaryColor,
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            project.title!,
            //    overflow: TextOverflow.ellipsis,
            // maxLines:2,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Colors.white,
                ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
            child: Text(
              project.description!,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'More info >',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );

Widget recommendationItemBuilder(
        BuildContext context, Recommendation recommendation) =>
    Container(
      width: 300,
      color: kSecondaryColor,
      padding: EdgeInsets.all(
        kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(recommendation.image!),
              radius: 30,
            ),
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Colors.white,
                  ),
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Expanded(
            child: Text(
              recommendation.text!,
              style: TextStyle(
                height: 1.5,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
          ),
        ],
      ),
    );
