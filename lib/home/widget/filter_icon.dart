import 'package:flutter/material.dart';
import 'package:todo_app/home/bloc/home_bloc.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({
    Key? key,
    required this.filter,
  }) : super(key: key);
  final TodoFilter filter;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (filter == TodoFilter.all) ...[
              const Icon(
                Icons.circle,
                size: 6,
              ),
              const SizedBox(
                height: 2,
              ),
              const Icon(
                Icons.circle_outlined,
                size: 6,
              ),
            ],
            if (filter == TodoFilter.completed) ...[
              const Icon(
                Icons.circle,
                size: 6,
              ),
              const SizedBox(
                height: 2,
              ),
              const Icon(
                Icons.circle,
                size: 6,
              ),
            ],
            if (filter == TodoFilter.active) ...[
              const Icon(
                Icons.circle_outlined,
                size: 6,
              ),
              const SizedBox(
                height: 2,
              ),
              const Icon(
                Icons.circle_outlined,
                size: 6,
              ),
            ],
          ],
        ),
        const SizedBox(
          width: 2,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.black,
              width: 8,
              height: 2,
              margin: const EdgeInsets.symmetric(
                vertical: 3,
              ),
            ),
            Container(
              color: Colors.black,
              width: 10,
              height: 2,
              margin: const EdgeInsets.symmetric(
                vertical: 3,
              ),
            ),
          ],
        )
      ],
    );
  }
}
