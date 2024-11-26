import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/home/home_screen_notifier.dart';
import 'package:social_mobile/presentation/post/post_screen_notifier.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';
import 'package:social_mobile/utils/helpers/validator.dart';
import 'package:social_mobile/utils/hooks/use_form_state_key.dart';
import 'package:social_mobile/utils/routes/app_router.dart';

class PostScreen extends HookConsumerWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickedImageFiles = ref.watch(postScreenNotifierProvider);
    final notifier = ref.read(postScreenNotifierProvider.notifier);
    final controller = useTextEditingController();
    final formKey = useFormStateKey();
    final i18nPostScreen = Translations.of(context).postScreen;

    final textStyle = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back,
            size: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 16),
                      SvgPicture.asset(
                        Assets.icons.feather,
                        colorFilter: ColorFilter.mode(
                          colorTheme.secondary,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        i18nPostScreen.title,
                        style: textStyle.headlineSmall,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        i18nPostScreen.description,
                        style: textStyle.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                      Divider(
                        thickness: 1,
                        color: colorTheme.outline,
                      ),
                      const SizedBox(height: 16),
                      IntrinsicHeight(
                        child: TextFormField(
                          controller: controller,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          expands: true,
                          maxLength: 256,
                          autofocus: true,
                          validator: Validator.common,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            labelText: i18nPostScreen.textFieldLabel,
                            border: const OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      if (pickedImageFiles != null)
                        Container(
                          height: 64,
                          margin: const EdgeInsets.only(bottom: 16),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: pickedImageFiles.length,
                            itemBuilder: (_, index) {
                              final imagePath = pickedImageFiles[index].path;
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: SvgPicture.asset(
                            Assets.icons.imagePlus,
                            colorFilter: ColorFilter.mode(
                              colorTheme.onSurfaceVariant,
                              BlendMode.srcIn,
                            ),
                          ),
                          onPressed: () async => notifier.pickImages(),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Spacer(),
                          TextButton(
                            onPressed: () => context.pop(),
                            child: Text(i18nPostScreen.buttons.cancel),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                await notifier.createPost(
                                  content: controller.text,
                                  onSuccess: () async {
                                    const HomeScreenRouteData().go(context);
                                    ref.invalidate(homeScreenNotifierProvider);
                                  },
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: colorTheme.primary,
                            ),
                            child: Text(
                              i18nPostScreen.buttons.post,
                              style: textStyle.labelLarge?.copyWith(
                                color: colorTheme.onPrimary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
