import 'package:flutter/material.dart';
import 'Widgets/custom_grid_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> stringsList = [
      'Users',
      'Posts',
      'Comments',
      'Todos',
      'AllApis',
    ];
    List<IconData> iconsList = [
      Icons.person_2_outlined,
      Icons.post_add_outlined,
      Icons.comment,
      Icons.task_outlined,
      Icons.all_inclusive_outlined,
    ];

    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'H O M E   P A G E',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.builder(
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 3,
        ),
        itemBuilder: (context, index) => CustomGridTile(
          text: stringsList[index],
          iconData: iconsList[index],
        ),
      ),
    );
  }
}
