import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                // color: darkFontGrey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                // color: darkFontGrey,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Swiper section

                  VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      itemCount: 3,
                      aspectRatio: 16 / 9,
                      itemBuilder: (context, index) {
                        return Image.asset(imgFc5,
                            width: double.infinity, fit: BoxFit.cover);
                      }),
                  10.heightBox,
                  title!.text
                      .size(16)
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,

                  // swiper section ends here

                  // start of the ratings

                  VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      stepInt: true),

                  // end of the ratings
                  10.heightBox,
                  "\$30,000"
                      .text
                      .color(redColor)
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                  10.heightBox,

                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Seller".text.white.fontFamily(semibold).make(),
                          5.heightBox,
                          "In House Brands"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .size(16)
                              .make()
                        ],
                      )),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.message_rounded, color: darkFontGrey),
                      )
                    ],
                  )
                      .box
                      .height(60)
                      .color(textfieldGrey)
                      .padding(const EdgeInsets.symmetric(horizontal: 16))
                      .make(),

                  // starting of the color selection
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Coloe: ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: List.generate(
                              3,
                              (index) => VxBox()
                                  .size(40, 40)
                                  .roundedFull
                                  .color(Vx.randomPrimaryColor)
                                  .margin(
                                      const EdgeInsets.symmetric(horizontal: 4))
                                  .make(),
                            ),
                          )
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      // quantity row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color : ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove)),
                              "0"
                                  .text
                                  .size(16)
                                  .color(darkFontGrey)
                                  .fontFamily(bold)
                                  .make(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add)),
                              10.widthBox,
                              "(0 available)".text.color(textfieldGrey).make()
                            ],
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      // end of the quantity row

                      // start of the total row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total : ".text.color(textfieldGrey).make(),
                          ),
                          "\$0.00"
                              .text
                              .color(redColor)
                              .size(16)
                              .fontFamily(bold)
                              .make()
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make()
                      // end off the total row
                    ],
                  ).box.white.shadowSm.make(),

                  // description section
                  10.heightBox,

                  "Description"
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,
                  "This is a dummy item and dummy description here... nfnjf nfjngjs lsmdksfn nnjsnsjf kdksfnkf nfnjf nfjngjs lsmdksfn nnjsnsjf kdksfnkf nfnjf nfjngjs lsmdksfn nnjsnsjf kdksfnkf nfnjf nfjngjs lsmdksfn nnjsnsjf kdksfnkf nfnjf nfjngjs lsmdksfn nnjsnsjf kdksfnkf  "
                      .text
                      .color(darkFontGrey)
                      .make(),

                  // buttons section
                  10.heightBox,
                  ListView(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                        itemDetailsButtonList.length,
                        (index) => ListTile(
                              title: itemDetailsButtonList[index]
                                  .text
                                  .fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .make(),
                              trailing: const Icon(Icons.arrow_forward),
                            )),
                  ),
                  // end of the button section

                  // start of the products you may also like

                  productsYouMayLike.text
                      .fontFamily(bold)
                      .size(16)
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  // i coppied this widget from the home screen featured products

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          6,
                          (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    imgP1,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  10.heightBox,
                                  "Laptop 4GB/64GB"
                                      .text
                                      .fontFamily(semibold)
                                      .color(darkFontGrey)
                                      .make(),
                                  10.heightBox,
                                  "\$600"
                                      .text
                                      .color(redColor)
                                      .fontFamily(bold)
                                      .size(16)
                                      .make()
                                ],
                              )
                                  .box
                                  .white
                                  .rounded
                                  .padding(const EdgeInsets.all(8))
                                  .roundedSM
                                  .margin(
                                      const EdgeInsets.symmetric(horizontal: 4))
                                  .make()),
                    ),
                  ),

                  // end of the products you may also like
                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
                color: redColor,
                onPress: () {},
                textColor: whiteColor,
                title: "Add to cart"),
          )
        ],
      ),
    );
  }
}
