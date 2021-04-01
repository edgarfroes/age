import 'package:flutter_test/flutter_test.dart';

import 'package:age/age.dart';

void main() {
  DateTime birthday = DateTime(1990, 1, 20);
  DateTime today = DateTime.now(); //2020/1/24

  AgeDuration age;

  // Find out your age
  age = Age.dateDifference(
      fromDate: birthday, toDate: today, includeToDate: false);

  print('Your age is $age'); // Your age is Years: 30, Months: 0, Days: 4

  // Find out when your next birthday will be.
  DateTime tempDate = DateTime(today.year, birthday.month, birthday.day);
  DateTime nextBirthdayDate = tempDate.isBefore(today)
      ? Age.add(date: tempDate, duration: AgeDuration(years: 1))
      : tempDate;
  AgeDuration nextBirthdayDuration =
      Age.dateDifference(fromDate: today, toDate: nextBirthdayDate);

  print('You next birthday will be on $nextBirthdayDate or in $nextBirthdayDuration');
  // You next birthday will be on 2021-01-20 00:00:00.000 or in Years: 0, Months: 11, Days: 27
}


