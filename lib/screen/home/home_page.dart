import 'package:flutter/material.dart';
import '../../models/feelings.dart';
import '../../models/exercises.dart';
import '../../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomePage());
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [    
                      const CustomAppBar(),
                      const SizedBox(
                        height: 20,
                      ),
                      // Search Bar
                      const SearchBar(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Como você está se sentindo hoje?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      // How do you feel today?
                      FeelingCarousel(
                          feelings: Feeling.feelings
                              .where((feeling) => feeling.actived)
                              .toList()),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
                child: Container(
                  color: Colors.grey[100],
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0, bottom: 0.0),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SectionTitle(title: 'Tarefas'),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        ExerciseList(exercises: Exercise.exercises.where((exercise) => exercise.actived).toList())
                      ],
                    )
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
