import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:internshala_assignment/models/internship_class.dart';

class InternshipIdAndOpening {
  final String id;
  final InternshipOpening opening;

  InternshipIdAndOpening(this.id, this.opening);
}

Future<List<InternshipIdAndOpening>> fetchData() async {
  final response = await http.get(
    Uri.parse('https://internshala.com/flutter_hiring/search'),
  );

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    final internshipIds = data['internship_ids'] as List<dynamic>;
    final List<InternshipIdAndOpening> openings =
        internshipIds.map<InternshipIdAndOpening>((id) {
      return InternshipIdAndOpening(
        id.toString(),
        InternshipOpening.fromJson(data['internships_meta'][id.toString()]),
      );
    }).toList();

    return openings;
  } else {
    throw Exception('Failed to load data');
  }
}
