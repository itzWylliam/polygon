import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:polygon/common/utils/enum_constants/image_source.dart';

// need a ValueNotifier<int> for [activePage] object

class SlideImageView extends StatefulHookConsumerWidget {
  late List<String> images;
  late ImageSource sourceType;
  late double width;
  late double height;  
  late ValueNotifier<int> activePage;

  SlideImageView({
    required this.sourceType,
    required this.activePage,
    required this.images,
    this.width = 250,
    this.height = 200,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _slideImageViewState();
}

class _slideImageViewState extends ConsumerState<SlideImageView> {
  late ValueNotifier<int> activePage = ValueNotifier<int>(0);
  late List<String> images;

  late PageController _pageController;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      images = widget.images;

      activePage = widget.activePage;

      _pageController = PageController(
        viewportFraction: 0.8,
        initialPage: activePage.value,
      );
    });

    return Container(
      height: widget.height,
      width: widget.width,
      child: PageView.builder(
        itemCount: images.length,
        pageSnapping: true,
        controller: _pageController,
        onPageChanged: (page) {
          activePage.value = page;
          // safePrint("Active Page: " + activePage.value.toString());
          // safePrint("Current Page (Must be true): " + page.toString());
        },
        itemBuilder: (context, pagePosition) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  images[pagePosition],
                  fit: BoxFit.fitWidth,
                ),
              ),
              // Image.network(images[pagePosition]),
            ],
          );
        },
      ),
    );
  }
}
