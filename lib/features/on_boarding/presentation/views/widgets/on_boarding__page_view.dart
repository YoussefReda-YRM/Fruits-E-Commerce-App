import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
                  0,
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subTitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("مرحبًا بك في ", style: TextStyles.bold23),
              Text("HUB",
                  style: TextStyles.bold23
                      .copyWith(color: AppColors.secondaryColor)),
              const Text("Fruit", style: TextStyles.bold23),
            ],
          ),
        ),
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
                  0,
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subTitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: const Text("ابحث وتسوق"),
        ),
      ],
    );
  }
}
