class ResultData {
  final String subName;
  final int totalMarks;
  final int obtainMarks;
  final String grade;

  ResultData(this.subName, this.totalMarks, this.obtainMarks, this.grade);
}

List<ResultData> result = [
  ResultData('English', 100, 98, 'A'),
  ResultData('Physics', 100, 65, 'C'),
  ResultData('Chemistry', 100, 50, 'D'),
  ResultData('Mathematics', 100, 90, 'A'),
  ResultData('Computer Science', 100, 75, 'B'),
  ResultData('Geography', 100, 68, 'C'),
];
