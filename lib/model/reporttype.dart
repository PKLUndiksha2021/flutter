// // List<DropdownMenuItem> generateItems(List<ReportType> reportType) {
// //   List<DropdownMenuItem> items = [];
// //   for (var item in reportType) {
// //     items.add(DropdownMenuItem(
// //       child: Text(item.type),
// //       value: item,
// //     ));
// //   }
// //   return items;
// // }
// // ReportType selectedReportType;

// //Class Position
// class ReportType  {
//   String _reportType = reporttype[0];
//   ReportType(this._reportType);

//   String get reportType => _reportType;
//   updateReportType(String value){
//     if(value!=_reportType){
//       _reportType = value;
//       notifyListeners();

//     }
//   }
// }

// final List<ReportType> reporttype = [
//   ReportType("Support"),
//   ReportType("Bugs"),
//   ReportType("Problem"),
//   ReportType("Request"),
// ];
// //Notifier
