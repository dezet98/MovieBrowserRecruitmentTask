import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/utils/dimensions.dart';

class MovieCard extends StatelessWidget {
  final String heroTextTag;
  final String title;
  final String rating;
  final VoidCallback onTap;

  const MovieCard({
    required this.heroTextTag,
    required this.title,
    required this.rating,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Container(
          height: 48.0,
          padding: const EdgeInsets.symmetric(horizontal: Dimensions.PADDING_M),
          child: Row(
            children: [
              Expanded(
                child: Hero(
                  tag: heroTextTag,
                  child: Material(
                    type: MaterialType.transparency,
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.subtitle2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: Dimensions.PADDING_M),
              Text(
                '$rating 🌟',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      );
}
