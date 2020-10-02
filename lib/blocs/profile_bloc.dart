import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_morenope/models/user_model.dart';
import 'package:rxdart/rxdart.dart';

class ProfileBloc extends BlocBase {
  final _dataController = BehaviorSubject<Map>();
  final _loadingController = BehaviorSubject<bool>();

  Stream<Map> get outData => _dataController.stream;
  Stream<bool> get outLoading => _loadingController.stream;

  UserModel model;

  Map<String, dynamic> unsavedData;

  ProfileBloc(this.model) {
    unsavedData = Map.of(model.userData);

    _dataController.add(unsavedData);
  }

  void saveName(String name) {
    unsavedData['name'] = name;
  }

  void saveEmail(String email) {
    unsavedData['email'] = email;
  }

  void savePhone(String phone) {
    unsavedData['phone'] = phone;
  }

  void saveAdress(String adress) {
    unsavedData['adress'] = adress;
  }

  Future<bool> saveProfile(context) async {
    _loadingController.add(true);

    await Firestore.instance
        .collection('users')
        .document(model.firebaseUser.uid)
        .updateData(unsavedData);

    _loadingController.add(false);
    return true;
    
  }

  @override
  void dispose() {
    _dataController.close();
    _loadingController.close();
  }
}
