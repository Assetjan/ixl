  import 'package:flutter/material.dart';
  import 'package:ixl/features/presentation/pages/subjects/components/subjects_background.dart';
  import 'package:ixl/features/presentation/pages/subjects/components/lesson_provider.dart';
  import 'package:provider/provider.dart';


  class SubjectsBody extends StatelessWidget {
    const SubjectsBody({super.key});


    @override
    Widget build(BuildContext context) {
      final lesProvider = Provider.of<LessonProvider>(context, listen: false);
      lesProvider.init();

      return SubjectsBackground(
        child: DefaultTabController(
          length: 4,
          child: DefaultTabController(
            length: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top:55),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Image.asset("assets/icons/subject_page_icon.png", width: 50, height: 50,)), 
                          const SizedBox(width: 5),  
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Amirkhan Amirzhan", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),),
                              Text("account@gmail.com", style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),)
                            ],
                          ),
                        ],  
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search skills",
                        hintStyle: const TextStyle(fontSize: 16),
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.label, 
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      dividerColor: Colors.transparent,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white,
                      padding: EdgeInsets.zero,
                      indicatorPadding: EdgeInsets.zero,
                      indicatorWeight: 1,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromRGBO(0, 119, 182, 1)
                      ),
                      tabs: const [
                        Tab(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Icon(Icons.plus_one),  
                                SizedBox(width: 5),
                                Text("Math", style: TextStyle(fontSize: 18),),
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Icon(Icons.language),  
                                SizedBox(width: 5),
                                Text("Language arts", style: TextStyle(fontSize: 18),),
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Icon(Icons.science_outlined),  
                                SizedBox(width: 5),
                                Text("Science", style: TextStyle(fontSize: 18),),
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Icon(Icons.south_america_outlined),  
                                SizedBox(width: 5),
                                Text("Social Studies", style: TextStyle(fontSize: 18),),
                              ],
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    height: 300,
                    child: TabBarView(
                      children: [
                        MathLessons(),
                        Center(child: Text('Tab 1 Content')),
                        Center(child: Text('Tab 2 Content')),
                        Center(child: Text('Tab 3 Content')),
                    ]),
                  )

              ]
            ),
            ),
          ),
        ),
          
      );
    }
  }

  class MathLessons extends StatelessWidget {
  const MathLessons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LessonProvider lesProvider = Provider.of<LessonProvider>(context);
    lesProvider.runFilter("math");

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Consumer<LessonProvider>(builder: (context, data, child) {
            return Expanded(
              child: data.lessons.isNotEmpty
                  ? LessonList(lessonList: data.lessons)
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            );
          }),
        ],
      ),
    );
  }
}
