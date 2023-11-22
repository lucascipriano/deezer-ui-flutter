import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _header(),
              _hero(),
              // _mixed(),
              _gridtest(),
            ],
          ),
        ),
      ),
    );
  }
}

_header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8, right: 10),
        child: InkWell(
          onTap: () {},
          child: const Icon(
            Ionicons.notifications_outline,
            size: 25,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8, right: 10),
        child: InkWell(
          onTap: () {},
          child: const Icon(
            Ionicons.person_outline,
            size: 25,
          ),
        ),
      ),
    ],
  );
}

_hero() {
  return Container(
    margin: const EdgeInsets.only(left: 20),
    child: (Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 20,
            bottom: 20,
          ),
          child: const Text(
            'Início',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const Text(
          'Continue dando stream',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Container(
          margin: const EdgeInsetsDirectional.only(top: 15),
          child: SizedBox(
            width: double.infinity,
            height: 170,
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _artist('Alo você'),
                      _album('Regina Casé', '50 faixas'),
                      _artist('Random'),
                      _album('Toninho do diabo', 'Essa é boa'),
                      _album('analdelrey', 'para femboys'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    )),
  );
}

_artist(title) {
  const wallpaper =
      'https://images.unsplash.com/photo-1575285113814-f770cb8c796e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(right: 10, bottom: 0, left: 10),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(wallpaper //,
                ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      Container(
        width: 110,
        margin: const EdgeInsets.only(
          top: 110, left: 4,
          // left: 20,
        ),
        // width: 60,
        height: 60,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  );
}

_album(title, subtitle) {
  const wallpaper =
      'https://images.unsplash.com/photo-1575285113814-f770cb8c796e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  return Stack(children: [
    Container(
      margin: const EdgeInsets.only(right: 10, bottom: 0, left: 10),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(wallpaper //,
              ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    Container(
      width: 110,
      margin: const EdgeInsets.only(
        top: 110,
        left: 10,
      ),
      height: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            width: 100,
            margin: const EdgeInsets.only(top: 5),
            child: Text(
              subtitle,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      margin: const EdgeInsets.only(top: 60, left: 15),
      child: const CircleAvatar(
        radius: 18,
        backgroundColor: Color.fromARGB(255, 253, 253, 253),
        child: Icon(
          Ionicons.play,
          color: Colors.black,
          size: 23,
        ),
      ),
    ),
  ]);
}

_mixed() {
  return Container(
    margin: const EdgeInsetsDirectional.only(top: 15),
    child: SizedBox(
      width: double.infinity,
      height: 75,
      child: Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _childMixed(),
                _childMixed(),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

_gridtest() {
  return Container(
    margin: const EdgeInsetsDirectional.only(top: 15),
    width: double.infinity,
    height: 250,
    child: GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
        crossAxisSpacing: 5,
      ),
      scrollDirection: Axis.horizontal,
      children: [
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
        _childMixed(),
      ],
    ),
  );
}

_childMixed() {
  const background =
      'https://images.unsplash.com/photo-1682687220247-9f786e34d472?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8';
  return Container(
    margin: const EdgeInsets.only(left: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.grey,
    ),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
              image: NetworkImage(
                background,
              ),
              alignment: Alignment.topLeft,
            ),
          ),
          width: 100,
          height: 75,
        ),
      ],
    ),
  );
}
