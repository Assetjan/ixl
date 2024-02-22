import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/subjects/components/subjects_background.dart';

class SubjectsBody extends StatefulWidget {
  @override
  State<SubjectsBody> createState() => _SubjectsBodyState();
}

class _SubjectsBodyState extends State<SubjectsBody> {
  List<String> items = [
    "Math",
    "Language arts",
    "Science",
    "Social",
  ];

  List<IconData> icons = [
    Icons.plus_one,
    Icons.language,
    Icons.science_outlined,
    Icons.south_america_outlined,
  ];

  int current = 0;
  PageController pageController = PageController();
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
                                SizedBox(width: 5),
                                Text(
                                  items[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: current == index
                                        ? Colors.white
                                        : Color.fromRGBO(9, 52, 86, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Visibility(
                        //   visible: current == index,
                        //   child: Container(
                        //     width: 5,
                        //     height: 5,
                        //     decoration: const BoxDecoration(
                        //         color: Colors.deepPurpleAccent,
                        //         shape: BoxShape.circle),
                        //   ),
                        // )
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
          ],
        ),
      ),
        
    );
  }
}

class Entry {
  final String title;
  final List<Entry>
      children; // Since this is an expansion list ...children can be another list of entries
  Entry(this.title, [this.children = const <Entry>[]]);
}
 
// This is the entire multi-level list displayed by this app
final List<Entry> data = <Entry>[
  Entry(
    'Add and subtract whole numbers',
    <Entry>[
      Entry(
        'A.1 Add and subtract whole numbers'
      ),
      Entry('A.2 Add and subtract whole numbers: words problems'),
    ],
  ),
  // Second Row
  Entry('Chapter B', <Entry>[
    Entry('Section B0'),
    Entry('Section B1'),
  ]),
  Entry(
    'Chapter C',
    <Entry>[
      Entry('Section C0'),
      Entry('Section C1'),
      Entry(
        'Section C2',
        <Entry>[
          Entry('Item C2.0'),
          Entry('Item C2.1'),
          Entry('Item C2.2'),
          Entry('Item C2.3'),
        ],
      )
    ],
  ),
];
 
// Create the Widget for the row
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;
 
  // This function recursively creates the multi-level list rows.
  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title, style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.normal, fontSize: 18),),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}


// class ClassDropDown extends StatelessWidget {
//   final String label;
//   final List<String> values;

//   ClassDropDown({required this.label, required this.values});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: DropdownButton<String>(
//         value: values.first,
//         onChanged: (String? newValue) {
//         },
//         items: values.map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }