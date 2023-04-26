import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_matching_game/screen/play/controller/play_controller.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  PlayController PC = Get.put(PlayController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              child: Image.asset("asset/images/bg.jpg", fit: BoxFit.cover),
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 600,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade100.withOpacity(0.55),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Draggable(
                                data: PC.data1[index],
                                child: Container(
                                  height: 65,
                                  width: 65,
                                  child: Image.asset("${PC.letter[index]}"),
                                ),
                                feedback: Container(
                                  height: 90,
                                  width: 90,
                                  child: Image.asset("${PC.letter[index]}"),
                                ),
                              ),
                            );
                          },
                          itemCount: PC.letter.length,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 600,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade100.withOpacity(0.55),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: DragTarget(
                                builder:
                                    (context, candidateData, rejectedData) {
                                  return Obx(
                                    () => PC.onDrag[index].value==true
                                      ? Column(
                                          children: [
                                            Image.asset("${PC.thing[index]}",width: 50,height: 50,semanticLabel: "${PC.name[index]}"),
                                          ],
                                        )
                                      : Container(
                                          height: 70,
                                          width: 70,
                                          child: Image.asset("${PC.thing[index]}"),
                                        ),
                                  );
                                },
                                onWillAccept: (data) {
                                  return data==PC.data1[index];
                                },
                                onAccept: (data) {
                                  PC.onDrag[index].value=true;
                                },
                              ),
                            );
                          },
                          itemCount: PC.thing.length,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
