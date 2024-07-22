import 'package:amazon_clone/view/homeScreen/widgets/productCard.dart';
import 'package:flutter/material.dart';

class Dealscard extends StatefulWidget {
  const Dealscard(
      {super.key,
      required this.productImage1,
      this.actualPrice1,
      this.offerPrice1,
      this.producName1 = '',
      this.persentage1,
      required this.productImage4,
      this.actualPrice4,
      this.offerPrice4,
      this.producName4 = '',
      this.persentage4,
      required this.productImage2,
      this.actualPrice2,
      this.offerPrice2,
      this.producName2 = '',
      this.persentage2,
      required this.productImage3,
      this.actualPrice3,
      this.offerPrice3,
      this.producName3 = '',
      this.persentage3,
      this.title = ''});
  final String producName1;
  final String? offerPrice1;
  final String? actualPrice1;
  final int? persentage1;
  final String productImage1;
  final String producName2;
  final String? offerPrice2;
  final String? actualPrice2;
  final int? persentage2;
  final String productImage2;
  final String producName3;
  final String? offerPrice3;
  final String? actualPrice3;
  final int? persentage3;
  final String productImage3;
  final String producName4;
  final String? offerPrice4;
  final String? actualPrice4;
  final int? persentage4;
  final String productImage4;
  final String title;

  @override
  State<Dealscard> createState() => _DealscardState();
}

class _DealscardState extends State<Dealscard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 30, bottom: 10),
          child: Text(
            widget.title,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            height: 660,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: GridView(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 300),
              children: [
                Productcard(
                  productImage: widget.productImage1,
                  persentage: widget.persentage1,
                  offerPrice: widget.offerPrice1,
                  actualPrice: widget.actualPrice1,
                  producName: widget.producName1,
                ),
                Productcard(
                  productImage: widget.productImage2,
                  persentage: widget.persentage2,
                  offerPrice: widget.offerPrice2,
                  actualPrice: widget.actualPrice2,
                  producName: widget.producName2,
                ),
                Productcard(
                  productImage: widget.productImage3,
                  persentage: widget.persentage3,
                  offerPrice: widget.offerPrice3,
                  actualPrice: widget.actualPrice3,
                  producName: widget.producName3,
                ),
                Productcard(
                  productImage: widget.productImage4,
                  persentage: widget.persentage4,
                  offerPrice: widget.offerPrice4,
                  actualPrice: widget.actualPrice4,
                  producName: widget.producName4,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
