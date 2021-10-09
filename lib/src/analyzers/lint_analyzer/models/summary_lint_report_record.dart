import 'package:meta/meta.dart';

import 'summary_lint_report_record_status.dart';

@immutable
class SummaryLintReportRecord {
  final SummaryLintReportRecordStatus status;

  final String title;

  final Iterable<Object> values;
  final Iterable<Object> overflows;

  const SummaryLintReportRecord({
    required this.status,
    required this.title,
    required this.values,
    required this.overflows,
  });
}
