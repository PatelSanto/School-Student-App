import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String routeName = 'ProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Profile'),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(right: kDefaultPadding / 3),
              child: Row(
                children: [
                  const Icon(Icons.report_gmailerrorred_outlined),
                  kHalfWidthSizedBox,
                  Text('Report', style: Theme.of(context).textTheme.titleSmall),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    maxRadius: 50,
                    minRadius: 50,
                    backgroundColor: kSecondaryColor,
                    backgroundImage:
                        AssetImage('assets/images/student_profile.jpeg'),
                  ),
                  kWidthSizedBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ayesha Singh',
                          style: Theme.of(context).textTheme.titleMedium),
                      Text('Class X-A | Roll No. 12',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontSize: 14,
                                  )),
                    ],
                  ),
                ],
              ),
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ProfileDetailRow(
                    title: 'Registration Number', value: '2023-ASDF-2024'),
                ProfileDetailRow(title: 'Academic Year', value: '2023-2024'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ProfileDetailRow(title: 'Admission Class', value: 'X'),
                ProfileDetailRow(title: 'Admission Number', value: '000125'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ProfileDetailRow(
                    title: 'Date of Admission', value: '5th Aug, 2023'),
                ProfileDetailRow(title: 'Date of Birth', value: '6th May 2001'),
              ],
            ),
            const ProfileDetailColumn(
                title: 'Email', value: 'ayesha@gmail.com'),
            const ProfileDetailColumn(
                title: "Father's Name", value: 'Rishab Singh'),
            const ProfileDetailColumn(
                title: "Mother's Name", value: 'Saumya Singh'),
            const ProfileDetailColumn(
                title: 'Phone Number', value: '7958XXXX56'),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          right: kDefaultPadding / 4,
          left: kDefaultPadding / 4,
          top: kDefaultPadding / 2),
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: kTextLightColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
              ),
              kHalfSizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
              ),
              kHalfSizedBox,
              SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: const Divider(thickness: 1)),
            ],
          ),
          const Icon(Icons.lock_outlined, size: 20),
        ],
      ),
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn(
      {super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: kTextLightColor,
                      fontSize: 15,
                    ),
              ),
              kHalfSizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: kTextBlackColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Divider(
                  thickness: 1,
                ),
              ),
            ],
          ),
          const Icon(Icons.lock_outlined, size: 20),
        ],
      ),
    );
  }
}
