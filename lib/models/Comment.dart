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


/** This is an auto generated class representing the Comment type in your schema. */
class Comment extends amplify_core.Model {
  static const classType = const _CommentModelType();
  final String id;
  final Content? _content;
  final amplify_core.TemporalDateTime? _createAt;
  final String? _parentCommentID;
  final bool? _root_comment;
  final CommentTarget? _targetID;
  final bool? _deleted;
  final String? _author;
  final String? _targetUser;
  final String? _targetPost;
  final String? _targetItem;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CommentModelIdentifier get modelIdentifier {
      return CommentModelIdentifier(
        id: id
      );
  }
  
  Content get content {
    try {
      return _content!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get createAt {
    try {
      return _createAt!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get parentCommentID {
    return _parentCommentID;
  }
  
  bool get root_comment {
    try {
      return _root_comment!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  CommentTarget get targetID {
    try {
      return _targetID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool get deleted {
    try {
      return _deleted!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get author {
    try {
      return _author!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get targetUser {
    return _targetUser;
  }
  
  String? get targetPost {
    return _targetPost;
  }
  
  String? get targetItem {
    return _targetItem;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Comment._internal({required this.id, required content, required createAt, parentCommentID, required root_comment, required targetID, required deleted, required author, targetUser, targetPost, targetItem, createdAt, updatedAt}): _content = content, _createAt = createAt, _parentCommentID = parentCommentID, _root_comment = root_comment, _targetID = targetID, _deleted = deleted, _author = author, _targetUser = targetUser, _targetPost = targetPost, _targetItem = targetItem, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Comment({String? id, required Content content, required amplify_core.TemporalDateTime createAt, String? parentCommentID, required bool root_comment, required CommentTarget targetID, required bool deleted, required String author, String? targetUser, String? targetPost, String? targetItem}) {
    return Comment._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      content: content,
      createAt: createAt,
      parentCommentID: parentCommentID,
      root_comment: root_comment,
      targetID: targetID,
      deleted: deleted,
      author: author,
      targetUser: targetUser,
      targetPost: targetPost,
      targetItem: targetItem);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
      id == other.id &&
      _content == other._content &&
      _createAt == other._createAt &&
      _parentCommentID == other._parentCommentID &&
      _root_comment == other._root_comment &&
      _targetID == other._targetID &&
      _deleted == other._deleted &&
      _author == other._author &&
      _targetUser == other._targetUser &&
      _targetPost == other._targetPost &&
      _targetItem == other._targetItem;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Comment {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("content=" + (_content != null ? _content!.toString() : "null") + ", ");
    buffer.write("createAt=" + (_createAt != null ? _createAt!.format() : "null") + ", ");
    buffer.write("parentCommentID=" + "$_parentCommentID" + ", ");
    buffer.write("root_comment=" + (_root_comment != null ? _root_comment!.toString() : "null") + ", ");
    buffer.write("targetID=" + (_targetID != null ? _targetID!.toString() : "null") + ", ");
    buffer.write("deleted=" + (_deleted != null ? _deleted!.toString() : "null") + ", ");
    buffer.write("author=" + "$_author" + ", ");
    buffer.write("targetUser=" + "$_targetUser" + ", ");
    buffer.write("targetPost=" + "$_targetPost" + ", ");
    buffer.write("targetItem=" + "$_targetItem" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Comment copyWith({Content? content, amplify_core.TemporalDateTime? createAt, String? parentCommentID, bool? root_comment, CommentTarget? targetID, bool? deleted, String? author, String? targetUser, String? targetPost, String? targetItem}) {
    return Comment._internal(
      id: id,
      content: content ?? this.content,
      createAt: createAt ?? this.createAt,
      parentCommentID: parentCommentID ?? this.parentCommentID,
      root_comment: root_comment ?? this.root_comment,
      targetID: targetID ?? this.targetID,
      deleted: deleted ?? this.deleted,
      author: author ?? this.author,
      targetUser: targetUser ?? this.targetUser,
      targetPost: targetPost ?? this.targetPost,
      targetItem: targetItem ?? this.targetItem);
  }
  
  Comment copyWithModelFieldValues({
    ModelFieldValue<Content>? content,
    ModelFieldValue<amplify_core.TemporalDateTime>? createAt,
    ModelFieldValue<String?>? parentCommentID,
    ModelFieldValue<bool>? root_comment,
    ModelFieldValue<CommentTarget>? targetID,
    ModelFieldValue<bool>? deleted,
    ModelFieldValue<String>? author,
    ModelFieldValue<String?>? targetUser,
    ModelFieldValue<String?>? targetPost,
    ModelFieldValue<String?>? targetItem
  }) {
    return Comment._internal(
      id: id,
      content: content == null ? this.content : content.value,
      createAt: createAt == null ? this.createAt : createAt.value,
      parentCommentID: parentCommentID == null ? this.parentCommentID : parentCommentID.value,
      root_comment: root_comment == null ? this.root_comment : root_comment.value,
      targetID: targetID == null ? this.targetID : targetID.value,
      deleted: deleted == null ? this.deleted : deleted.value,
      author: author == null ? this.author : author.value,
      targetUser: targetUser == null ? this.targetUser : targetUser.value,
      targetPost: targetPost == null ? this.targetPost : targetPost.value,
      targetItem: targetItem == null ? this.targetItem : targetItem.value
    );
  }
  
  Comment.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _content = json['content']?['serializedData'] != null
        ? Content.fromJson(new Map<String, dynamic>.from(json['content']['serializedData']))
        : null,
      _createAt = json['createAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createAt']) : null,
      _parentCommentID = json['parentCommentID'],
      _root_comment = json['root_comment'],
      _targetID = json['targetID']?['serializedData'] != null
        ? CommentTarget.fromJson(new Map<String, dynamic>.from(json['targetID']['serializedData']))
        : null,
      _deleted = json['deleted'],
      _author = json['author'],
      _targetUser = json['targetUser'],
      _targetPost = json['targetPost'],
      _targetItem = json['targetItem'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'content': _content?.toJson(), 'createAt': _createAt?.format(), 'parentCommentID': _parentCommentID, 'root_comment': _root_comment, 'targetID': _targetID?.toJson(), 'deleted': _deleted, 'author': _author, 'targetUser': _targetUser, 'targetPost': _targetPost, 'targetItem': _targetItem, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'content': _content,
    'createAt': _createAt,
    'parentCommentID': _parentCommentID,
    'root_comment': _root_comment,
    'targetID': _targetID,
    'deleted': _deleted,
    'author': _author,
    'targetUser': _targetUser,
    'targetPost': _targetPost,
    'targetItem': _targetItem,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CommentModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CommentModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final CONTENT = amplify_core.QueryField(fieldName: "content");
  static final CREATEAT = amplify_core.QueryField(fieldName: "createAt");
  static final PARENTCOMMENTID = amplify_core.QueryField(fieldName: "parentCommentID");
  static final ROOT_COMMENT = amplify_core.QueryField(fieldName: "root_comment");
  static final TARGETID = amplify_core.QueryField(fieldName: "targetID");
  static final DELETED = amplify_core.QueryField(fieldName: "deleted");
  static final AUTHOR = amplify_core.QueryField(fieldName: "author");
  static final TARGETUSER = amplify_core.QueryField(fieldName: "targetUser");
  static final TARGETPOST = amplify_core.QueryField(fieldName: "targetPost");
  static final TARGETITEM = amplify_core.QueryField(fieldName: "targetItem");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Comment";
    modelSchemaDefinition.pluralName = "Comments";
    
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
        ownerField: "author",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["author"], name: "byCommentAuthor"),
      amplify_core.ModelIndex(fields: const ["targetUser"], name: "byCommentReceiverUser"),
      amplify_core.ModelIndex(fields: const ["targetPost"], name: "byCommentReceiverPost"),
      amplify_core.ModelIndex(fields: const ["targetItem"], name: "byCommentReceiverItem")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'content',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Content')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Comment.CREATEAT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Comment.PARENTCOMMENTID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Comment.ROOT_COMMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'targetID',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'CommentTarget')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Comment.DELETED,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Comment.AUTHOR,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Comment.TARGETUSER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Comment.TARGETPOST,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Comment.TARGETITEM,
      isRequired: false,
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

class _CommentModelType extends amplify_core.ModelType<Comment> {
  const _CommentModelType();
  
  @override
  Comment fromJson(Map<String, dynamic> jsonData) {
    return Comment.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Comment';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Comment] in your schema.
 */
class CommentModelIdentifier implements amplify_core.ModelIdentifier<Comment> {
  final String id;

  /** Create an instance of CommentModelIdentifier using [id] the primary key. */
  const CommentModelIdentifier({
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
  String toString() => 'CommentModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CommentModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}