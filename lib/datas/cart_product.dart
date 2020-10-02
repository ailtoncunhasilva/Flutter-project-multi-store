import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_morenope/datas/product_data.dart';

class CartDalenaProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartDalenaProduct();

  CartDalenaProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}
//------------------------------
class CartDeliciaProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartDeliciaProduct();

  CartDeliciaProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//---------------------------------------------------

class CartPalhocaProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartPalhocaProduct();

  CartPalhocaProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//------------------------------------------------------------

class CartBoticarioProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartBoticarioProduct();

  CartBoticarioProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//---------------------------------------------------------

class CartMinhaCoxinhaFavoritaProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartMinhaCoxinhaFavoritaProduct();

  CartMinhaCoxinhaFavoritaProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

class CartMagoEspetinhoProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartMagoEspetinhoProduct();

  CartMagoEspetinhoProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//----------------------------------------------

class CartDindinProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartDindinProduct();

  CartDindinProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//-------------------------------------------------------

class CartLeChefProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartLeChefProduct();

  CartLeChefProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//-----------------------------------------------------

class CartPizzaMaitaProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartPizzaMaitaProduct();

  CartPizzaMaitaProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//-----------------------------------------------------------

class CartLojaJProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartLojaJProduct();

  CartLojaJProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//--------------------------------------------------

class CartLojaLProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartLojaLProduct();

  CartLojaLProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//---------------------------------------------------------

class CartLojaMProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartLojaMProduct();

  CartLojaMProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//------------------------------------------------------

class CartLojaNProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartLojaNProduct();

  CartLojaNProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//--------------------------------------------------

class CartLojaOProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartLojaOProduct();

  CartLojaOProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}

//-------------------------------------------------------

class CartLojaPProduct{

  String cid;

  String pid;

  int quantity;

  ProductData productData;

  CartLojaPProduct();

  CartLojaPProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data['pid'];
    quantity = document.data['quantity'];
  }

  Map<String, dynamic> toMap(){
    return {
      'pid': pid,
      'quantity': quantity,
      'product': productData.toResumedMap()
    };
  }
}
