import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_morenope/datas/cart_product.dart';
import 'package:delivery_morenope/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';

class CartModel extends Model {
  UserModel user;

  List<CartDalenaProduct> productsDalena = [];
  List<CartDeliciaProduct> productsDelicia = [];
  List<CartPalhocaProduct> productsPalhoca = [];
  List<CartBoticarioProduct> productsBoticario = [];
  List<CartMinhaCoxinhaFavoritaProduct> productsMinhaCoxinhaFavorita = [];
  List<CartMagoEspetinhoProduct> productsMagoEspetinho = [];
  List<CartDindinProduct> productsDindin = [];
  List<CartLeChefProduct> productsLeChef = [];
  List<CartPizzaMaitaProduct> productsPizzaMaita = [];
  List<CartLojaJProduct> productsLojaJ = [];
  List<CartLojaLProduct> productsLojaL = [];
  List<CartLojaMProduct> productsLojaM = [];
  List<CartLojaNProduct> productsLojaN = [];
  List<CartLojaOProduct> productsLojaO = [];
  List<CartLojaPProduct> productsLojaP = [];

  String couponCode;
  int discountPercentage = 0;

  String observationText = 'Sem observações';

  //CartDalenaProduct get cartDalenaProduct => cartDalenaProduct;

  static CartModel of(BuildContext context) =>
      ScopedModel.of<CartModel>(context);

  CartModel(this.user);

  bool isLoading = false;

  void addCartDalenaItem(CartDalenaProduct cartDalenaProduct) {
    productsDalena.add(cartDalenaProduct);
  }

  void removeCartDalenaItem(CartDalenaProduct cartDalenaProduct) {
    productsDalena.remove(cartDalenaProduct);
  }

  void decDalenaProduct(CartDalenaProduct cartDalenaProduct) {
    cartDalenaProduct.quantity--;
  }

  void incDalenaProduct(CartDalenaProduct cartDalenaProduct) {
    cartDalenaProduct.quantity++;
  }

  void setCoupon(String couponCode, int discountPercentage) {
    this.couponCode = couponCode;
    this.discountPercentage = discountPercentage;
  }

  void updatePrice() {
    //função usada por todos os cartproducts
    notifyListeners();
  }

  void updateOrder() {
    notifyListeners();
  }

  void setObservation(String observationText) {
    this.observationText = observationText;
  }

  double getDalenaPrice() {
    double price = 0.0;
    for (CartDalenaProduct d in productsDalena) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getDalenaDiscount() {
    return getDalenaPrice() * discountPercentage / 100;
  }

  double getShipPrice() {
    //função usada por todos os cartproducts
    return 4.00;
  }

  String getObservation() {
    //função usada por todos os cartproducts
    return observationText;
  }

  Future<String> dalenaOrder() async {
    if (productsDalena.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsDalenaPrice = getDalenaPrice();
    double shipPrice = getShipPrice();
    double discountDalena = getDalenaDiscount();
    String observationText = getObservation();

    DocumentReference refOrderDalena =
        await Firestore.instance.collection('ordersDalena').add({
      'clienteId': user.firebaseUser.uid,
      'productsDalena': productsDalena
          .map((cartDalenaProduct) => cartDalenaProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsDalenaPrice': productsDalenaPrice,
      'discountDalena': discountDalena,
      'totalPrice': productsDalenaPrice - discountDalena + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersDalena')
        .document(refOrderDalena.documentID)
        .setData({'orderDalenaId': refOrderDalena.documentID});

    productsDalena.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderDalena.documentID;
  }

  /////////////////////////////////////////////////////////////////////

  void addCartDeliciaItem(CartDeliciaProduct cartDeliciaProduct) {
    productsDelicia.add(cartDeliciaProduct);
  }

  void removeCartDeliciaItem(CartDeliciaProduct cartDeliciaProduct) {
    productsDelicia.remove(cartDeliciaProduct);
  }

  void decDeliciaProduct(CartDeliciaProduct cartDeliciaProduct) {
    cartDeliciaProduct.quantity--;
  }

  void incDeliciaProduct(CartDeliciaProduct cartDeliciaProduct) {
    cartDeliciaProduct.quantity++;
  }

  double getDeliciaPrice() {
    double price = 0.0;
    for (CartDeliciaProduct d in productsDelicia) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getDeliciaDiscount() {
    return getDeliciaPrice() * discountPercentage / 100;
  }

  Future<String> deliciaOrder() async {
    if (productsDelicia.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsDeliciaPrice = getDeliciaPrice();
    double shipPrice = getShipPrice();
    double discountDelicia = getDeliciaDiscount();
    String observationText = getObservation();

    DocumentReference refOrderDelicia =
        await Firestore.instance.collection('ordersDelicia').add({
      'clienteId': user.firebaseUser.uid,
      'productsDelicia': productsDelicia
          .map((cartDeliciaProduct) => cartDeliciaProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsDeliciaPrice': productsDeliciaPrice,
      'discountDelicia': discountDelicia,
      'totalPrice': productsDeliciaPrice - discountDelicia + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersDelicia')
        .document(refOrderDelicia.documentID)
        .setData({'orderDeliciaId': refOrderDelicia.documentID});

    productsDelicia.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderDelicia.documentID;
  }

  //-----------------------------------------------

  void addCartPalhocaItem(CartPalhocaProduct cartPalhocaProduct) {
    productsPalhoca.add(cartPalhocaProduct);
  }

  void removeCartPalhocaItem(CartPalhocaProduct cartPalhocaProduct) {
    productsPalhoca.remove(cartPalhocaProduct);
  }

  void decPalhocaProduct(CartPalhocaProduct cartPalhocaProduct) {
    cartPalhocaProduct.quantity--;
  }

  void incPalhocaProduct(CartPalhocaProduct cartBoticarioProduct) {
    cartBoticarioProduct.quantity++;
  }

  double getPalhocaPrice() {
    double price = 0.0;
    for (CartPalhocaProduct d in productsPalhoca) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getPalhocaDiscount() {
    return getPalhocaPrice() * discountPercentage / 100;
  }

  Future<String> palhocaOrder() async {
    if (productsPalhoca.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsPalhocaPrice = getPalhocaPrice();
    double shipPrice = getShipPrice();
    double discountPalhoca = getPalhocaDiscount();
    String observationText = getObservation();

    DocumentReference refOrderPalhoca =
        await Firestore.instance.collection('ordersPalhoca').add({
      'clienteId': user.firebaseUser.uid,
      'productsPalhoca': productsPalhoca
          .map((cartPalhocaProduct) => cartPalhocaProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsPalhocaPrice': productsPalhocaPrice,
      'discountPalhoca': discountPalhoca,
      'totalPrice': productsPalhocaPrice - discountPalhoca + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersPalhoca')
        .document(refOrderPalhoca.documentID)
        .setData({'orderPalhocaId': refOrderPalhoca.documentID});

    productsPalhoca.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderPalhoca.documentID;
  }

  //-------------------------------------

  void addCartBoticarioItem(CartBoticarioProduct cartBoticarioProduct) {
    productsBoticario.add(cartBoticarioProduct);
  }

  void removeCartBoticarioItem(CartBoticarioProduct cartBoticarioProduct) {
    productsBoticario.remove(cartBoticarioProduct);
  }

  void decBoticarioProduct(CartBoticarioProduct cartBoticarioProduct) {
    cartBoticarioProduct.quantity--;
  }

  void incBoticarioProduct(CartBoticarioProduct cartBoticarioProduct) {
    cartBoticarioProduct.quantity++;
  }

  double getBoticarioPrice() {
    double price = 0.0;
    for (CartBoticarioProduct d in productsBoticario) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getBoticarioDiscount() {
    return getBoticarioPrice() * discountPercentage / 100;
  }

  Future<String> boticarioOrder() async {
    if (productsBoticario.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsBoticarioPrice = getBoticarioPrice();
    double shipPrice = getShipPrice();
    double discountBoticario = getBoticarioDiscount();
    String observationText = getObservation();

    DocumentReference refOrderBoticario =
        await Firestore.instance.collection('ordersBoticario').add({
      'clienteId': user.firebaseUser.uid,
      'productsBoticario': productsBoticario
          .map((cartBoticarioProduct) => cartBoticarioProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsBoticarioPrice': productsBoticarioPrice,
      'discountBoticario': discountBoticario,
      'totalPrice': productsBoticarioPrice - discountBoticario + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersBoticario')
        .document(refOrderBoticario.documentID)
        .setData({'orderBoticarioId': refOrderBoticario.documentID});

    productsBoticario.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderBoticario.documentID;
  }

  //------------------------------------------------------

  void addCartMinhaCoxinhaFavoritaItem(
      CartMinhaCoxinhaFavoritaProduct cartMinhaCoxinhaFavoritaProduct) {
    productsMinhaCoxinhaFavorita.add(cartMinhaCoxinhaFavoritaProduct);
  }

  void removeCartMinhaCoxinhaFavoritaItem(
      CartMinhaCoxinhaFavoritaProduct cartMinhaCoxinhaFavoritaProduct) {
    productsMinhaCoxinhaFavorita.remove(cartMinhaCoxinhaFavoritaProduct);
  }

  void decMinhaCoxinhaFavoritaProduct(
      CartMinhaCoxinhaFavoritaProduct cartMinhaCoxinhaFavoritaProduct) {
    cartMinhaCoxinhaFavoritaProduct.quantity--;
  }

  void incMinhaCoxinhaFavoritaProduct(
      CartMinhaCoxinhaFavoritaProduct cartMinhaCoxinhaFavoritaProduct) {
    cartMinhaCoxinhaFavoritaProduct.quantity++;
  }

  double getMinhaCoxinhaFavoritaPrice() {
    double price = 0.0;
    for (CartMinhaCoxinhaFavoritaProduct d in productsMinhaCoxinhaFavorita) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getMinhaCoxinhaFavoritaDiscount() {
    return getMinhaCoxinhaFavoritaPrice() * discountPercentage / 100;
  }

  Future<String> minhaCoxinhaFavoritaOrder() async {
    if (productsMinhaCoxinhaFavorita.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsMinhaCoxinhaFavoritaPrice = getMinhaCoxinhaFavoritaPrice();
    double shipPrice = getShipPrice();
    double discountMinhaCoxinhaFavorita = getMinhaCoxinhaFavoritaDiscount();
    String observationText = getObservation();

    DocumentReference refOrderMinhaCoxinhaFavorita =
        await Firestore.instance.collection('ordersMinhaCoxinhaFavorita').add({
      'clienteId': user.firebaseUser.uid,
      'productsMinhaCoxinhaFavorita': productsMinhaCoxinhaFavorita
          .map((cartMinhaCoxinhaFavoritaProduct) =>
              cartMinhaCoxinhaFavoritaProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsMinhaCoxinhaFavoritaPrice': productsMinhaCoxinhaFavoritaPrice,
      'discountMinhaCoxinhaFavorita': discountMinhaCoxinhaFavorita,
      'totalPrice': productsMinhaCoxinhaFavoritaPrice -
          discountMinhaCoxinhaFavorita +
          shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersMinhaCoxinhaFavorita')
        .document(refOrderMinhaCoxinhaFavorita.documentID)
        .setData({
      'orderMinhaCoxinhaFavoritaId': refOrderMinhaCoxinhaFavorita.documentID
    });

    productsMinhaCoxinhaFavorita.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderMinhaCoxinhaFavorita.documentID;
  }

  //----------------------------------------------------------------

  void addCartMagoEspetinhoItem(
      CartMagoEspetinhoProduct cartMagoEspetinhoProduct) {
    productsMagoEspetinho.add(cartMagoEspetinhoProduct);
  }

  void removeCartMagoEspetinhoItem(
      CartMagoEspetinhoProduct cartMagoEspetinhoProduct) {
    productsMagoEspetinho.remove(cartMagoEspetinhoProduct);
  }

  void decMagoEspetinhoProduct(
      CartMagoEspetinhoProduct cartMagoEspetinhoProduct) {
    cartMagoEspetinhoProduct.quantity--;
  }

  void incMagoEspetinhoProduct(
      CartMagoEspetinhoProduct cartMagoEspetinhoProduct) {
    cartMagoEspetinhoProduct.quantity++;
  }

  double getMagoEspetinhoPrice() {
    double price = 0.0;
    for (CartMagoEspetinhoProduct d in productsMagoEspetinho) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getMagoEspetinhoDiscount() {
    return getMagoEspetinhoPrice() * discountPercentage / 100;
  }

  Future<String> magoEspetinhoOrder() async {
    if (productsMagoEspetinho.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsMagoEspetinhoPrice = getMagoEspetinhoPrice();
    double shipPrice = getShipPrice();
    double discountMagoEspetinho = getMagoEspetinhoDiscount();
    String observationText = getObservation();

    DocumentReference refOrderMagoEspetinho =
        await Firestore.instance.collection('ordersMagoEspetinho').add({
      'clienteId': user.firebaseUser.uid,
      'productsMagoEspetinho': productsMagoEspetinho
          .map((cartMagoEspetinhoProduct) => cartMagoEspetinhoProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsMagoEspetinhoPrice': productsMagoEspetinhoPrice,
      'discountMagoEspetinho': discountMagoEspetinho,
      'totalPrice':
          productsMagoEspetinhoPrice - discountMagoEspetinho + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersMagoEspetinho')
        .document(refOrderMagoEspetinho.documentID)
        .setData({'orderMagoEspetinhoId': refOrderMagoEspetinho.documentID});

    productsMagoEspetinho.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderMagoEspetinho.documentID;
  }

  //-----------------------------------------------------------------------

  void addCartDindinItem(CartDindinProduct cartDindinProduct) {
    productsDindin.add(cartDindinProduct);
  }

  void removeCartDindinItem(CartDindinProduct cartDindinProduct) {
    productsDindin.remove(cartDindinProduct);
  }

  void decDindinProduct(CartDindinProduct cartDindinProduct) {
    cartDindinProduct.quantity--;
  }

  void incDindinProduct(CartDindinProduct cartDindinProduct) {
    cartDindinProduct.quantity++;
  }

  double getDindinPrice() {
    double price = 0.0;
    for (CartDindinProduct d in productsDindin) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getDindinDiscount() {
    return getDindinPrice() * discountPercentage / 100;
  }

  Future<String> dindinOrder() async {
    if (productsDindin.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsDindinPrice = getDindinPrice();
    double shipPrice = getShipPrice();
    double discountDindin = getDindinDiscount();
    String observationText = getObservation();

    DocumentReference refOrderDindin =
        await Firestore.instance.collection('ordersDindin').add({
      'clienteId': user.firebaseUser.uid,
      'productsDindin': productsDindin
          .map((cartDindinProduct) => cartDindinProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsDindinPrice': productsDindinPrice,
      'discountDindin': discountDindin,
      'totalPrice': productsDindinPrice - discountDindin + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersDindin')
        .document(refOrderDindin.documentID)
        .setData({'orderDindinId': refOrderDindin.documentID});

    productsDindin.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderDindin.documentID;
  }

  //-----------------------------------------------------------------

  void addCartLeChefItem(CartLeChefProduct cartLeChefProduct) {
    productsLeChef.add(cartLeChefProduct);
  }

  void removeCartLeChefItem(CartLeChefProduct cartLeChefProduct) {
    productsLeChef.remove(cartLeChefProduct);
  }

  void decLeChefProduct(CartLeChefProduct cartLeChefProduct) {
    cartLeChefProduct.quantity--;
  }

  void incLeChefProduct(CartLeChefProduct cartLeChefProduct) {
    cartLeChefProduct.quantity++;
  }

  double getLeChefPrice() {
    double price = 0.0;
    for (CartLeChefProduct d in productsLeChef) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getLeChefDiscount() {
    return getLeChefPrice() * discountPercentage / 100;
  }

  Future<String> leChefOrder() async {
    if (productsLeChef.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsLeChefPrice = getLeChefPrice();
    double shipPrice = getShipPrice();
    double discountLeChef = getLeChefDiscount();
    String observationText = getObservation();

    DocumentReference refOrderLeChef =
        await Firestore.instance.collection('ordersLeChef').add({
      'clienteId': user.firebaseUser.uid,
      'productsLeChef': productsLeChef
          .map((cartLeChefProduct) => cartLeChefProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsLeChefPrice': productsLeChefPrice,
      'discountLeChef': discountLeChef,
      'totalPrice': productsLeChefPrice - discountLeChef + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersLeChef')
        .document(refOrderLeChef.documentID)
        .setData({'orderLeChefId': refOrderLeChef.documentID});

    productsLeChef.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderLeChef.documentID;
  }

  //-------------------------------------------------------------

  void addCartPizzaMaitaItem(CartPizzaMaitaProduct cartPizzaMaitaProduct) {
    productsPizzaMaita.add(cartPizzaMaitaProduct);
  }

  void removeCartPizzaMaitaItem(CartPizzaMaitaProduct cartPizzaMaitaProduct) {
    productsPizzaMaita.remove(cartPizzaMaitaProduct);
  }

  void decPizzaMaitaProduct(CartPizzaMaitaProduct cartPizzaMaitaProduct) {
    cartPizzaMaitaProduct.quantity--;
  }

  void incPizzaMaitaProduct(CartPizzaMaitaProduct cartPizzaMaitaProduct) {
    cartPizzaMaitaProduct.quantity++;
  }

  double getPizzaMaitaPrice() {
    double price = 0.0;
    for (CartPizzaMaitaProduct d in productsPizzaMaita) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getPizzaMaitaDiscount() {
    return getPizzaMaitaPrice() * discountPercentage / 100;
  }

  Future<String> pizzaMaitaOrder() async {
    if (productsPizzaMaita.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsPizzaMaitaPrice = getPizzaMaitaPrice();
    double shipPrice = getShipPrice();
    double discount = getPizzaMaitaDiscount();
    String observationText = getObservation();

    DocumentReference refOrderPizzaMaita =
        await Firestore.instance.collection('ordersPizzaMaita').add({
      'clienteId': user.firebaseUser.uid,
      'productsPizzaMaita': productsPizzaMaita
          .map((cartPizzaMaitaProduct) => cartPizzaMaitaProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsPizzaMaitaPrice': productsPizzaMaitaPrice,
      'discount': discount,
      'totalPrice': productsPizzaMaitaPrice - discount + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersPizzaMaita')
        .document(refOrderPizzaMaita.documentID)
        .setData({'orderPizzaMaitaId': refOrderPizzaMaita.documentID});

    productsPizzaMaita.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderPizzaMaita.documentID;
  }

  //------------------------------------------------------------------

  void addCartLojaJItem(CartLojaJProduct cartLojaJProduct) {
    productsLojaJ.add(cartLojaJProduct);
  }

  void removeCartLojaJItem(CartLojaJProduct cartLojaJProduct) {
    productsLojaJ.remove(cartLojaJProduct);
  }

  void decLojaJProduct(CartLojaJProduct cartLojaJProduct) {
    cartLojaJProduct.quantity--;
  }

  void incLojaJProduct(CartLojaJProduct cartLojaJProduct) {
    cartLojaJProduct.quantity++;
  }

  double getLojaJPrice() {
    double price = 0.0;
    for (CartLojaJProduct d in productsLojaJ) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getLojaJDiscount() {
    return getLojaJPrice() * discountPercentage / 100;
  }

  Future<String> lojaJOrder() async {
    if (productsLojaJ.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsLojaJPrice = getLojaJPrice();
    double shipPrice = getShipPrice();
    double discount = getLojaJDiscount();
    String observationText = getObservation();

    DocumentReference refOrderLojaJ =
        await Firestore.instance.collection('ordersLojaJ').add({
      'clienteId': user.firebaseUser.uid,
      'productsLojaJ': productsLojaJ
          .map((cartLojaJProduct) => cartLojaJProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsLojaJPrice': productsLojaJPrice,
      'discount': discount,
      'totalPrice': productsLojaJPrice - discount + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersLojaJ')
        .document(refOrderLojaJ.documentID)
        .setData({'orderLojaJId': refOrderLojaJ.documentID});

    productsLojaJ.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderLojaJ.documentID;
  }

  //--------------------------------------------------

  void addCartLojaLItem(CartLojaLProduct cartLojaLProduct) {
    productsLojaL.add(cartLojaLProduct);
  }

  void removeCartLojaLItem(CartLojaLProduct cartLojaLProduct) {
    productsLojaL.remove(cartLojaLProduct);
  }

  void decLojaLProduct(CartLojaLProduct cartLojaLProduct) {
    cartLojaLProduct.quantity--;
  }

  void incLojaLProduct(CartLojaLProduct cartLojaLProduct) {
    cartLojaLProduct.quantity++;
  }

  double getLojaLPrice() {
    double price = 0.0;
    for (CartLojaLProduct d in productsLojaL) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getLojaLDiscount() {
    return getLojaLPrice() * discountPercentage / 100;
  }

  Future<String> lojaLOrder() async {
    if (productsLojaL.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsLojaLPrice = getLojaLPrice();
    double shipPrice = getShipPrice();
    double discount = getLojaLDiscount();
    String observationText = getObservation();

    DocumentReference refOrderLojaL =
        await Firestore.instance.collection('ordersLojaL').add({
      'clienteId': user.firebaseUser.uid,
      'productsLojaL': productsLojaL
          .map((cartLojaLProduct) => cartLojaLProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsLojaLPrice': productsLojaLPrice,
      'discount': discount,
      'totalPrice': productsLojaLPrice - discount + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersLojaL')
        .document(refOrderLojaL.documentID)
        .setData({'orderLojaLId': refOrderLojaL.documentID});

    productsLojaL.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderLojaL.documentID;
  }

  //-------------------------------------------------------------

  void addCartLojaMItem(CartLojaMProduct cartLojaMProduct) {
    productsLojaM.add(cartLojaMProduct);
  }

  void removeCartLojaMItem(CartLojaMProduct cartLojaMProduct) {
    productsLojaM.remove(cartLojaMProduct);
  }

  void decLojaMProduct(CartLojaMProduct cartLojaMProduct) {
    cartLojaMProduct.quantity--;
  }

  void incLojaMProduct(CartLojaMProduct cartLojaMProduct) {
    cartLojaMProduct.quantity++;
  }

  double getLojaMPrice() {
    double price = 0.0;
    for (CartLojaMProduct d in productsLojaM) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getLojaMDiscount() {
    return getLojaMPrice() * discountPercentage / 100;
  }

  Future<String> lojaMOrder() async {
    if (productsLojaM.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsLojaMPrice = getLojaMPrice();
    double shipPrice = getShipPrice();
    double discount = getLojaMDiscount();
    String observationText = getObservation();

    DocumentReference refOrderLojaM =
        await Firestore.instance.collection('ordersLojaM').add({
      'clienteId': user.firebaseUser.uid,
      'productsLojaM': productsLojaM
          .map((cartLojaMProduct) => cartLojaMProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsLojaMPrice': productsLojaMPrice,
      'discount': discount,
      'totalPrice': productsLojaMPrice - discount + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersLojaM')
        .document(refOrderLojaM.documentID)
        .setData({'orderLojaMId': refOrderLojaM.documentID});

    productsLojaM.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderLojaM.documentID;
  }

  //----------------------------------------------------

  void addCartLojaNItem(CartLojaNProduct cartLojaNProduct) {
    productsLojaN.add(cartLojaNProduct);
  }

  void removeCartLojaNItem(CartLojaNProduct cartLojaNProduct) {
    productsLojaN.remove(cartLojaNProduct);
  }

  void decLojaNProduct(CartLojaNProduct cartLojaNProduct) {
    cartLojaNProduct.quantity--;
  }

  void incLojaNProduct(CartLojaNProduct cartLojaNProduct) {
    cartLojaNProduct.quantity++;
  }

  double getLojaNPrice() {
    double price = 0.0;
    for (CartLojaNProduct d in productsLojaN) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getLojaNDiscount() {
    return getLojaNPrice() * discountPercentage / 100;
  }

  Future<String> lojaNOrder() async {
    if (productsLojaN.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsLojaNPrice = getLojaNPrice();
    double shipPrice = getShipPrice();
    double discount = getLojaNDiscount();
    String observationText = getObservation();

    DocumentReference refOrderLojaN =
        await Firestore.instance.collection('ordersLojaN').add({
      'clienteId': user.firebaseUser.uid,
      'productsLojaN': productsLojaN
          .map((cartLojaNProduct) => cartLojaNProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsLojaNPrice': productsLojaNPrice,
      'discount': discount,
      'totalPrice': productsLojaNPrice - discount + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersLojaN')
        .document(refOrderLojaN.documentID)
        .setData({'orderLojaNId': refOrderLojaN.documentID});

    productsLojaN.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderLojaN.documentID;
  }

  //----------------------------------------------------

  void addCartLojaOItem(CartLojaOProduct cartLojaOProduct) {
    productsLojaO.add(cartLojaOProduct);
  }

  void removeCartLojaOItem(CartLojaOProduct cartLojaOProduct) {
    productsLojaO.remove(cartLojaOProduct);
  }

  void decLojaOProduct(CartLojaOProduct cartLojaOProduct) {
    cartLojaOProduct.quantity--;
  }

  void incLojaOProduct(CartLojaOProduct cartLojaOProduct) {
    cartLojaOProduct.quantity++;
  }

  double getLojaOPrice() {
    double price = 0.0;
    for (CartLojaOProduct d in productsLojaO) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getLojaODiscount() {
    return getLojaOPrice() * discountPercentage / 100;
  }

  Future<String> lojaOOrder() async {
    if (productsLojaO.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsLojaOPrice = getLojaOPrice();
    double shipPrice = getShipPrice();
    double discount = getLojaODiscount();
    String observationText = getObservation();

    DocumentReference refOrderLojaO =
        await Firestore.instance.collection('ordersLojaO').add({
      'clienteId': user.firebaseUser.uid,
      'productsLojaO': productsLojaO
          .map((cartLojaOProduct) => cartLojaOProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsLojaOPrice': productsLojaOPrice,
      'discount': discount,
      'totalPrice': productsLojaOPrice - discount + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersLojaO')
        .document(refOrderLojaO.documentID)
        .setData({'orderLojaOId': refOrderLojaO.documentID});

    productsLojaO.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderLojaO.documentID;
  }

  //----------------------------------------------------

  void addCartLojaPItem(CartLojaPProduct cartLojaPProduct) {
    productsLojaP.add(cartLojaPProduct);
  }

  void removeCartLojaPItem(CartLojaPProduct cartLojaPProduct) {
    productsLojaP.remove(cartLojaPProduct);
  }

  void decLojaPProduct(CartLojaPProduct cartLojaPProduct) {
    cartLojaPProduct.quantity--;
  }

  void incLojaPProduct(CartLojaPProduct cartLojaPProduct) {
    cartLojaPProduct.quantity++;
  }

  double getLojaPPrice() {
    double price = 0.0;
    for (CartLojaPProduct d in productsLojaP) {
      if (d.productData != null) price += d.quantity * d.productData.price;
    }
    return price;
  }

  double getLojaPDiscount() {
    return getLojaPPrice() * discountPercentage / 100;
  }

  Future<String> lojaPOrder() async {
    if (productsLojaP.length == 0) return null;

    isLoading = true;
    notifyListeners();

    double productsLojaPPrice = getLojaPPrice();
    double shipPrice = getShipPrice();
    double discount = getLojaPDiscount();
    String observationText = getObservation();

    DocumentReference refOrderLojaP =
        await Firestore.instance.collection('ordersLojaP').add({
      'clienteId': user.firebaseUser.uid,
      'productsLojaP': productsLojaP
          .map((cartLojaPProduct) => cartLojaPProduct.toMap())
          .toList(),
      'shipPrice': shipPrice,
      'productsLojaPPrice': productsLojaPPrice,
      'discount': discount,
      'totalPrice': productsLojaPPrice - discount + shipPrice,
      'observações': observationText,
      'status': 1
    });

    await Firestore.instance
        .collection('users')
        .document(user.firebaseUser.uid)
        .collection('ordersLojaP')
        .document(refOrderLojaP.documentID)
        .setData({'orderLojaPId': refOrderLojaP.documentID});

    productsLojaP.clear();

    couponCode = null;
    discountPercentage = 0;

    isLoading = false;
    notifyListeners();

    return refOrderLojaP.documentID;
  }
}
