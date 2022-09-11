import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textController = TextEditingController();

  // final List<String> list = List.generate(10, (index) => "Text $index");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 20.0, right: 150),
                child: Text(
                  "DeMarket",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    color: Color(0xFF2A0845),
                  ),
                ),
              ),
              Container(
                width: 370,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 15.0, right: 170),
                child: InkWell(
                  onTap: () {},
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      const Text(
                        "Categorias",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: <Widget>[
                    Wrap(
                      spacing: 10,
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/fish.png'),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        )
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
