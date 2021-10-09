/// Enum class represent of summary report.
class SummaryReportRecordStatus {
  /// Error.
  ///
  /// Status indicates that a record contains error information.
  /// Commonly represend by ❌ emoji
  static const error = SummaryReportRecordStatus._('error');

  /// Warning.
  ///
  /// Status indicates that a record requires user attention.
  /// Commonly represend by ⚠️ emoji.
  static const warning = SummaryReportRecordStatus._('warning');

  /// OK.
  ///
  /// Standard status for successful record.
  /// Commonly represend by ✅ emoji.
  static const ok = SummaryReportRecordStatus._('ok');

  /// None.
  ///
  /// Status for a record without a decision.
  static const none = SummaryReportRecordStatus._('none');

  static const values = [error, warning, ok, none];

  final String _value;

  const SummaryReportRecordStatus._(this._value);

  @override
  String toString() => _value;
}
