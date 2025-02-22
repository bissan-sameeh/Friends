String formatDuration(Duration duration) {
  int days = duration.inDays;
  int hours = duration.inHours.remainder(24);
  int minutes = duration.inMinutes.remainder(60);

  return '${days.toString().padLeft(2, '0')}d '
      '${hours.toString().padLeft(2, '0')}h '
      '${minutes.toString().padLeft(2, '0')}m';
}