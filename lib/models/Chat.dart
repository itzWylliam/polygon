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


/** This is an auto generated class representing the Chat type in your schema. */
class Chat extends amplify_core.Model {
  static const classType = const _ChatModelType();
  final String id;
  final String? _title;
  final amplify_core.TemporalDateTime? _createAt;
  final bool? _active;
  final List<Message>? _messages;
  final List<ChatMembers>? _participantUsers;
  final List<UserChatOwner>? _chatAdminUsers;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ChatModelIdentifier get modelIdentifier {
      return ChatModelIdentifier(
        id: id
      );
  }
  
  String? get title {
    return _title;
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
  
  List<Message>? get messages {
    return _messages;
  }
  
  List<ChatMembers>? get participantUsers {
    return _participantUsers;
  }
  
  List<UserChatOwner>? get chatAdminUsers {
    return _chatAdminUsers;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Chat._internal({required this.id, title, required createAt, required active, messages, participantUsers, chatAdminUsers, createdAt, updatedAt}): _title = title, _createAt = createAt, _active = active, _messages = messages, _participantUsers = participantUsers, _chatAdminUsers = chatAdminUsers, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Chat({String? id, String? title, required amplify_core.TemporalDateTime createAt, required bool active, List<Message>? messages, List<ChatMembers>? participantUsers, List<UserChatOwner>? chatAdminUsers}) {
    return Chat._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      title: title,
      createAt: createAt,
      active: active,
      messages: messages != null ? List<Message>.unmodifiable(messages) : messages,
      participantUsers: participantUsers != null ? List<ChatMembers>.unmodifiable(participantUsers) : participantUsers,
      chatAdminUsers: chatAdminUsers != null ? List<UserChatOwner>.unmodifiable(chatAdminUsers) : chatAdminUsers);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chat &&
      id == other.id &&
      _title == other._title &&
      _createAt == other._createAt &&
      _active == other._active &&
      DeepCollectionEquality().equals(_messages, other._messages) &&
      DeepCollectionEquality().equals(_participantUsers, other._participantUsers) &&
      DeepCollectionEquality().equals(_chatAdminUsers, other._chatAdminUsers);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Chat {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("createAt=" + (_createAt != null ? _createAt!.format() : "null") + ", ");
    buffer.write("active=" + (_active != null ? _active!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Chat copyWith({String? title, amplify_core.TemporalDateTime? createAt, bool? active, List<Message>? messages, List<ChatMembers>? participantUsers, List<UserChatOwner>? chatAdminUsers}) {
    return Chat._internal(
      id: id,
      title: title ?? this.title,
      createAt: createAt ?? this.createAt,
      active: active ?? this.active,
      messages: messages ?? this.messages,
      participantUsers: participantUsers ?? this.participantUsers,
      chatAdminUsers: chatAdminUsers ?? this.chatAdminUsers);
  }
  
  Chat copyWithModelFieldValues({
    ModelFieldValue<String?>? title,
    ModelFieldValue<amplify_core.TemporalDateTime>? createAt,
    ModelFieldValue<bool>? active,
    ModelFieldValue<List<Message>>? messages,
    ModelFieldValue<List<ChatMembers>>? participantUsers,
    ModelFieldValue<List<UserChatOwner>>? chatAdminUsers
  }) {
    return Chat._internal(
      id: id,
      title: title == null ? this.title : title.value,
      createAt: createAt == null ? this.createAt : createAt.value,
      active: active == null ? this.active : active.value,
      messages: messages == null ? this.messages : messages.value,
      participantUsers: participantUsers == null ? this.participantUsers : participantUsers.value,
      chatAdminUsers: chatAdminUsers == null ? this.chatAdminUsers : chatAdminUsers.value
    );
  }
  
  Chat.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _createAt = json['createAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createAt']) : null,
      _active = json['active'],
      _messages = json['messages'] is List
        ? (json['messages'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Message.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _participantUsers = json['participantUsers'] is List
        ? (json['participantUsers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ChatMembers.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _chatAdminUsers = json['chatAdminUsers'] is List
        ? (json['chatAdminUsers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserChatOwner.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'createAt': _createAt?.format(), 'active': _active, 'messages': _messages?.map((Message? e) => e?.toJson()).toList(), 'participantUsers': _participantUsers?.map((ChatMembers? e) => e?.toJson()).toList(), 'chatAdminUsers': _chatAdminUsers?.map((UserChatOwner? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'title': _title,
    'createAt': _createAt,
    'active': _active,
    'messages': _messages,
    'participantUsers': _participantUsers,
    'chatAdminUsers': _chatAdminUsers,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ChatModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ChatModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final CREATEAT = amplify_core.QueryField(fieldName: "createAt");
  static final ACTIVE = amplify_core.QueryField(fieldName: "active");
  static final MESSAGES = amplify_core.QueryField(
    fieldName: "messages",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Message'));
  static final PARTICIPANTUSERS = amplify_core.QueryField(
    fieldName: "participantUsers",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ChatMembers'));
  static final CHATADMINUSERS = amplify_core.QueryField(
    fieldName: "chatAdminUsers",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'UserChatOwner'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Chat";
    modelSchemaDefinition.pluralName = "Chats";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PRIVATE,
        operations: const [
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "participantUsers",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.UPDATE
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Chat.TITLE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Chat.CREATEAT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Chat.ACTIVE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Chat.MESSAGES,
      isRequired: true,
      ofModelName: 'Message',
      associatedKey: Message.CHAT
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Chat.PARTICIPANTUSERS,
      isRequired: true,
      ofModelName: 'ChatMembers',
      associatedKey: ChatMembers.CHAT
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Chat.CHATADMINUSERS,
      isRequired: true,
      ofModelName: 'UserChatOwner',
      associatedKey: UserChatOwner.CHAT
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

class _ChatModelType extends amplify_core.ModelType<Chat> {
  const _ChatModelType();
  
  @override
  Chat fromJson(Map<String, dynamic> jsonData) {
    return Chat.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Chat';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Chat] in your schema.
 */
class ChatModelIdentifier implements amplify_core.ModelIdentifier<Chat> {
  final String id;

  /** Create an instance of ChatModelIdentifier using [id] the primary key. */
  const ChatModelIdentifier({
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
  String toString() => 'ChatModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ChatModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}