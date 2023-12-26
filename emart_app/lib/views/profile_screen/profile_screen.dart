import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen/components/details_card.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // edit profile button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                )).onTap(() {}),
          ),

          // user details section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
                10.widthBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy user".text.fontFamily(semibold).white.make(),
                    "Customer@example.com".text.make()
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: whiteColor)),
                    onPressed: () {},
                    child: logout.text.fontFamily(semibold).white.make()),
              ],
            ),
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailsCard(
                  count: "00",
                  title: "In your cart",
                  width: context.screenWidth / 3.4),
              detailsCard(
                  count: "32",
                  title: "In your wishlist",
                  width: context.screenWidth / 3.4),
              detailsCard(
                  count: "675",
                  title: "your orders",
                  width: context.screenWidth / 3.4)
            ],
          ),

          // button section start
          // 40.heightBox,

          ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: lightGrey,
                    );
                  },
                  itemCount: profileButtonList.length,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                      leading: Image.asset(
                        profileButtonIcon[index],
                        width: 22,
                      ),
                      title: profileButtonList[index]
                          .text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .make(),
                    );
                  })
              .box
              .white
              .rounded
              .margin(const EdgeInsets.all(12))
              .padding(const EdgeInsets.symmetric(horizontal: 16))
              .shadowSm
              .make()
              .box
              .color(redColor)
              .make()
        ],
      )),
    ));
  }
}
