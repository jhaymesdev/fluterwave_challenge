import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';
import '../providers/product.dart';

class CartScreenItem extends StatelessWidget {
  final String cartId,productId,title;
  final double price;
  final int quantity;
  CartScreenItem({this.cartId, this.price, this.title, this.quantity, this.productId});

  customText(String text,TextStyle styling){
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Text(text,style: styling,),
    );
  }
  @override
  Widget build(BuildContext context) {
    final productImage = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);
    return Dismissible(key: ValueKey(cartId),
       child: Card(
         elevation: 2,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
               children: [
                 Container(
                   width: 90.00,
                   height: 70.00,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image:NetworkImage(productImage.imageUrl),
                       fit: BoxFit.fill,
                     ),),),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     customText(title,TextStyle(fontSize: 30)),
                     customText("Qty: $quantity",TextStyle(fontSize: 13)),
                     customText("\$${price*quantity}",TextStyle(fontSize: 20)),
                   ],)],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  cart.removeLastItem(productId);
                }, icon:Icon(Icons.remove)),
                IconButton(onPressed: (){
                  cart.addItem(productId: productId,price: price,title: title);
                }, icon:Icon(Icons.add)),
              ],
            )
           ],),
       ),
    );
  }
}


    /*

      Dismissible(key: ValueKey(cartId),
      child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.indigo,
              child: Center(child: Text("Cart",style: TextStyle(color: Colors.white),)),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.grey,
              elevation: 3.0,
              child: Row(
                children: [
                  Container(
                      width: 100.00,
                      height: 120.00,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:NetworkImage(productImage),
                          fit: BoxFit.fill,
                        ),
                      ),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(title),
                      Text("Qty: $quantity"),
                      Text(price.toString()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    background: Container(
      child: Icon(Icons.delete),
    color: Theme.of(context).errorColor,
    ),
      confirmDismiss: (direction) {
        return  showDialog(context: context,
          builder: (context) => AlertDialog(
            elevation: 3.0,
            title: Text("Do you wanna delete this"),
            backgroundColor: Colors.black45,
            content: Text("Click Yes to continue to delete"),
            actions: [
              FlatButton(onPressed: (){
                Navigator.of(context).pop(true);
                }, child: Text("YES")),
              FlatButton(onPressed: (){
                Navigator.of(context).pop(false);
                }, child: Text("NO"))
            ],
          ),
        );
      },
    );
  }
}



     */