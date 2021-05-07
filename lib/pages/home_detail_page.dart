import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/catalog.dart';
import 'package:flutter_catlog/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_catlog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(
              catalog: catalog
              ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "Lorem sadipscing justo dolore lorem rebum rebum sanctus et sed et, sanctus tempor dolor gubergren dolore, amet ipsum dolor no justo sed erat erat. Sed eos sadipscing consetetur nonumy ipsum, clita diam et ipsum consetetur est stet at, est eos et justo takimata voluptua justo. Eirmod lorem no tempor sit.."
                    .text
                    .textStyle(context.captionStyle)
                    .make().p16()
                  ],
                ).py64(),
              ),
            ))
          ],
        ).p16(),
      ),
    );
  }
}
