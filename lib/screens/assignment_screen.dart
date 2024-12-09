import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';

import '../widgets/assignment_data.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});

  static String routeName = 'AssignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Assignments'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
              ),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(kDefaultPadding),
                itemCount: assignment.length,
                itemBuilder: (context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: kDefaultPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(kDefaultPadding),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kDefaultPadding),
                            color: kOtherColor,
                            boxShadow: const [
                              BoxShadow(
                                color: kTextLightColor,
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: kSecondaryColor.withOpacity(0.4),
                                    borderRadius:
                                        BorderRadius.circular(kDefaultPadding)),
                                child: Center(
                                  child: Text(
                                    assignment[index].subjectName,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              kHalfSizedBox,
                              Text(
                                assignment[index].topicName,
                                style: const TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              kHalfSizedBox,
                              AssignmentDetailsRow(
                                title: 'Assignment Date',
                                statusValue: assignment[index].assignDate,
                              ),
                              kHalfSizedBox,
                              AssignmentDetailsRow(
                                title: 'Last Date',
                                statusValue: assignment[index].lastDate,
                              ),
                              kHalfSizedBox,
                              AssignmentDetailsRow(
                                title: 'Status',
                                statusValue: assignment[index].status,
                              ),
                              kHalfSizedBox,
                              if (assignment[index].status == 'Pending')
                                AssignmentButton(
                                    title: 'To Be Submitted', onPress: () {}),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
