import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
import 'package:command_runner/command_runner.dart';

const version = '0.8.0'; // Add this line

void main(List<String> arguments) async { // main is now async and awaits the runner
  var runner = CommandRunner(); // Create an instance of your new CommandRunner
  await runner.run(arguments); // Call its run method, awaiting its Future<void>
}