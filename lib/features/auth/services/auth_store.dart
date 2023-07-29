import 'dart:js_interop';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polygon/features/auth/controllers/model/signup_entry_model.dart';
import 'package:polygon/models/ModelProvider.dart';
import 'package:polygon/models/User.dart';

final authStoreProvider = Provider<AuthStore>((ref) {
  final authStore = AuthStore();
  return authStore;
});

class AuthStore {
  AuthStore();

  Future<void> saveOwner() async {
    // final newOwner = Ownership(possessed: true, possessAt: , item: item, ownerUser: ownerUser, ownershipOwnerUserId: ownershipOwnerUserId)

    // try {
    //   await Amplify.DataStore.save(newOwner);
    // } on DataStoreException catch (e) {
    //   print("ERROR: ${e}");
    // }
  }

  Future<void> saveUser({
    required SignUpEntry userEntry,
    required String cognitoID,
    required AuthMethod method,
  }) async {
    final newUser = User(
      email: userEntry.email,
      phone_number: userEntry.phoneNum,
      first_name: userEntry.givenName,
      last_name: userEntry.lastName,
      auth_method: AuthMethod.MANUAL,
      nickname: userEntry.nickname,
      verified: method == AuthMethod.GOOGLE ? true : false,
      cognito_ID: cognitoID,
      email_verified: false,
      active: true,
    );

    try {
      safePrint("Amplify Datastore Saving newUser...");
      await Amplify.DataStore.save(newUser).then((value) {
        safePrint("datastore saving: ${newUser}");
      });
    } on DataStoreException catch (e) {
      safePrint('Something went wrong saving model: ${e.message}');
    }
  }

  Future<bool> checkUserStore(String userCognitoID) async {
    final user = await Amplify.DataStore.query(
      User.classType,
      where: User.COGNITO_ID.eq(userCognitoID),
    );

    safePrint(user);
    return false;
  }

  Future<void> updateUser({
    required String cognito_id,
    String? newPassword,
    String? newFamilName,
    String? newGivenName,
    String? newPhoneNumber,
    String? newEmail,
  }) async {}

  Future<void> verifyUser({required String cognito_id}) async {
    final oldUser = (await Amplify.DataStore.query(User.classType,
            where: User.COGNITO_ID.eq(cognito_id)))
        .first;

    final newUser = oldUser.copyWith(
      verified: true,
    );

    try {
      await Amplify.DataStore.save(newUser);
    } on DataStoreException catch (e) {
      safePrint('Something went wrong updating model: ${e.message}');
    }
  }

  Future<void> deleteUser({required String cognito_id}) async {
    final pendingUser = (await Amplify.DataStore.query(User.classType,
            where: User.COGNITO_ID.eq(cognito_id)))
        .first;

    try {
      await Amplify.DataStore.delete(pendingUser);
    } on DataStoreException catch (e) {
      safePrint('Something went wrong deleting model: ${e.message}');
    }
  }
}
