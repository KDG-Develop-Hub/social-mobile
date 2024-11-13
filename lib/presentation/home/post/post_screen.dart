import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 24,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SvgPicture.asset(
              Assets.icons.feather,
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '今回は何を綴るのかな？',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '自分の考えや出来事を気楽に書こう！コミュニティーガイドラインの確認も忘れないでねッ！',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: '内容', 
                  hintText: '今日の天気はそこまでよくないな。カフェ行こうと思ったけど遠慮しとこうかな？',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Row(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(32, 8, 32, 8),
                  child: Text('0/256'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('画像を選択'),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      icon: SvgPicture.asset(Assets.icons.imagePlus),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: () {
                      },
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      icon: const Icon(Icons.ballot),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 56),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                    },
                    child: const Text('やっぱやめる'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF466730),
                    ),
                    child: const Text(
                      '広めちゃうん',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
