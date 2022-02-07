import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/pages/movie_list/cubit/movie_list_cubit.dart';
import 'package:flutter_recruitment_task/utils/extensions.dart';
import 'package:provider/provider.dart';

class SearchBox extends StatefulWidget {
  SearchBox({Key? key}) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final _controller = TextEditingController();
  bool showClear = false;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          border: Border(
            bottom: BorderSide(color: Colors.black.withOpacity(0.1)),
          ),
        ),
        child: TextField(
          controller: _controller,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            suffixIcon: _controller.text.isEmpty
                ? null
                : InkWell(
                    onTap: () {
                      _controller.clear();
                      context.read<MovieListCubit>().clear();
                      setState(() {
                        showClear = false;
                      });
                    },
                    child: Icon(
                      Icons.clear,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
            border: InputBorder.none,
            hintText: context.strings.search,
          ),
          onChanged: (String query) {
            context.read<MovieListCubit>().loadMovies(query);

            if (query.isEmpty && showClear == true) {
              setState(() {
                showClear = false;
              });
            } else if (query.isNotEmpty && showClear == false) {
              setState(() {
                showClear = true;
              });
            }
          },
        ),
      );
}
