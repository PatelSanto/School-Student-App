class FeeData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}

List<FeeData> fee = [
  FeeData('98546', 'October', '5 Oct 2023', 'Pending', 'Rs. 6000', 'PAY NOW'),
  FeeData('97524', 'September', '3 Sept 2023', 'Paid', 'Rs. 4000', 'DOWNLOAD'),
  FeeData('96546', 'August', '8 Aug 2023', 'Paid', 'Rs. 8000', 'DOWNLOAD'),
];
