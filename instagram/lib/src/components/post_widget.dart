import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/components/avatar_widget.dart';
import 'package:instagram/src/components/image_data.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          SizedBox(height: 15),
          _image(),
          SizedBox(height: 15),
          _infoCount(),
          SizedBox(height: 5),
          _infoDescription(),
          SizedBox(height: 5),
          _replyTextBtn(),
          SizedBox(height: 5),
          _dateAgo(),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
            type: AvatarType.TYPE3,
            nickname: 'asdf',
            size: 40,
            thumbPath:
                'http://image.kmib.co.kr/online_image/2020/0122/202001220402_11170924119205_1.jpg',
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
        imageUrl:
            'https://images.mypetlife.co.kr/content/uploads/2021/10/19151330/corgi-g1a1774f95_1280-1024x682.jpg');
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageData(
                IconsPath.likeOffIcon,
                width: 65,
              ),
              SizedBox(width: 10),
              ImageData(
                IconsPath.replyIcon,
                width: 60,
              ),
              SizedBox(width: 10),
              ImageData(
                IconsPath.directMessage,
                width: 55,
              ),
            ],
          ),
          ImageData(
            IconsPath.bookMarkOffIcon,
            width: 55,
          ),
        ],
      ),
    );
  }

  Widget _infoDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '좋아요 150개',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ExpandableText(
            '댕댕이 졸귀탱\n나도 졸귀탱\n너는 안졸귀탱\nasdfasdfasdfasdf',
            prefixText: 'asdf',
            prefixStyle: TextStyle(fontWeight: FontWeight.bold),
            expandText: '더보기',
            collapseText: '접기',
            collapseOnTextTap: true,
            maxLines: 3,
            linkColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          '댓글 모두 보기',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ),
    );
  }

  Widget _dateAgo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        '1일전',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 11,
        ),
      ),
    );
  }
}
