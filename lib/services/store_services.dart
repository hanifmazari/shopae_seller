import 'package:shopae_seller/const/firebase_const.dart';

class StoreService {
  static getProfile(uid) {
    return firestore
        .collection(vendorsCollection)
        .where('id', isEqualTo: uid)
        .get();
  }
}
