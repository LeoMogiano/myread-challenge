import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';

import 'package:my_reads/core/core.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const BlocsProvider());
}