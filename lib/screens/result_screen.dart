import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';

import '../components/result_component.dart';
import '../widgets/result_data.dart';
import 'package:collection/collection.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  static String routeName = 'ResultScreen';

  @override
  Widget build(BuildContext context) {
    int oMarks = result.map((e) => e.obtainMarks).sum.toInt();
    int tMarks = result.map((e) => e.totalMarks).sum.toInt();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Results'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              margin: const EdgeInsets.all(8.0),
              child: CustomPaint(
                foregroundPainter: CircularPainter(
                    backgroundColor: kPrimaryColor,
                    lineColor: kOtherColor,
                    width: 18),
                child: Center(
                  child: Text(
                    '$oMarks\n\t  / \n$tMarks',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
            ),
          ),
          sizedBox,
          Text(
            'You are Excellent!',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.w900),
          ),
          kHalfSizedBox,
          Text('Ayesha!!', style: Theme.of(context).textTheme.titleMedium),
          sizedBox,
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding),
                      topRight: Radius.circular(kDefaultPadding)),
                  color: kOtherColor),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(kDefaultPadding),
                  itemCount: result.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: kDefaultPadding),
                      padding: const EdgeInsets.all(kDefaultPadding / 2),
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(kDefaultPadding),
                        boxShadow: const [
                          BoxShadow(
                            color: kTextLightColor,
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                result[index].subName,
                                textAlign: TextAlign.start,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${result[index].obtainMarks}/${result[index].totalMarks}',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width:
                                            result[index].totalMarks.toDouble(),
                                        height: 12,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[700],
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(
                                                kDefaultPadding),
                                            topRight: Radius.circular(
                                                kDefaultPadding),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 12,
                                        width: result[index]
                                            .obtainMarks
                                            .toDouble(),
                                        decoration: BoxDecoration(
                                          color: result[index].grade == 'D'
                                              ? kErrorBorderColor
                                              : Colors.greenAccent,
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(
                                                kDefaultPadding),
                                            bottomRight: Radius.circular(
                                                kDefaultPadding),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    result[index].grade,
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  })),
            ),
          ),
        ],
      ),
    );
  }
}
