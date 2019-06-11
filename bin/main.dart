import 'dart:io';
import 'package:prompter_crh/prompter_crh.dart';

void main() {
  final prompter = Prompter();

  final choice = prompter.askBinary('Are you here to convet an image?');

  if (!choice) {
    exit(0);
  }

  prompter.askMultiple('Select format:', buildFormatOptions());
}

List<Option> buildFormatOptions() {
  return [
    Option('Convert to jpeg', 'jpeg'),
    Option('Convert to png', 'png'),
  ];
}
