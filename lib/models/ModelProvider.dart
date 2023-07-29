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

import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'Auction.dart';
import 'Bid.dart';
import 'Chat.dart';
import 'ChatMembers.dart';
import 'Comment.dart';
import 'Item.dart';
import 'ItemAuction.dart';
import 'Message.dart';
import 'Ownership.dart';
import 'Post.dart';
import 'PostOnItem.dart';
import 'User.dart';
import 'UserChatOwner.dart';
import 'CommentTarget.dart';
import 'Content.dart';

export 'Auction.dart';
export 'AuctionStatus.dart';
export 'AuthMethod.dart';
export 'Bid.dart';
export 'BidStatus.dart';
export 'Category.dart';
export 'Chat.dart';
export 'ChatMembers.dart';
export 'Comment.dart';
export 'CommentTarget.dart';
export 'Content.dart';
export 'Item.dart';
export 'ItemAuction.dart';
export 'Message.dart';
export 'Ownership.dart';
export 'Post.dart';
export 'PostOnItem.dart';
export 'User.dart';
export 'UserChatOwner.dart';

class ModelProvider implements amplify_core.ModelProviderInterface {
  @override
  String version = "75b8bf30283e358055ba0e131664687f";
  @override
  List<amplify_core.ModelSchema> modelSchemas = [Auction.schema, Bid.schema, Chat.schema, ChatMembers.schema, Comment.schema, Item.schema, ItemAuction.schema, Message.schema, Ownership.schema, Post.schema, PostOnItem.schema, User.schema, UserChatOwner.schema];
  @override
  List<amplify_core.ModelSchema> customTypeSchemas = [CommentTarget.schema, Content.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  amplify_core.ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "Auction":
        return Auction.classType;
      case "Bid":
        return Bid.classType;
      case "Chat":
        return Chat.classType;
      case "ChatMembers":
        return ChatMembers.classType;
      case "Comment":
        return Comment.classType;
      case "Item":
        return Item.classType;
      case "ItemAuction":
        return ItemAuction.classType;
      case "Message":
        return Message.classType;
      case "Ownership":
        return Ownership.classType;
      case "Post":
        return Post.classType;
      case "PostOnItem":
        return PostOnItem.classType;
      case "User":
        return User.classType;
      case "UserChatOwner":
        return UserChatOwner.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}


class ModelFieldValue<T> {
  const ModelFieldValue.value(this.value);

  final T value;
}
