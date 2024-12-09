import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';

import '../widgets/fee_data.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({super.key});

  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fee'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
                color: kOtherColor,
              ),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(kDefaultPadding),
                  itemCount: fee.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: kDefaultPadding),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(kDefaultPadding),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(kDefaultPadding),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: kTextLightColor,
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                FeeDetailRow(
                                    title: 'Receipt No.',
                                    statusValue: fee[index].receiptNo),
                                const SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1,
                                  ),
                                ),
                                FeeDetailRow(
                                    title: 'Month',
                                    statusValue: fee[index].month),
                                sizedBox,
                                FeeDetailRow(
                                    title: 'Payment Date',
                                    statusValue: fee[index].date),
                                sizedBox,
                                FeeDetailRow(
                                    title: 'Status',
                                    statusValue: fee[index].paymentStatus),
                                sizedBox,
                                const SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1,
                                  ),
                                ),
                                FeeDetailRow(
                                    title: 'Total Amount',
                                    statusValue: fee[index].totalAmount),
                              ],
                            ),
                          ),
                          FeeButton(
                              title: fee[index].btnStatus,
                              iconData: fee[index].paymentStatus == 'Paid'
                                  ? Icons.download_outlined
                                  : Icons.arrow_right_alt,
                              onPress: () {})
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class FeeButton extends StatelessWidget {
  const FeeButton({
    super.key,
    required this.title,
    required this.iconData,
    required this.onPress,
  });

  final String title;
  final IconData iconData;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [kSecondaryColor, kPrimaryColor],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.5, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kDefaultPadding),
            bottomRight: Radius.circular(kDefaultPadding),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
            ),
            Icon(
              iconData,
              color: kOtherColor,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class FeeDetailRow extends StatelessWidget {
  const FeeDetailRow(
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
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 14,
                color: kTextLightColor,
              ),
        ),
        Text(
          statusValue,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 14,
                color: kTextBlackColor,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}
