import 'package:flutter/material.dart';

class OfferItem extends StatefulWidget {
  final String offerText;
  final int price1;
  final int price2;
  final int offAmount;
  int quantity;

  OfferItem(
      this.offerText, this.price1, this.price2, this.offAmount, this.quantity);

  @override
  State<OfferItem> createState() => _OfferItemState();
}

class _OfferItemState extends State<OfferItem> {
  void add_tapEvent() {
    setState(() {
      widget.quantity += 1;
    });
  }

  void remove_tapEvent() {
    setState(() {
      widget.quantity == 0 ? widget.quantity : widget.quantity -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.75, color: Color(0xff303030)),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Container(
            width: 150,
            padding: EdgeInsets.only(left: 10),
            child: Text(
              widget.offerText,
              style: TextStyle(fontSize: 13),
            ),
          ),
          Container(
            width: 50,
            child: Column(
              children: [
                Text("\$${widget.price1.toString()}",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                Text("\$${widget.price2.toString()}",
                    style: TextStyle(
                        fontSize: 12, decoration: TextDecoration.lineThrough)),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 50,
            padding: EdgeInsets.all(2),
            child: Text("${widget.offAmount.toString()} % \noff"),
            decoration: BoxDecoration(color: Color(0xff64D70B)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => add_tapEvent(),
                  child: Icon(
                    Icons.add_circle_rounded,
                    color: Color(0xff303030),
                  ),
                ),
                Text(widget.quantity.toString()),
                GestureDetector(
                    onTap: () => remove_tapEvent(),
                    child: Icon(Icons.remove_circle_rounded,
                        color: Color(0xff303030)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
