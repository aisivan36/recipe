import 'package:flutter/material.dart';
import 'package:recipe/api/mock_fooderlich_service.dart';
import 'package:recipe/models/explore_data.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        // TODO add nested lsit views
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          // TODO replace this with todayrecipeListVIew
          return Center(
            child: Container(
              child: const Text('Show TodayRecipeListView'),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
