import 'dart:convert';
import 'dart:io';

import 'package:algorithm/algorithm.dart' as algo;

void main(List<String> arguments) {
  final line = stdin.readLineSync(encoding: utf8);
  if (line == null) return;
  List<int> input = line.split(' ').map((e) => int.parse(e)).toList();
  algo.miniMaxSum(input);
}
