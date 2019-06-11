import 'dart:io';
import 'package:prompter_crh/prompter_crh.dart';

void main() {
  final prompter = Prompter();

  final choice = prompter.askBinary('Are you here to convet an image?');

  if (!choice) {
    exit(0);
  }
}
