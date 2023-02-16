import 'package:flutter/material.dart';

import 'package:guiz_app/constants/colors/app_colors.dart';
import 'package:guiz_app/constants/text_style/app_text_style.dart';
import 'package:guiz_app/utilities/question_answers_util/quiz_list_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('GuizApp'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10, left: 20),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isFinished == true)
              ElevatedButton(
                onPressed: () {
                  quizListUtil.reset();
                  quizListUtil.suroonuAlipKel();
                  isFinished = false;
                  icons = [];
                  setState(() {});
                },
                child: const Text(
                  'Kaira Bashta',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              )
            else
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 55, vertical: 55),
                child: Text(
                  quizListUtil.suroonuAlipKel().toString(),
                  style: AppTextStyle.white35w600,
                  textAlign: TextAlign.center,
                ),
              ),
            const SizedBox(
              height: 60,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    userdinJoobu(true);
                  },
                  child: Container(
                    height: 50,
                    width: 280,
                    color: AppColors.green,
                    child: Center(
                      child: Text(
                        'Ооба',
                        style: AppTextStyle.white35w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                userdinJoobu(false);
              },
              child: Container(
                height: 50,
                width: 280,
                color: AppColors.red,
                child: Center(
                  child: Text(
                    'Жок',
                    style: AppTextStyle.white35w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              children: icons,
            ),
          ],
        ),
      ),
    );
  }

  List<Icon> icons = [];

  void userdinJoobu(bool userJoopBerdi) {
    bool? tuurajoop = quizListUtil.jooptuAlipKel();

    if (tuurajoop == userJoopBerdi) {
      icons.add(
        const Icon(
          Icons.check,
          color: Colors.green,
          size: 35,
        ),
      );
    } else if (tuurajoop != userJoopBerdi) {
      icons.add(const Icon(
        Icons.close,
        color: Colors.red,
        size: 35,
      ));
    }
    quizListUtil.otkoz();
    if (quizListUtil.suroonuAlipKel() == '') {
      isFinished = true;
    }
    setState(() {});
  }
}
