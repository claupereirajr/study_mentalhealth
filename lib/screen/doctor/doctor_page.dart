import 'package:flutter/material.dart';
import '../../models/doctors.dart';
import '../../widgets/widgets.dart';

class DoctorsPage extends StatefulWidget {
  static const String routeName = '/doctor';
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const DoctorsPage());
  }
}

class _DoctorsPageState extends State<DoctorsPage> {
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
                    children: const [
                      CustomAppBar(),
                      SizedBox(height: 20.0,),
                      SearchBar(),
                    ]
                  ),
                ),
              ),
            ),
            Expanded(
              flex:3,
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
                            SectionTitle(title: 'Categorias'),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        const SizedBox(height: 10.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0, right: 5.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.cyan,
                                              Colors.blue,
                                            ],
                                          )
                                        ),
                                        child: const SizedBox(
                                          height: 86.0,
                                          child: Center(
                                            child: Text(
                                              'Relacionamento',
                                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0, left: 5.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.indigo,
                                              Colors.purple,
                                            ],
                                          )
                                        ),
                                        child: const SizedBox(
                                          height: 86.0,
                                          child: Center(
                                            child: Text(
                                              'Educação',
                                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0, right: 5.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.green,
                                              Colors.yellow,
                                            ],
                                          )
                                        ),
                                        child: const SizedBox(
                                          height: 86.0,
                                          child: Center(
                                            child: Text(
                                              'Carreira',
                                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0, left: 5.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.orange,
                                              Colors.red,
                                            ],
                                          )
                                        ),
                                        child: const SizedBox(
                                          height: 86.0,
                                          child: Center(
                                            child: Text(
                                              'Outros',
                                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SectionTitle(title: 'Especialistas'),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        EspecialistList(especialists: Especialist.especialists.where((especialist) => especialist.actived).toList())
                      ]
                    ),
                  )
                )
              )
            ),
          ],
        ),
      ),
    );
  }
}
