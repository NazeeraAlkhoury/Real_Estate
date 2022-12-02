import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate/models/projects.dart';
import 'package:real_estate/models/recommendation.dart';
import 'package:real_estate/shared/components/components.dart';
import 'package:real_estate/shared/styles/colors.dart';
import 'package:real_estate/shared/styles/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              // child: Container(
              //   color: kBgColor,
              child: Drawer(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: kSecondaryColor,
                      child: AspectRatio(
                        aspectRatio: 1.23,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Spacer(),
                            Image.asset(
                              'assets/images/logo.png',
                              width: 100.0,
                            ),
                            SizedBox(height: kDefaultPadding),
                            Text(
                              'Real Estate',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            Text(
                              'Modern home with great \ninterior design',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontWeight: FontWeight.w200,
                                    height: 1.5,
                                  ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: kBgColor,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(kDefaultPadding),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                contactInfo(context),
                                Divider(),
                                goals(context),
                                Divider(),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/icons/download.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        'Download Brouchure',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2!,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Container(
                                  color: kSecondaryColor,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/linkedin.svg',
                                        width: 15,
                                      ),
                                      SizedBox(width: 15),
                                      SvgPicture.asset(
                                        'assets/icons/github.svg',
                                        width: 15,
                                      ),
                                      SizedBox(width: 15),
                                      SvgPicture.asset(
                                        'assets/icons/twitter.svg',
                                        width: 15,
                                      ),
                                      SizedBox(width: 15),
                                      SvgPicture.asset(
                                        'assets/icons/dribble.svg',
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Image.asset(
                            'assets/images/background.jpg',
                            fit: BoxFit.cover,
                          ),
                          Container(
                            color: kDarkColor.withOpacity(
                              0.10,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              start: 15.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Build a great future \nfor all for us!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        color: Colors.white,
                                        fontSize: 35,
                                      ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'CONTACT US',
                                      style: TextStyle(color: kBgColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            iconInfo(context,
                                icon: Icons.person,
                                number: '67+',
                                text: 'Clients'),
                            iconInfo(context,
                                icon: Icons.location_on,
                                number: '139+',
                                text: 'Projects'),
                            iconInfo(context,
                                icon: Icons.landscape,
                                number: '35+',
                                text: 'Countries'),
                            iconInfo(context,
                                icon: Icons.star,
                                number: '13K+',
                                text: 'Stars'),
                          ],
                        ),
                      ),
                      Text(
                        'Our Projects',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: demoProjects.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: kDefaultPadding,
                          crossAxisSpacing: kDefaultPadding,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (context, index) => projectItemBuilder(
                          context,
                          demoProjects[index],
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      Text(
                        'Client Recommendations',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      Container(
                        height: 200,
                        child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(
                                  width: kDefaultPadding,
                                ),
                            shrinkWrap: true,
                            itemBuilder: (context, index) =>
                                recommendationItemBuilder(
                                    context, demoRecommendations[index]),
                            itemCount: demoRecommendations.length,
                            scrollDirection: Axis.horizontal),
                      ),
                      SizedBox(
                        height: kDefaultPadding * 2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget contactInfo(context) => Column(
      children: [
        info(context, text1: 'Address:', text2: 'Station Street 5'),
        SizedBox(
          height: 10.0,
        ),
        info(context, text1: 'City:', text2: 'Damascus'),
        SizedBox(
          height: 10.0,
        ),
        info(context, text1: 'Country:', text2: 'Syria'),
        SizedBox(
          height: 10.0,
        ),
        info(context, text1: 'Email:', text2: 'email@gmail.com'),
        SizedBox(
          height: 10.0,
        ),
        info(context, text1: 'Mobile:', text2: '0999558833'),
        SizedBox(
          height: 10.0,
        ),
        info(context, text1: 'Website:', text2: 'my@website.com'),
        SizedBox(
          height: kDefaultPadding,
        ),
      ],
    );

Widget goals(context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Goals',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.white,
                fontSize: 14,
              ),
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        myGoal(context, text: 'Planning stage'),
        myGoal(context, text: 'Development'),
        myGoal(context, text: 'Excution phase'),
        myGoal(context, text: 'New way to living'),
      ],
    );
