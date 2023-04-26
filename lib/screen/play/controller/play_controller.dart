import 'package:get/get.dart';

class PlayController extends GetxController
{
  List data1=[
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
  ];

  List letter=[
    "asset/letters/A.png",
    "asset/letters/B.png",
    "asset/letters/C.png",
    "asset/letters/D.png",
    "asset/letters/E.png",
    "asset/letters/F.png",
    "asset/letters/G.png",
    "asset/letters/H.png",
    "asset/letters/I.png",
    "asset/letters/J.png",
  ];

  List thing=[
    "asset/thing/fish.png",
    "asset/thing/house.png",
    "asset/thing/apple.png",
    "asset/thing/elephant.png",
    "asset/thing/car.png",
    "asset/thing/jam.png",
    "asset/thing/dog.png",
    "asset/thing/icecream.png",
    "asset/thing/girl.png",
    "asset/thing/ball.png",
  ];

  List name=[
    "Fish",
    "House",
    "Apple",
    "Elephant",
    "Car",
    "Jam",
    "Dog",
    "Ice Cream",
    "Girl",
    "Ball",
  ];

  List data2=[
    'f',
    'h',
    'a',
    'e',
    'c',
    'j',
    'd',
    'i',
    'g',
    'b',
  ];

  List<RxBool> onDrag=[
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
  ];
}