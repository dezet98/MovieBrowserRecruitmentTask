import 'package:flutter_recruitment_task/generated/l10n.dart';
import 'package:flutter_recruitment_task/pages/movie_details/widgets/move_details.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mocks/fake_api_service.dart';
import '../mocks/fake_app.dart';

void main() {
  testWidgets('MovieDetails has should watch text',
      (WidgetTester tester) async {
    final movie = ApiServiceHelper().getMovieDetails(0);
    await tester.pumpWidget(FakeApp(child: MovieDetails(movie: movie)));
    await tester.pumpAndSettle();

    final titleFinder =
        find.text(movie.shouldWatch() ? S.current.yes : S.current.no);

    expect(titleFinder, findsOneWidget);
  });
}
