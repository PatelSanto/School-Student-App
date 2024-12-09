import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';

import '../widgets/timetable_data.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});

  static String routeName = 'TimeTableScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Time Table'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kDefaultPadding),
              topRight: Radius.circular(kDefaultPadding)),
        ),
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: timetable.length,
            itemBuilder: ((context, index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                    left: kDefaultPadding / 2, right: kDefaultPadding / 2),
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: kDefaultPadding,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              timetable[index].date.toString(),
                              style: const TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              timetable[index].monthName,
                              style: const TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              timetable[index].subjectName,
                              style: const TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              timetable[index].dayName,
                              style: const TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              timetable[index].time,
                              style: const TextStyle(
                                  color: kTextLightColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    ),
                  ],
                ),
              );
            })),
      ),
    );
  }
}
