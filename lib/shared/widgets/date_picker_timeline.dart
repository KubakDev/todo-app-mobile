import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:todo_app/shared/shared.dart';

class DatePickerTimeline extends StatefulWidget {
  const DatePickerTimeline({
    Key? key,
    required this.selectedDate,
    required this.daysWithTodo,
    required this.onChanged,
  }) : super(key: key);

  final DateTime selectedDate;
  final Set<DateTime> daysWithTodo;
  final void Function(DateTime selectedDate) onChanged;

  @override
  State<DatePickerTimeline> createState() => _DatePickerTimelineState();
}

class _DatePickerTimelineState extends State<DatePickerTimeline> {
  late DateTime _selectedMonth;
  int? _todaysIndex;
  late AutoScrollController _scrollController;
  final DateFormat dayName = DateFormat('EEE');
  late final DateTime _today;
  @override
  void initState() {
    _today = DateTime.now();
    _todaysIndex = _today.day - 1;
    _selectedMonth = DateTime(_today.year, _today.month);
    _scrollController = AutoScrollController(
      initialScrollOffset: 1700,
    );
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _scrollController.scrollToIndex(
        selectedToIndex() - 1,
        preferPosition: AutoScrollPosition.begin,
        duration: const Duration(milliseconds: 500),
      );
    });
    super.initState();
  }

  int selectedToIndex() {
    return widget.selectedDate.difference(_selectedMonth).inDays;
  }

  String formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy').format(date);
  }

  String formatMonth(DateTime date) {
    return DateFormat('MMM yyyy').format(date);
  }

  void changeMonth(int delta) {
    if (delta == 1) {
      final subtract = _selectedMonth.add(
        const Duration(days: 35),
      );
      _selectedMonth = DateTime(
        subtract.year,
        subtract.month,
      );
    } else {
      final subtract = _selectedMonth.subtract(
        const Duration(days: 15),
      );
      _selectedMonth = DateTime(
        subtract.year,
        subtract.month,
      );
    }
    if (_selectedMonth.month == _today.month &&
        _selectedMonth.year == _today.year) {
      _todaysIndex = _today.day - 1;
    } else {
      _todaysIndex = null;
    }
    widget.onChanged(
      DateTime(
        _selectedMonth.year,
        _selectedMonth.month,
        widget.selectedDate.day,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final selectedIndex = selectedToIndex();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: kPrimaryColor5,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 200,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      changeMonth(-1);
                    });
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                Text(
                  formatMonth(_selectedMonth),
                  style: theme.textTheme.headline5,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      changeMonth(1);
                    });
                  },
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: DateUtils.getDaysInMonth(
                  _selectedMonth.year,
                  _selectedMonth.month,
                ),
                padding: const EdgeInsets.only(right: 8),
                controller: _scrollController,
                itemBuilder: (_, i) {
                  final add = _selectedMonth.add(Duration(days: i));
                  final hasTodo = widget.daysWithTodo.contains(add);
                  return AutoScrollTag(
                    key: ValueKey(i),
                    controller: _scrollController,
                    index: i,
                    highlightColor: Colors.black.withOpacity(0.1),
                    child: InkWell(
                      onTap: () => widget.onChanged(add),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          AnimatedContainer(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(
                              left: 8,
                              top: 8,
                              bottom: 14,
                            ),
                            decoration: BoxDecoration(
                              color: selectedIndex == i
                                  ? kPrimaryColor
                                  : kPrimaryColor4,
                              borderRadius: BorderRadius.circular(40),
                              border: selectedIndex != i
                                  ? Border.all(
                                      color: _todaysIndex == i
                                          ? kPrimaryColor2
                                          : kPrimaryColor4,
                                      width: 2,
                                    )
                                  : null,
                            ),
                            width: size.width / 4.7,
                            duration: const Duration(milliseconds: 200),
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${add.day}',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: selectedIndex == i
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    dayName.format(add),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: selectedIndex == i
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (hasTodo)
                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Transform.translate(
                                offset: const Offset(3, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    shape: BoxShape.circle,
                                  ),
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}
