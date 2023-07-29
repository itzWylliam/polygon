/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the User type in your schema. */
class User extends amplify_core.Model {
  static const classType = const _UserModelType();
  final String id;
  final String? _email;
  final String? _phone_number;
  final String? _first_name;
  final String? _last_name;
  final String? _nickname;
  final String? _password;
  final bool? _email_verified;
  final String? _cognito_ID;
  final bool? _active;
  final bool? _verified;
  final AuthMethod? _auth_method;
  final List<Message>? _messages;
  final List<Auction>? _auctions;
  final List<Bid>? _bids;
  final List<ChatMembers>? _chats;
  final List<UserChatOwner>? _ownedChats;
  final List<Item>? _currentItemOwner;
  final List<Comment>? _ownedComments;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UserModelIdentifier get modelIdentifier {
      return UserModelIdentifier(
        id: id
      );
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get phone_number {
    try {
      return _phone_number!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get first_name {
    try {
      return _first_name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get last_name {
    try {
      return _last_name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get nickname {
    return _nickname;
  }
  
  String? get password {
    return _password;
  }
  
  bool get email_verified {
    try {
      return _email_verified!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get cognito_ID {
    try {
      return _cognito_ID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool get active {
    try {
      return _active!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool get verified {
    try {
      return _verified!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  AuthMethod get auth_method {
    try {
      return _auth_method!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Message>? get messages {
    return _messages;
  }
  
  List<Auction>? get auctions {
    return _auctions;
  }
  
  List<Bid>? get bids {
    return _bids;
  }
  
  List<ChatMembers>? get chats {
    return _chats;
  }
  
  List<UserChatOwner>? get ownedChats {
    return _ownedChats;
  }
  
  List<Item>? get currentItemOwner {
    return _currentItemOwner;
  }
  
  List<Comment>? get ownedComments {
    return _ownedComments;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const User._internal({required this.id, required email, required phone_number, required first_name, required last_name, nickname, password, required email_verified, required cognito_ID, required active, required verified, required auth_method, messages, auctions, bids, chats, ownedChats, currentItemOwner, ownedComments, createdAt, updatedAt}): _email = email, _phone_number = phone_number, _first_name = first_name, _last_name = last_name, _nickname = nickname, _password = password, _email_verified = email_verified, _cognito_ID = cognito_ID, _active = active, _verified = verified, _auth_method = auth_method, _messages = messages, _auctions = auctions, _bids = bids, _chats = chats, _ownedChats = ownedChats, _currentItemOwner = currentItemOwner, _ownedComments = ownedComments, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory User({String? id, required String email, required String phone_number, required String first_name, required String last_name, String? nickname, String? password, required bool email_verified, required String cognito_ID, required bool active, required bool verified, required AuthMethod auth_method, List<Message>? messages, List<Auction>? auctions, List<Bid>? bids, List<ChatMembers>? chats, List<UserChatOwner>? ownedChats, List<Item>? currentItemOwner, List<Comment>? ownedComments}) {
    return User._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      email: email,
      phone_number: phone_number,
      first_name: first_name,
      last_name: last_name,
      nickname: nickname,
      password: password,
      email_verified: email_verified,
      cognito_ID: cognito_ID,
      active: active,
      verified: verified,
      auth_method: auth_method,
      messages: messages != null ? List<Message>.unmodifiable(messages) : messages,
      auctions: auctions != null ? List<Auction>.unmodifiable(auctions) : auctions,
      bids: bids != null ? List<Bid>.unmodifiable(bids) : bids,
      chats: chats != null ? List<ChatMembers>.unmodifiable(chats) : chats,
      ownedChats: ownedChats != null ? List<UserChatOwner>.unmodifiable(ownedChats) : ownedChats,
      currentItemOwner: currentItemOwner != null ? List<Item>.unmodifiable(currentItemOwner) : currentItemOwner,
      ownedComments: ownedComments != null ? List<Comment>.unmodifiable(ownedComments) : ownedComments);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
      id == other.id &&
      _email == other._email &&
      _phone_number == other._phone_number &&
      _first_name == other._first_name &&
      _last_name == other._last_name &&
      _nickname == other._nickname &&
      _password == other._password &&
      _email_verified == other._email_verified &&
      _cognito_ID == other._cognito_ID &&
      _active == other._active &&
      _verified == other._verified &&
      _auth_method == other._auth_method &&
      DeepCollectionEquality().equals(_messages, other._messages) &&
      DeepCollectionEquality().equals(_auctions, other._auctions) &&
      DeepCollectionEquality().equals(_bids, other._bids) &&
      DeepCollectionEquality().equals(_chats, other._chats) &&
      DeepCollectionEquality().equals(_ownedChats, other._ownedChats) &&
      DeepCollectionEquality().equals(_currentItemOwner, other._currentItemOwner) &&
      DeepCollectionEquality().equals(_ownedComments, other._ownedComments);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("phone_number=" + "$_phone_number" + ", ");
    buffer.write("first_name=" + "$_first_name" + ", ");
    buffer.write("last_name=" + "$_last_name" + ", ");
    buffer.write("nickname=" + "$_nickname" + ", ");
    buffer.write("password=" + "$_password" + ", ");
    buffer.write("email_verified=" + (_email_verified != null ? _email_verified!.toString() : "null") + ", ");
    buffer.write("cognito_ID=" + "$_cognito_ID" + ", ");
    buffer.write("active=" + (_active != null ? _active!.toString() : "null") + ", ");
    buffer.write("verified=" + (_verified != null ? _verified!.toString() : "null") + ", ");
    buffer.write("auth_method=" + (_auth_method != null ? amplify_core.enumToString(_auth_method)! : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  User copyWith({String? email, String? phone_number, String? first_name, String? last_name, String? nickname, String? password, bool? email_verified, String? cognito_ID, bool? active, bool? verified, AuthMethod? auth_method, List<Message>? messages, List<Auction>? auctions, List<Bid>? bids, List<ChatMembers>? chats, List<UserChatOwner>? ownedChats, List<Item>? currentItemOwner, List<Comment>? ownedComments}) {
    return User._internal(
      id: id,
      email: email ?? this.email,
      phone_number: phone_number ?? this.phone_number,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      nickname: nickname ?? this.nickname,
      password: password ?? this.password,
      email_verified: email_verified ?? this.email_verified,
      cognito_ID: cognito_ID ?? this.cognito_ID,
      active: active ?? this.active,
      verified: verified ?? this.verified,
      auth_method: auth_method ?? this.auth_method,
      messages: messages ?? this.messages,
      auctions: auctions ?? this.auctions,
      bids: bids ?? this.bids,
      chats: chats ?? this.chats,
      ownedChats: ownedChats ?? this.ownedChats,
      currentItemOwner: currentItemOwner ?? this.currentItemOwner,
      ownedComments: ownedComments ?? this.ownedComments);
  }
  
  User copyWithModelFieldValues({
    ModelFieldValue<String>? email,
    ModelFieldValue<String>? phone_number,
    ModelFieldValue<String>? first_name,
    ModelFieldValue<String>? last_name,
    ModelFieldValue<String?>? nickname,
    ModelFieldValue<String?>? password,
    ModelFieldValue<bool>? email_verified,
    ModelFieldValue<String>? cognito_ID,
    ModelFieldValue<bool>? active,
    ModelFieldValue<bool>? verified,
    ModelFieldValue<AuthMethod>? auth_method,
    ModelFieldValue<List<Message>>? messages,
    ModelFieldValue<List<Auction>>? auctions,
    ModelFieldValue<List<Bid>>? bids,
    ModelFieldValue<List<ChatMembers>>? chats,
    ModelFieldValue<List<UserChatOwner>>? ownedChats,
    ModelFieldValue<List<Item>>? currentItemOwner,
    ModelFieldValue<List<Comment>>? ownedComments
  }) {
    return User._internal(
      id: id,
      email: email == null ? this.email : email.value,
      phone_number: phone_number == null ? this.phone_number : phone_number.value,
      first_name: first_name == null ? this.first_name : first_name.value,
      last_name: last_name == null ? this.last_name : last_name.value,
      nickname: nickname == null ? this.nickname : nickname.value,
      password: password == null ? this.password : password.value,
      email_verified: email_verified == null ? this.email_verified : email_verified.value,
      cognito_ID: cognito_ID == null ? this.cognito_ID : cognito_ID.value,
      active: active == null ? this.active : active.value,
      verified: verified == null ? this.verified : verified.value,
      auth_method: auth_method == null ? this.auth_method : auth_method.value,
      messages: messages == null ? this.messages : messages.value,
      auctions: auctions == null ? this.auctions : auctions.value,
      bids: bids == null ? this.bids : bids.value,
      chats: chats == null ? this.chats : chats.value,
      ownedChats: ownedChats == null ? this.ownedChats : ownedChats.value,
      currentItemOwner: currentItemOwner == null ? this.currentItemOwner : currentItemOwner.value,
      ownedComments: ownedComments == null ? this.ownedComments : ownedComments.value
    );
  }
  
  User.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _email = json['email'],
      _phone_number = json['phone_number'],
      _first_name = json['first_name'],
      _last_name = json['last_name'],
      _nickname = json['nickname'],
      _password = json['password'],
      _email_verified = json['email_verified'],
      _cognito_ID = json['cognito_ID'],
      _active = json['active'],
      _verified = json['verified'],
      _auth_method = amplify_core.enumFromString<AuthMethod>(json['auth_method'], AuthMethod.values),
      _messages = json['messages'] is List
        ? (json['messages'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Message.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _auctions = json['auctions'] is List
        ? (json['auctions'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Auction.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _bids = json['bids'] is List
        ? (json['bids'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Bid.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _chats = json['chats'] is List
        ? (json['chats'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ChatMembers.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _ownedChats = json['ownedChats'] is List
        ? (json['ownedChats'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserChatOwner.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _currentItemOwner = json['currentItemOwner'] is List
        ? (json['currentItemOwner'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Item.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _ownedComments = json['ownedComments'] is List
        ? (json['ownedComments'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Comment.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'email': _email, 'phone_number': _phone_number, 'first_name': _first_name, 'last_name': _last_name, 'nickname': _nickname, 'password': _password, 'email_verified': _email_verified, 'cognito_ID': _cognito_ID, 'active': _active, 'verified': _verified, 'auth_method': amplify_core.enumToString(_auth_method), 'messages': _messages?.map((Message? e) => e?.toJson()).toList(), 'auctions': _auctions?.map((Auction? e) => e?.toJson()).toList(), 'bids': _bids?.map((Bid? e) => e?.toJson()).toList(), 'chats': _chats?.map((ChatMembers? e) => e?.toJson()).toList(), 'ownedChats': _ownedChats?.map((UserChatOwner? e) => e?.toJson()).toList(), 'currentItemOwner': _currentItemOwner?.map((Item? e) => e?.toJson()).toList(), 'ownedComments': _ownedComments?.map((Comment? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'email': _email,
    'phone_number': _phone_number,
    'first_name': _first_name,
    'last_name': _last_name,
    'nickname': _nickname,
    'password': _password,
    'email_verified': _email_verified,
    'cognito_ID': _cognito_ID,
    'active': _active,
    'verified': _verified,
    'auth_method': _auth_method,
    'messages': _messages,
    'auctions': _auctions,
    'bids': _bids,
    'chats': _chats,
    'ownedChats': _ownedChats,
    'currentItemOwner': _currentItemOwner,
    'ownedComments': _ownedComments,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<UserModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<UserModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final PHONE_NUMBER = amplify_core.QueryField(fieldName: "phone_number");
  static final FIRST_NAME = amplify_core.QueryField(fieldName: "first_name");
  static final LAST_NAME = amplify_core.QueryField(fieldName: "last_name");
  static final NICKNAME = amplify_core.QueryField(fieldName: "nickname");
  static final PASSWORD = amplify_core.QueryField(fieldName: "password");
  static final EMAIL_VERIFIED = amplify_core.QueryField(fieldName: "email_verified");
  static final COGNITO_ID = amplify_core.QueryField(fieldName: "cognito_ID");
  static final ACTIVE = amplify_core.QueryField(fieldName: "active");
  static final VERIFIED = amplify_core.QueryField(fieldName: "verified");
  static final AUTH_METHOD = amplify_core.QueryField(fieldName: "auth_method");
  static final MESSAGES = amplify_core.QueryField(
    fieldName: "messages",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Message'));
  static final AUCTIONS = amplify_core.QueryField(
    fieldName: "auctions",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Auction'));
  static final BIDS = amplify_core.QueryField(
    fieldName: "bids",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Bid'));
  static final CHATS = amplify_core.QueryField(
    fieldName: "chats",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ChatMembers'));
  static final OWNEDCHATS = amplify_core.QueryField(
    fieldName: "ownedChats",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'UserChatOwner'));
  static final CURRENTITEMOWNER = amplify_core.QueryField(
    fieldName: "currentItemOwner",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Item'));
  static final OWNEDCOMMENTS = amplify_core.QueryField(
    fieldName: "ownedComments",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Comment'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PRIVATE,
        operations: const [
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "cognito_ID",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.CREATE
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.PHONE_NUMBER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.FIRST_NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.LAST_NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.NICKNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.PASSWORD,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.EMAIL_VERIFIED,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.COGNITO_ID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.ACTIVE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.VERIFIED,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.AUTH_METHOD,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.MESSAGES,
      isRequired: true,
      ofModelName: 'Message',
      associatedKey: Message.AUTHOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.AUCTIONS,
      isRequired: true,
      ofModelName: 'Auction',
      associatedKey: Auction.HOSTUSER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.BIDS,
      isRequired: true,
      ofModelName: 'Bid',
      associatedKey: Bid.BIDDER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CHATS,
      isRequired: true,
      ofModelName: 'ChatMembers',
      associatedKey: ChatMembers.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.OWNEDCHATS,
      isRequired: true,
      ofModelName: 'UserChatOwner',
      associatedKey: UserChatOwner.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CURRENTITEMOWNER,
      isRequired: true,
      ofModelName: 'Item',
      associatedKey: Item.CURRENTOWNERUSER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.OWNEDCOMMENTS,
      isRequired: true,
      ofModelName: 'Comment',
      associatedKey: Comment.AUTHOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _UserModelType extends amplify_core.ModelType<User> {
  const _UserModelType();
  
  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'User';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [User] in your schema.
 */
class UserModelIdentifier implements amplify_core.ModelIdentifier<User> {
  final String id;

  /** Create an instance of UserModelIdentifier using [id] the primary key. */
  const UserModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'UserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}