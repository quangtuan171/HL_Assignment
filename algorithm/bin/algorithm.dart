import 'dart:convert';
import 'dart:io';

import 'package:algorithm/algorithm.dart' as algo;

void main(List<String> arguments) {
  final line = stdin.readLineSync(encoding: utf8);
  if (line == null) return;

  List<int> input = line.split(' ').map((e) => int.parse(e)).toList();
  algo.miniMaxSum(input);
  print('Bonus:');
  print(' + Count total of array: ${algo.sumOfList(input)}');
  print(' + Find min in array: ${algo.minOfList(input)}');
  print(' + Find max in array: ${algo.maxOfList(input)}');
  print(' + Find even elements in array: ${algo.evenElementsOfList(input)}');
  print(' + Find odd elements in array: ${algo.oddElementsOfList(input)}');
}
