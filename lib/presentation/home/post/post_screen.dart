import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  PostScreenState createState() => PostScreenState();
}

class PostScreenState extends State<PostScreen> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> selectedImages = [];

  Future<void> _pickImage() async {
    final images = await _picker.pickMultiImage();
    if (images.length > 4) {
      selectedImages = images.take(4).toList();
    } else {
      selectedImages = images;
    }
    setState(() {});
  }

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: TextField(
                  maxLines: 3,
                  maxLength: 256,
                  onChanged: (text) {
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    alignLabelWithHint: true,
                    labelText: '内容',
                    hintText: '今日の天気はそこまでよくないな。カフェ行こうと思ったけど遠慮しとこうかな？',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              if (selectedImages.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: selectedImages.length,
                      itemBuilder: (context, index) {
                        final imagePath = selectedImages[index].path;
                        return Padding(
                          padding: const EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: AspectRatio(
                              aspectRatio: 1 / 1,
                              child: imagePath.isNotEmpty
                                  ? Image.file(
                                      File(imagePath),
                                      fit: BoxFit.cover,
                                    )
                                  : const SizedBox.shrink(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 296),
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: IconButton(
                        icon: SvgPicture.asset(Assets.icons.imagePlus),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: _pickImage,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: IconButton(
                        icon: const Icon(Icons.ballot),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 56),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text('やっぱやめる'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.pop();
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
      ),
    );
  }
}
