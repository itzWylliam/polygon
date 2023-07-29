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


/** This is an auto generated class representing the PostItem type in your schema. */
class PostItem extends amplify_core.Model {
  static const classType = const _PostItemModelType();
  final String id;
  final Item? _item;
  final Post? _post;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PostItemModelIdentifier get modelIdentifier {
      return PostItemModelIdentifier(
        id: id
      );
  }
  
  Item get item {
    try {
      return _item!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Post get post {
    try {
      return _post!;
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
  
  const PostItem._internal({required this.id, required item, required post, createdAt, updatedAt}): _item = item, _post = post, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PostItem({String? id, required Item item, required Post post}) {
    return PostItem._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      item: item,
      post: post);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostItem &&
      id == other.id &&
      _item == other._item &&
      _post == other._post;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PostItem {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("item=" + (_item != null ? _item!.toString() : "null") + ", ");
    buffer.write("post=" + (_post != null ? _post!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PostItem copyWith({Item? item, Post? post}) {
    return PostItem._internal(
      id: id,
      item: item ?? this.item,
      post: post ?? this.post);
  }
  
  PostItem copyWithModelFieldValues({
    ModelFieldValue<Item>? item,
    ModelFieldValue<Post>? post
  }) {
    return PostItem._internal(
      id: id,
      item: item == null ? this.item : item.value,
      post: post == null ? this.post : post.value
    );
  }
  
  PostItem.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _item = json['item']?['serializedData'] != null
        ? Item.fromJson(new Map<String, dynamic>.from(json['item']['serializedData']))
        : null,
      _post = json['post']?['serializedData'] != null
        ? Post.fromJson(new Map<String, dynamic>.from(json['post']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'item': _item?.toJson(), 'post': _post?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'item': _item,
    'post': _post,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PostItemModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PostItemModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final ITEM = amplify_core.QueryField(
    fieldName: "item",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Item'));
  static final POST = amplify_core.QueryField(
    fieldName: "post",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Post'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PostItem";
    modelSchemaDefinition.pluralName = "PostItems";
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["itemId"], name: "byItem"),
      amplify_core.ModelIndex(fields: const ["postId"], name: "byPost")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: PostItem.ITEM,
      isRequired: true,
      targetNames: ['itemId'],
      ofModelName: 'Item'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: PostItem.POST,
      isRequired: true,
      targetNames: ['postId'],
      ofModelName: 'Post'
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

class _PostItemModelType extends amplify_core.ModelType<PostItem> {
  const _PostItemModelType();
  
  @override
  PostItem fromJson(Map<String, dynamic> jsonData) {
    return PostItem.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'PostItem';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [PostItem] in your schema.
 */
class PostItemModelIdentifier implements amplify_core.ModelIdentifier<PostItem> {
  final String id;

  /** Create an instance of PostItemModelIdentifier using [id] the primary key. */
  const PostItemModelIdentifier({
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
  String toString() => 'PostItemModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PostItemModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}