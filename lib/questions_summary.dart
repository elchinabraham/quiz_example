import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    print(summaryData.length);
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: (data['user_answer'] as String) ==
                            data['correct_answer'] as String
                        ? Colors.cyan
                        : Color.fromARGB(255, 231, 93, 201),
                  ),
                  width: 25,
                  height: 25,
                  child: Center(
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: TextStyle(
                        color: Color.fromARGB(255, 78, 13, 151),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data['user_answer'] as String,
                          style: TextStyle(
                              color: Color.fromARGB(255, 214, 168, 168)),
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: TextStyle(
                              color: Color.fromARGB(255, 189, 179, 179)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
