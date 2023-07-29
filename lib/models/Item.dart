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


/** This is an auto generated class representing the Item type in your schema. */
class Item extends amplify_core.Model {
  static const classType = const _ItemModelType();
  final String id;
  final String? _title;
  final Content? _description;
  final double? _base_price;
  final amplify_core.TemporalDateTime? _uploadedAt;
  final Category? _category;
  final List<ItemAuction>? _AuctionHistory;
  final List<PostOnItem>? _posts;
  final List<Comment>? _comments;
  final List<Ownership>? _ownerships;
  final String? _currentOwnerUser;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ItemModelIdentifier get modelIdentifier {
      return ItemModelIdentifier(
        id: id
      );
  }
  
  String get title {
    try {
      return _title!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Content get description {
    try {
      return _description!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get base_price {
    try {
      return _base_price!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get uploadedAt {
    try {
      return _uploadedAt!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Category get category {
    try {
      return _category!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<ItemAuction>? get AuctionHistory {
    return _AuctionHistory;
  }
  
  List<PostOnItem>? get posts {
    return _posts;
  }
  
  List<Comment>? get comments {
    return _comments;
  }
  
  List<Ownership>? get ownerships {
    return _ownerships;
  }
  
  String get currentOwnerUser {
    try {
      return _currentOwnerUser!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Item._internal({required this.id, required title, required description, required base_price, required uploadedAt, required category, AuctionHistory, posts, comments, ownerships, required currentOwnerUser, createdAt, updatedAt}): _title = title, _description = description, _base_price = base_price, _uploadedAt = uploadedAt, _category = category, _AuctionHistory = AuctionHistory, _posts = posts, _comments = comments, _ownerships = ownerships, _currentOwnerUser = currentOwnerUser, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Item({String? id, required String title, required Content description, required double base_price, required amplify_core.TemporalDateTime uploadedAt, required Category category, List<ItemAuction>? AuctionHistory, List<PostOnItem>? posts, List<Comment>? comments, List<Ownership>? ownerships, required String currentOwnerUser}) {
    return Item._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      title: title,
      description: description,
      base_price: base_price,
      uploadedAt: uploadedAt,
      category: category,
      AuctionHistory: AuctionHistory != null ? List<ItemAuction>.unmodifiable(AuctionHistory) : AuctionHistory,
      posts: posts != null ? List<PostOnItem>.unmodifiable(posts) : posts,
      comments: comments != null ? List<Comment>.unmodifiable(comments) : comments,
      ownerships: ownerships != null ? List<Ownership>.unmodifiable(ownerships) : ownerships,
      currentOwnerUser: currentOwnerUser);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Item &&
      id == other.id &&
      _title == other._title &&
      _description == other._description &&
      _base_price == other._base_price &&
      _uploadedAt == other._uploadedAt &&
      _category == other._category &&
      DeepCollectionEquality().equals(_AuctionHistory, other._AuctionHistory) &&
      DeepCollectionEquality().equals(_posts, other._posts) &&
      DeepCollectionEquality().equals(_comments, other._comments) &&
      DeepCollectionEquality().equals(_ownerships, other._ownerships) &&
      _currentOwnerUser == other._currentOwnerUser;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Item {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("description=" + (_description != null ? _description!.toString() : "null") + ", ");
    buffer.write("base_price=" + (_base_price != null ? _base_price!.toString() : "null") + ", ");
    buffer.write("uploadedAt=" + (_uploadedAt != null ? _uploadedAt!.format() : "null") + ", ");
    buffer.write("category=" + (_category != null ? amplify_core.enumToString(_category)! : "null") + ", ");
    buffer.write("currentOwnerUser=" + "$_currentOwnerUser" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Item copyWith({String? title, Content? description, double? base_price, amplify_core.TemporalDateTime? uploadedAt, Category? category, List<ItemAuction>? AuctionHistory, List<PostOnItem>? posts, List<Comment>? comments, List<Ownership>? ownerships, String? currentOwnerUser}) {
    return Item._internal(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      base_price: base_price ?? this.base_price,
      uploadedAt: uploadedAt ?? this.uploadedAt,
      category: category ?? this.category,
      AuctionHistory: AuctionHistory ?? this.AuctionHistory,
      posts: posts ?? this.posts,
      comments: comments ?? this.comments,
      ownerships: ownerships ?? this.ownerships,
      currentOwnerUser: currentOwnerUser ?? this.currentOwnerUser);
  }
  
  Item copyWithModelFieldValues({
    ModelFieldValue<String>? title,
    ModelFieldValue<Content>? description,
    ModelFieldValue<double>? base_price,
    ModelFieldValue<amplify_core.TemporalDateTime>? uploadedAt,
    ModelFieldValue<Category>? category,
    ModelFieldValue<List<ItemAuction>>? AuctionHistory,
    ModelFieldValue<List<PostOnItem>>? posts,
    ModelFieldValue<List<Comment>>? comments,
    ModelFieldValue<List<Ownership>>? ownerships,
    ModelFieldValue<String>? currentOwnerUser
  }) {
    return Item._internal(
      id: id,
      title: title == null ? this.title : title.value,
      description: description == null ? this.description : description.value,
      base_price: base_price == null ? this.base_price : base_price.value,
      uploadedAt: uploadedAt == null ? this.uploadedAt : uploadedAt.value,
      category: category == null ? this.category : category.value,
      AuctionHistory: AuctionHistory == null ? this.AuctionHistory : AuctionHistory.value,
      posts: posts == null ? this.posts : posts.value,
      comments: comments == null ? this.comments : comments.value,
      ownerships: ownerships == null ? this.ownerships : ownerships.value,
      currentOwnerUser: currentOwnerUser == null ? this.currentOwnerUser : currentOwnerUser.value
    );
  }
  
  Item.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _description = json['description']?['serializedData'] != null
        ? Content.fromJson(new Map<String, dynamic>.from(json['description']['serializedData']))
        : null,
      _base_price = (json['base_price'] as num?)?.toDouble(),
      _uploadedAt = json['uploadedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['uploadedAt']) : null,
      _category = amplify_core.enumFromString<Category>(json['category'], Category.values),
      _AuctionHistory = json['AuctionHistory'] is List
        ? (json['AuctionHistory'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ItemAuction.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _posts = json['posts'] is List
        ? (json['posts'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => PostOnItem.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _comments = json['comments'] is List
        ? (json['comments'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Comment.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _ownerships = json['ownerships'] is List
        ? (json['ownerships'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Ownership.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _currentOwnerUser = json['currentOwnerUser'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'description': _description?.toJson(), 'base_price': _base_price, 'uploadedAt': _uploadedAt?.format(), 'category': amplify_core.enumToString(_category), 'AuctionHistory': _AuctionHistory?.map((ItemAuction? e) => e?.toJson()).toList(), 'posts': _posts?.map((PostOnItem? e) => e?.toJson()).toList(), 'comments': _comments?.map((Comment? e) => e?.toJson()).toList(), 'ownerships': _ownerships?.map((Ownership? e) => e?.toJson()).toList(), 'currentOwnerUser': _currentOwnerUser, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'title': _title,
    'description': _description,
    'base_price': _base_price,
    'uploadedAt': _uploadedAt,
    'category': _category,
    'AuctionHistory': _AuctionHistory,
    'posts': _posts,
    'comments': _comments,
    'ownerships': _ownerships,
    'currentOwnerUser': _currentOwnerUser,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ItemModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ItemModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final BASE_PRICE = amplify_core.QueryField(fieldName: "base_price");
  static final UPLOADEDAT = amplify_core.QueryField(fieldName: "uploadedAt");
  static final CATEGORY = amplify_core.QueryField(fieldName: "category");
  static final AUCTIONHISTORY = amplify_core.QueryField(
    fieldName: "AuctionHistory",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ItemAuction'));
  static final POSTS = amplify_core.QueryField(
    fieldName: "posts",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'PostOnItem'));
  static final COMMENTS = amplify_core.QueryField(
    fieldName: "comments",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Comment'));
  static final OWNERSHIPS = amplify_core.QueryField(
    fieldName: "ownerships",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Ownership'));
  static final CURRENTOWNERUSER = amplify_core.QueryField(fieldName: "currentOwnerUser");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Item";
    modelSchemaDefinition.pluralName = "Items";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PRIVATE,
        operations: const [
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "currentOwnerUser",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.CREATE
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["currentOwnerUser"], name: "byItemOwner")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.TITLE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'description',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Content')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.BASE_PRICE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.UPLOADEDAT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.CATEGORY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Item.AUCTIONHISTORY,
      isRequired: true,
      ofModelName: 'ItemAuction',
      associatedKey: ItemAuction.ITEM
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Item.POSTS,
      isRequired: true,
      ofModelName: 'PostOnItem',
      associatedKey: PostOnItem.ITEM
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Item.COMMENTS,
      isRequired: true,
      ofModelName: 'Comment',
      associatedKey: Comment.TARGETITEM
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Item.OWNERSHIPS,
      isRequired: true,
      ofModelName: 'Ownership',
      associatedKey: Ownership.ITEM
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.CURRENTOWNERUSER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
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

class _ItemModelType extends amplify_core.ModelType<Item> {
  const _ItemModelType();
  
  @override
  Item fromJson(Map<String, dynamic> jsonData) {
    return Item.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Item';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Item] in your schema.
 */
class ItemModelIdentifier implements amplify_core.ModelIdentifier<Item> {
  final String id;

  /** Create an instance of ItemModelIdentifier using [id] the primary key. */
  const ItemModelIdentifier({
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
  String toString() => 'ItemModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ItemModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}