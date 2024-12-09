class TimeTable {
  final int date;
  final String dayName;
  final String monthName;
  final String subjectName;
  final String time;

  TimeTable(
    this.date,
    this.dayName,
    this.monthName,
    this.subjectName,
    this.time,
  );
}

List<TimeTable> timetable = [
  TimeTable(11, 'Monday', 'JAN', 'English', '9:00 am'),
  TimeTable(11, 'Monday', 'JAN', 'Physics', '9:45 am'),
  TimeTable(11, 'Monday', 'JAN', 'Chemistry', '10:30 am'),
  TimeTable(11, 'Monday', 'JAN', 'LUNCH TIME', '11:15 am'),
  TimeTable(11, 'Monday', 'JAN', 'Mathematics', '11:45 am'),
  TimeTable(11, 'Monday', 'JAN', 'Computer Science', '12:30 pm'),
  TimeTable(11, 'Monday', 'JAN', 'Hindi', '1:15 pm'),
];
