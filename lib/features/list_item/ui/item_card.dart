import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:polygon/common/ui/gallery/slide_imageview.dart';
import 'package:polygon/common/utils/enum_constants/image_source.dart';
import 'package:polygon/models/ModelProvider.dart';

class ItemCard extends StatefulHookConsumerWidget {
  const ItemCard({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _itemCardState();
}

class _itemCardState extends ConsumerState<ItemCard> {
  late Item item;

  late ValueNotifier<int> activePage;

  late List<String> images = [
    'images/images.jpeg',
    'images/images.jpeg',
    'images/images.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      // item = widget.item;
      activePage = ValueNotifier<int>(0);
    });

    return GestureDetector(
      onTap: () {
        // TODO: go to detailed page

      },
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 50,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          width: 250,
          height: 250,
          child: Align(
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                SlideImageView(
                  sourceType: ImageSource.local,
                  activePage: activePage,
                  images: images,
                  width: 300,
                  height: 300,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ValueListenableBuilder(
                    valueListenable: activePage,
                    builder: (context, value, child) {
                      // safePrint("Showed Dot index: " + activePage.value.toString());
                      // safePrint("Value from Builder: " + value.toString());
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: indicators(images.length, value),
                      );
                    },
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Title",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "Description",
                      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "@""100",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(
      imagesLength,
      (index) {
        return Container(
          margin: EdgeInsets.all(3),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: currentIndex == index
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : Color.fromARGB(109, 255, 255, 255),
              shape: BoxShape.circle),
        );
      },
    );
  }
}
