import 'package:meta/meta.dart';

import 'summary_report_record_status.dart';

@immutable
class SummaryReportRecord {
  final SummaryReportRecordStatus status;

  final String title;

  final Iterable<Object> values;
  final Iterable<Object> overflows;

  const SummaryReportRecord({
    required this.status,
    required this.title,
    required this.values,
    required this.overflows,
  });
}
