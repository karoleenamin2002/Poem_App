// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Poem(),
    );
  }
}

class Poem extends StatefulWidget {
  const Poem({super.key});

  @override
  State<Poem> createState() => _PoemState();
}

class _PoemState extends State<Poem> {
  int index = 0;
  List verse = [
    {
      "line1": "لا تَشْكُ للناس جرحًا أنت صَاحِبُهُ",
      "line2": "لا يُؤْلِمُ الجَرْحُ إلا مَن بِهِ ألَمُ"
    },
    {
      "line1": "شَكْوَاكَ لِلنَّاسِ يا ابنَ النَّاس منْقصَةٌ",
      "line2": "ومَن مِنَ النَّاسِ صَاحِ مَا بِهِ سَقَمُ"
    },
    {
      "line1": "فالهمُّ كالسّيْلِ والأحزان زاخِرَةٌ",
      "line2": "حُمْرُ الدَّلائلِ مَهْمَا أهْلُها كَتمُوا"
    },
    {
      "line1": "فَإِنْ شَكَوْتَ لِمَنْ طَابَ الزَّمَانُ لَهُ",
      "line2": "عَيْنَاكَ تَغْلِي وَمَنْ تَشْكُو لَهُ صَنَمُ"
    },
    {
      "line1": "وَإِذَا شَكَوْتَ لِمَنْ شَكْوَاكَ تُسْعِدُهُ",
      "line2": "أَضَفْتَ جرحًا لِجُرْحِكَ اِسْمُهُ النَّدَمُ"
    },
    {
      "line1": "هَلِ الْمُوَاسَاةُ يَوْمًا حرَّرَتْ وَطَنا",
      "line2": "أم التّعازي بَدِيلٌ إنْ هَوَى العَلَمُ"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${verse[index]["line1"]}",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "${verse[index]["line2"]}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    setState(() {
                      if (index == 0) {
                        index = verse.length-1;
                      } else {
                        index--;
                      }
                    });
                  },
                  child: Icon(
                    Icons.arrow_left,
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    setState(() {
                      if (index== verse.length - 1) {
                        index = 0;
                      } else {
                        index++;
                      }
                    });
                  },
                  child: Icon(
                    Icons.arrow_right,
                    size: 60,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
