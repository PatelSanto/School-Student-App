import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_app/constants.dart';
import 'package:school_app/screens/result_screen.dart';
import 'package:school_app/screens/time_table_screen.dart';

import '../widgets/student_data.dart';
import 'assignment_screen.dart';
import 'fee_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      StudentName(
                        studentName: 'Ayesha',
                      ),
                      kHalfSizedBox,
                      StudentClass(studentClass: 'Class X-A | Roll No. 12'),
                      kHalfSizedBox,
                      StudentYear(studentYear: '2023-2024'),
                    ],
                  ),
                  kHalfSizedBox,
                  StudentPicture(
                      picAdderss: 'assets/images/student_profile.jpeg',
                      onPress: () {
                        Navigator.pushNamed(context, ProfileScreen.routeName);
                      }),
                ],
              ),
              sizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StudentDataCard(
                      title: 'Attendence', value: '85.02%', onPress: () {}),
                  StudentDataCard(
                      title: 'Fees Due',
                      value: 'Rs. 6000',
                      onPress: () {
                        Navigator.pushNamed(context, FeeScreen.routeName);
                      }),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 3),
                  topRight: Radius.circular(kDefaultPadding * 3),
                ),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/quiz.svg',
                          title: 'Take Quiz'),
                      HomeCard(
                          onPress: () {
                            Navigator.pushNamed(
                                context, AssignmentScreen.routeName);
                          },
                          icon: 'assets/icons/assignment.svg',
                          title: 'Assignments'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/holiday.svg',
                          title: 'Holidays'),
                      HomeCard(
                          onPress: () {
                            Navigator.pushNamed(
                                context, TimeTableScreen.routeName);
                          },
                          icon: 'assets/icons/timetable.svg',
                          title: 'Time\nTable'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {
                            Navigator.pushNamed(
                                context, ResultScreen.routeName);
                          },
                          icon: 'assets/icons/result.svg',
                          title: 'Result'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/datesheet.svg',
                          title: 'DateSheet'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/ask.svg',
                          title: 'Ask'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/gallery.svg',
                          title: 'Gallery'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/resume.svg',
                          title: 'Leave\nApplication'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/lock.svg',
                          title: 'Change\nPassword'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/event.svg',
                          title: 'Events'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/logout.svg',
                          title: 'Logout'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.title});
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: 40,
              width: 40,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: kDefaultPadding / 3),
          ],
        ),
      ),
    );
  }
}
