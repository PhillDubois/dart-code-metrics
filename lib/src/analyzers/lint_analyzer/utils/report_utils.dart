import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;

import '../metrics/models/metric_value_level.dart';
import '../models/lint_file_report.dart';
import '../models/severity.dart';
import '../models/summary_lint_report_record.dart';

MetricValueLevel maxMetricViolationLevel(Iterable<LintFileReport> records) =>
    records
        .expand(
          (record) => [...record.classes.values, ...record.functions.values]
              .map((report) => report.metricsLevel),
        )
        .max;

bool hasIssueWithSevetiry(
  Iterable<LintFileReport> records,
  Severity severity,
) =>
    records.any((record) =>
        record.issues.any((issue) => issue.severity == severity) ||
        record.antiPatternCases.any((issue) => issue.severity == severity));

Iterable<SummaryLintReportRecord> summary(Iterable<LintFileReport> records) => [
      SummaryLintReportRecord(
        title: 'Scanned folders',
        values: _scannedFolders(records),
      ),
      SummaryLintReportRecord(
        title: 'Total scanned files',
        values: [_totalFiles(records)],
      ),
    ];

Iterable<String> _scannedFolders(Iterable<LintFileReport> records) =>
    records.map((record) => p.split(record.relativePath).first).toSet().toList()
      ..sort();

int _totalFiles(Iterable<LintFileReport> records) =>
    records.map((record) => record.path).toSet().length;
