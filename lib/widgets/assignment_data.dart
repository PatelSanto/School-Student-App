import 'package:flutter/material.dart';

import '../constants.dart';

class AssignmentButton extends StatelessWidget {
  const AssignmentButton(
      {super.key, required this.title, required this.onPress});

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [kSecondaryColor, kPrimaryColor],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
          ),
        ),
      ),
    );
  }
}

class AssignmentDetailsRow extends StatelessWidget {
  const AssignmentDetailsRow(
      {super.key, required this.title, required this.statusValue});

  final String title;
  final String statusValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: kTextLightColor,
          ),
        ),
        Text(
          statusValue,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: kTextBlackColor,
          ),
        ),
      ],
    );
  }
}

class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'Mathematics', 'Trignometry', '17 April 2023', '5 May 2023', 'Pending'),
  AssignmentData('Chemistry', 'Organic Chemistry', '17 March 2023',
      '5 April 2023', 'Not Submitted'),
  AssignmentData(
      'Biology', 'Red Blood Cells', '17 Feb 2023', '5 March 2023', 'Pending'),
  AssignmentData(
      'Physics', 'Bohr Theory', '18 Jan 2023', '5 Feb 2023', 'Submitted'),
];
