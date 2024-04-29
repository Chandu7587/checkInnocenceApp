import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({super.key});
final  VoidCallback  selectHandler; 
final String answerText;
  
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
   child: Container(
      width: 400.0,
      height: 50.0,
      child: ElevatedButton(
      
         style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color.fromARGB(255, 236, 233, 233)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.blue, 
                        width: 2.0, 
                      ), 
                    ),
                  ),
                ),
        child: Text(answerText,
        style: TextStyle(color: Colors.blue),
        ),
        onPressed: selectHandler,
      ),
    ),
    );
  }
}
