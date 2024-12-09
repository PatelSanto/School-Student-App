import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';

class StudentName extends StatelessWidget {
  const StudentName({super.key, required this.studentName});

  final String studentName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hi',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w200),
        ),
        const SizedBox(width: kDefaultPadding / 3),
        Text(
          studentName,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class StudentClass extends StatelessWidget {
  const StudentClass({super.key, required this.studentClass});
  final String studentClass;

  @override
  Widget build(BuildContext context) {
    return Text(
      studentClass,
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: 14,
          ),
    );
  }
}

class StudentYear extends StatelessWidget {
  const StudentYear({super.key, required this.studentYear});

  final String studentYear;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      decoration: BoxDecoration(
        color: kOtherColor,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Center(
        child: Text(
          studentYear,
          style: const TextStyle(
              fontSize: 12,
              color: kTextBlackColor,
              fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}

class StudentPicture extends StatelessWidget {
  const StudentPicture(
      {super.key, required this.picAdderss, required this.onPress});
  final String picAdderss;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        minRadius: 50,
        maxRadius: 50,
        backgroundColor: kSecondaryColor,
        backgroundImage: AssetImage(picAdderss),
      ),
    );
  }
}

class StudentDataCard extends StatelessWidget {
  const StudentDataCard(
      {super.key,
      required this.title,
      required this.value,
      required this.onPress});

  final String title;
  final String value;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 9,
        decoration: BoxDecoration(
            color: kOtherColor,
            borderRadius: BorderRadius.circular(kDefaultPadding)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: kTextBlackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: kTextBlackColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
