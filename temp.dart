import 'dart:io';

void main(List<String> arguments) {
    String tempType = "";
    double temp = 0.0;
    bool noError = false;
    stdout.write("Enter the type of temperature (C or F): ");
    tempType = stdin.readLineSync();
    if (tempType == "c" || tempType == "C" || tempType == "f" || tempType == "F") {
        stdout.write("Enter the temperature: ");
        try {
            // Read from the console and convert it to double
            temp = double.parse(stdin.readLineSync());
            noError = true;
        } on FormatException catch (e) {
            stdout.writeln("The entered input is not a temperature.");
        }
        if (noError) {
            if (tempType == "c" || tempType == "C") {
                stdout.writeln("The temperature in Fahrenheit is: ${temp * 1.8 + 32.0}");
            } else if (tempType == "f" || tempType == "F") {
                stdout.writeln("The temperature in Celsius is: ${(temp - 32.0) / 1.8}");
            }
        }
    } else {
        stdout.writeln("The entered input is not an option.");
    }
}