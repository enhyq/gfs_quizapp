import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizTemplate extends StatefulWidget {
  const QuizTemplate({Key? key}) : super(key: key);

  @override
  State<QuizTemplate> createState() => _QuizTemplateState();
}

class _QuizTemplateState extends State<QuizTemplate> {

  var question_no = 1;

  var question = {
    'question': 'how many wheels are in '
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question #$question_no'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('[question]'),
          ),
          GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: 4,
            itemBuilder: (BuildContext ctx, index) {
              // return GridTile(
              //   key: ,
              // );
            },
          ),
        ],
      ),
    );
  }
}
