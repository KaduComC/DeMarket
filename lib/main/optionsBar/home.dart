import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textController = TextEditingController();
  final List<String> list = List.generate(10, (index) => "Text $index");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

        ],
      ),
    );
  }
}

// Widget makeCategory({title, onClick}) {
//   return Material(
//     type: MaterialType.transparency,
//     child: InkWell(
//       onTap: () => onClick(),
//       child: Container(
//         width: 150.0,
//         margin: const EdgeInsets.only(right: 10, left: 10),
//         decoration: BoxDecoration(
//           color: const Color(0xFF613D9F),
//           // color: Colors.grey[200],
//
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Align(
//           child: Text(
//             title,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 18,
//               fontWeight: FontWeight.w100,
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
