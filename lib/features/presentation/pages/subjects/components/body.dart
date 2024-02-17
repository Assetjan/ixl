import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/subjects/components/background.dart';
import 'package:ixl/features/presentation/pages/subjects/models/lesson.dart';

class SubjectsBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SubjectsBackground(
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
            
          ],
        ),
      ),
        
    );
  }
}

class Topics extends ChangeNotifier {
  int current = 0;

  PageController pageController = PageController();

  List<Lesson> mathLessonsList = [];

  List<Lesson> lessons = [];

  List<IconData> icons = [
    Icons.plus_one,
    Icons.language,
    Icons.science_outlined,
    Icons.south_america_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            height: 70,
            margin: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                                pageController.animateToPage(
                                  current,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.ease,
                                );
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: const EdgeInsets.all(5),
                                width: 130,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: current == index
                                      ? Color.fromRGBO(0, 119, 182, 1)
                                      : Colors.white,
                                  borderRadius: current == index
                                      ? BorderRadius.circular(12)
                                      : BorderRadius.circular(7),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center ,
                                  children: [
                                    Icon(
                                      icons[index],
                                      size: current == index ? 23 : 20,
                                      color: current == index
                                          ? Colors.white
                                          : Color.fromRGBO(9, 52, 86, 1),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      items[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: current == index
                                            ? Colors.white
                                            : const Color.fromRGBO(9, 52, 86, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
      Container(
              margin: const EdgeInsets.only(top: 0),
              width: double.infinity,
              height: 500,
              child: PageView.builder(
                itemCount: icons.length,
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, index) {
                  return EntryItem(
                data[index],
              );
                },
              ),
            ),
            ]
    );
  }
}