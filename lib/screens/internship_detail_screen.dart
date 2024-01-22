import 'package:flutter/material.dart';
import 'package:internshala_assignment/models/internship.dart';
import 'package:internshala_assignment/models/internship_class.dart';

class InternshipDetail extends StatefulWidget {
  final InternshipOpening internshipOpening;

  const InternshipDetail({Key? key, required this.internshipOpening})
      : super(key: key);

  @override
  State<InternshipDetail> createState() => _InternshipDetailState();
}

class _InternshipDetailState extends State<InternshipDetail> {
  @override
  Widget build(BuildContext context) {
    final internship = widget.internshipOpening;
    String? salary = internship.stipend?['salary'];
    String? currency = internship.stipend?['currency'];
    String? scale = internship.stipend?['scale'];
    return Scaffold(
        appBar: AppBar(
          title: Text('Internship Details'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      // width: 150,
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        // color: Colors.black38,
                        border: Border.all(
                          color: Colors.black38, // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.trending_up_rounded,
                            color: Colors.blue,
                          ),
                          Text(
                            'Actively Hiring',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text(
                    internship.title ?? '',
                    style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold // Text color
                        ),
                  ),
                  subtitle: Text(internship.companyName ?? ''),
                  // trailing:
                  //     Image.network(internship.companyLogo ?? ''),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: internship.workFromHome
                      ? Row(
                          children: [Icon(Icons.home), Text("work From Home")])
                      : Row(
                          children: [
                            Icon(Icons.location_pin),
                            Text(internship.locationNames?.join(', ') ?? " "),
                          ],
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        child: Row(
                          children: [
                            Icon(Icons.play_circle_outline_outlined),
                            Text('Starts Immediately'),
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today_outlined),
                            Text(internship.duration ?? '')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.money),
                      Text(
                        ' $salary',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.hourglass_bottom),
                      Text(internship.expiringIn ?? '')
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: (internship.partTime)
                      ? Row(
                          children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.black26,
                                  // border: Border.all(
                                  //   // color: Colors.black26, // Border color
                                  //   width: 2.0, // Border width
                                  // ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Text(
                                    'Internship ${internship.ppoLabelValue}' ??
                                        '')),
                            Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.black26,
                                  // border: Border.all(
                                  //   // color: Colors.black26, // Border color
                                  //   width: 2.0, // Border width
                                  // ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Text('Part Time' ?? '')),
                          ],
                        )
                      : Row(children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                // border: Border.all(
                                //   // color: Colors.black26, // Border color
                                //   width: 2.0, // Border width
                                // ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                  'Internship ${internship.ppoLabelValue}' ??
                                      '')),
                        ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 154, 202, 241),
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 144, 199, 245), // Border color
                            width: 2.0, // Border width
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.av_timer_outlined),
                            Text(internship.postedByLabel ?? '')
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Divider(),
                //                   Padding(
                //                     padding: const EdgeInsets.all(8.0),
                //                     child: Row(
                //                       mainAxisAlignment: MainAxisAlignment.end,
                //                       children: [
                //                         Padding(
                //                           padding: const EdgeInsets.all(8.0),
                //                           child: Container(
                //                               child: ElevatedButton(
                //                                  child: Text(
                //                               'Veiw Details',
                //                               style: TextStyle(
                //                                 color: Colors.blue, // Text color
                //                               ),
                //                             ),

                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => InternshipDetail(
                //         internshipIdAnd: internshipIdAnd,
                //       ),
                //     ),
                //   );
                // },

                //                           ),
                //                         ),
                //                         ),
                //                         Padding(
                //                           padding: const EdgeInsets.all(8.0),
                //                           child: Container(
                //                             padding: EdgeInsets.symmetric(
                //                                 horizontal: 25, vertical: 10),
                //                             decoration: BoxDecoration(
                //                               color: Colors.blue,
                //                               border: Border.all(
                //                                 color: Colors.blue, // Border color
                //                                 width: 2.0, // Border width
                //                               ),
                //                               borderRadius: BorderRadius.circular(5.0),
                //                             ),
                //                             child: Text(
                //                               'Apply Now',
                //                               style: TextStyle(
                //                                 color: Colors.white, // Text color
                //                               ),
                //                             ),
                //                           ),
                //                         )
                //   ],
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}
