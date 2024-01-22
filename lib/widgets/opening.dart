import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:internshala_assignment/models/internship_class.dart';
import 'package:internshala_assignment/screens/internship_detail_screen.dart';

class OpeningsList extends StatefulWidget {
  @override
  _OpeningsListState createState() => _OpeningsListState();
}

class _OpeningsListState extends State<OpeningsList> {
  late Future<List<InternshipOpening>> openingsFuture;

  @override
  void initState() {
    super.initState();
    openingsFuture = fetchData();
  }

  Future<List<InternshipOpening>> fetchData() async {
    final response = await http.get(
      Uri.parse('https://internshala.com/flutter_hiring/search'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final internshipIds = data['internship_ids'] as List<dynamic>;
      final List<InternshipOpening> openings =
          internshipIds.map<InternshipOpening>((id) {
        return InternshipOpening.fromJson(
            data['internships_meta'][id.toString()]);
      }).toList();

      return openings;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<InternshipOpening>>(
        future: openingsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final openings = snapshot.data!;
            return ListView.builder(
              itemCount: openings.length,
              itemBuilder: (context, index) {
                final internshipIdAndOpening = openings[index];
                String? salary = openings[index].stipend?['salary'];
                String? currency = openings[index].stipend?['currency'];
                String? scale = openings[index].stipend?['scale'];

                return Card(
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
                            openings[index].title ?? '',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold // Text color
                                ),
                          ),
                          subtitle: Text(openings[index].companyName ?? ''),
                          // trailing:
                          //     Image.network(openings[index].companyLogo ?? ''),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: openings[index].workFromHome
                              ? Row(children: [
                                  Icon(Icons.home),
                                  Text("work From Home")
                                ])
                              : Row(
                                  children: [
                                    Icon(Icons.location_pin),
                                    Text(openings[index]
                                            .locationNames
                                            ?.join(', ') ??
                                        " "),
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
                                    Text(openings[index].duration ?? '')
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
                          child: (openings[index].partTime)
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
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Text(
                                            'Internship ${openings[index].ppoLabelValue}' ??
                                                '')),
                                    Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Colors.black26,
                                          // border: Border.all(
                                          //   // color: Colors.black26, // Border color
                                          //   width: 2.0, // Border width
                                          // ),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
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
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Text(
                                          'Internship ${openings[index].ppoLabelValue}' ??
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
                                  color:
                                      const Color.fromARGB(255, 154, 202, 241),
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
                                    Text(openings[index].postedByLabel ?? '')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: ElevatedButton(
                                    child: Text(
                                      'Veiw Details',
                                      style: TextStyle(
                                        color: Colors.blue, // Text color
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              InternshipDetail(
                                            internshipOpening: openings[index],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    border: Border.all(
                                      color: Colors.blue, // Border color
                                      width: 2.0, // Border width
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    'Apply Now',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
