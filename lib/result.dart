import 'package:flutter/material.dart';

// class Result extends StatelessWidget {
//   final int resultScore;
//   final Function answerQuestion;

//   Result({required this.resultScore, required this.answerQuestion});

//   String get resultPhrase {
//     String resultText;
//     if (resultScore <= 8) {
//       resultText = 'You are awesome and innocent!, your rank is $resultScore';
//     } else if (resultScore <= 12) {
//       resultText = 'Pretty likeable!, your rank is $resultScore';
//     } else if (resultScore <= 16) {
//       resultText = 'You are ... strange!, your rank is $resultScore';
//     } else {
//       resultText = 'You are so bad!, your rank is $resultScore';
//     }
//     return resultText;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Center(
//           child: Text(
//             resultPhrase,
//             style: TextStyle(
//               fontSize: 36.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         IconButton(onPressed: () => answerQuestion(0, true), icon: Icon(Icons.refresh)),

//       ],
//     );
//     // print(resultScore);
//   }
// }

class Result extends StatefulWidget {
  // const Result({super.key});
  final int resultScore;
  final Function answerQuestion;
  Result({required this.resultScore, required this.answerQuestion});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String get resultPhrase {
    String resultText;
    if (widget.resultScore <= 8) {
      resultText =
          'You are awesome and innocent! your rank is ${widget.resultScore}';
    } else if (widget.resultScore <= 12) {
      resultText = 'Pretty likeable! your rank is ${widget.resultScore}';
    } else if (widget.resultScore <= 16) {
      resultText = 'You are ... strange! your rank is ${widget.resultScore}';
    } else {
      resultText = 'You are so bad! your rank is ${widget.resultScore}';
    }
    return resultText;
  }
  //@override
// void initState(){
//    super.initState();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          Container(
            width: 130.0,
            height: 40.0,
            child: ElevatedButton(
                onPressed: () => widget.answerQuestion(0, true),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color.fromARGB(255, 221, 213, 213)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.red, 
                        width: 1.0, 
                      ), 
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.refresh,
                      color: Colors.red,
                    ),
                    Text(
                      'Restart',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
//}
