import 'package:flutter/material.dart';
import 'package:instagram/src/components/avatar_widget.dart';
import 'package:instagram/src/components/image_data.dart';
import 'package:instagram/src/components/post_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ImageData(
          IconsPath.logo,
          width: 270,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(15),
              child: ImageData(
                IconsPath.directMessage,
                width: 50,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          _storyBoardList(),
          _postList(),
        ],
      ),
    );
  }

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 20),
          _myStory(),
          SizedBox(width: 5),
          ...List.generate(
            100,
            (index) => AvatarWidget(
              type: AvatarType.TYPE1,
              thumbPath:
                  'https://t1.daumcdn.net/cfile/tistory/24283C3858F778CA2E',
            ),
          ),
        ],
      ),
    );
  }

  Widget _myStory() {
    return Stack(
      children: [
        AvatarWidget(
          type: AvatarType.TYPE2,
          thumbPath: 'https://t1.daumcdn.net/cfile/blog/2455914A56ADB1E315',
          size: 70,
        ),
        Positioned(
          right: 10,
          bottom: 0,
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Center(
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  height: 1.1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _postList() {
    return Column(
      children: List.generate(50, (index) => PostWidget()).toList(),
    );
  }
}
