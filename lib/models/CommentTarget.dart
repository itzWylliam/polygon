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


/** This is an auto generated class representing the CommentTarget type in your schema. */
class CommentTarget {
  final String? _userID;
  final String? _itemID;
  final String? _postID;

  String? get userID {
    return _userID;
  }
  
  String? get itemID {
    return _itemID;
  }
  
  String? get postID {
    return _postID;
  }
  
  const CommentTarget._internal({userID, itemID, postID}): _userID = userID, _itemID = itemID, _postID = postID;
  
  factory CommentTarget({String? userID, String? itemID, String? postID}) {
    return CommentTarget._internal(
      userID: userID,
      itemID: itemID,
      postID: postID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentTarget &&
      _userID == other._userID &&
      _itemID == other._itemID &&
      _postID == other._postID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CommentTarget {");
    buffer.write("userID=" + "$_userID" + ", ");
    buffer.write("itemID=" + "$_itemID" + ", ");
    buffer.write("postID=" + "$_postID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CommentTarget copyWith({String? userID, String? itemID, String? postID}) {
    return CommentTarget._internal(
      userID: userID ?? this.userID,
      itemID: itemID ?? this.itemID,
      postID: postID ?? this.postID);
  }
  
  CommentTarget copyWithModelFieldValues({
    ModelFieldValue<String?>? userID,
    ModelFieldValue<String?>? itemID,
    ModelFieldValue<String?>? postID
  }) {
    return CommentTarget._internal(
      userID: userID == null ? this.userID : userID.value,
      itemID: itemID == null ? this.itemID : itemID.value,
      postID: postID == null ? this.postID : postID.value
    );
  }
  
  CommentTarget.fromJson(Map<String, dynamic> json)  
    : _userID = json['userID'],
      _itemID = json['itemID'],
      _postID = json['postID'];
  
  Map<String, dynamic> toJson() => {
    'userID': _userID, 'itemID': _itemID, 'postID': _postID
  };
  
  Map<String, Object?> toMap() => {
    'userID': _userID,
    'itemID': _itemID,
    'postID': _postID
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CommentTarget";
    modelSchemaDefinition.pluralName = "CommentTargets";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'userID',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'itemID',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'postID',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}