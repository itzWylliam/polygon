import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:polygon/common/ui/textbuttons/text_button_v2.dart';
import 'package:polygon/common/utils/enum_constants/TypeOfHunt.dart';
import 'package:polygon/features/list_item/ui/item_card.dart';

import '../../../models/Item.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _homePageState();
}

class _homePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Home",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //_yourHuntUI(),
              const SizedBox(
                height: 30,
              ),
              //_recommendedHuntUI(),
              const SizedBox(
                height: 30,
              ),
              // _savedHuntUI(),
            ],
          ),
        ),
      ),
    );
  }

  // void getUser() async {
  //   final user = await ref.read(authControllerProvider).getCurrentUser();
  // }

  Widget _listOfHunt({required List<Item> itemList}) {
    return ListView.builder(
      itemCount: itemList.length,
      itemBuilder: (context, index) {
        return ItemCard(
          item: itemList[index],
        );
      },
    );
  }

  Widget _subheaderInferfaceWithSeeMore({
    required String header,
    required Function()? seeMoreOnTap,
  }) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              header,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButtonV2(
              width: 80,
              height: 20,
              onTap: seeMoreOnTap,
              componentOpacity: 1,
              text: "See More",
              textStyle: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _yourHuntUI() {
    return Column(
      children: [
        _subheaderInferfaceWithSeeMore(
            header: "Your Hunt", seeMoreOnTap: () {}),
        SizedBox(
          height: 10,
        ),
        _listOfHunt(
          itemList: [],
        ),
      ],
    );
  }

  Widget _recommendedHuntUI() {
    return Column(
      children: [
        _subheaderInferfaceWithSeeMore(
            header: "Recommended Hunt", seeMoreOnTap: () {}),
        SizedBox(
          height: 10,
        ),
        _listOfHunt(
          itemList: [],
        ),
      ],
    );
  }

  Widget _savedHuntUI() {
    return Column(
      children: [
        _subheaderInferfaceWithSeeMore(
            header: "Saved Hunt", seeMoreOnTap: () {}),
        SizedBox(
          height: 10,
        ),
        _listOfHunt(
          itemList: [],
        ),
      ],
    );
  }

  

  // Future<bool> itemListExist() async {

  // }
}
