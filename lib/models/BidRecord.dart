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


/** This is an auto generated class representing the BidRecord type in your schema. */
class BidRecord extends amplify_core.Model {
  static const classType = const _BidRecordModelType();
  final String id;
  final double? _bid_price;
  final User? _Bidder;
  final amplify_core.TemporalDateTime? _bid_time;
  final String? _bid_description;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _bidRecordBidderId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  BidRecordModelIdentifier get modelIdentifier {
      return BidRecordModelIdentifier(
        id: id
      );
  }
  
  double get bid_price {
    try {
      return _bid_price!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  User get Bidder {
    try {
      return _Bidder!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get bid_time {
    try {
      return _bid_time!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get bid_description {
    return _bid_description;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String get bidRecordBidderId {
    try {
      return _bidRecordBidderId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const BidRecord._internal({required this.id, required bid_price, required Bidder, required bid_time, bid_description, createdAt, updatedAt, required bidRecordBidderId}): _bid_price = bid_price, _Bidder = Bidder, _bid_time = bid_time, _bid_description = bid_description, _createdAt = createdAt, _updatedAt = updatedAt, _bidRecordBidderId = bidRecordBidderId;
  
  factory BidRecord({String? id, required double bid_price, required User Bidder, required amplify_core.TemporalDateTime bid_time, String? bid_description, required String bidRecordBidderId}) {
    return BidRecord._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      bid_price: bid_price,
      Bidder: Bidder,
      bid_time: bid_time,
      bid_description: bid_description,
      bidRecordBidderId: bidRecordBidderId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BidRecord &&
      id == other.id &&
      _bid_price == other._bid_price &&
      _Bidder == other._Bidder &&
      _bid_time == other._bid_time &&
      _bid_description == other._bid_description &&
      _bidRecordBidderId == other._bidRecordBidderId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("BidRecord {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("bid_price=" + (_bid_price != null ? _bid_price!.toString() : "null") + ", ");
    buffer.write("bid_time=" + (_bid_time != null ? _bid_time!.format() : "null") + ", ");
    buffer.write("bid_description=" + "$_bid_description" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("bidRecordBidderId=" + "$_bidRecordBidderId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  BidRecord copyWith({double? bid_price, User? Bidder, amplify_core.TemporalDateTime? bid_time, String? bid_description, String? bidRecordBidderId}) {
    return BidRecord._internal(
      id: id,
      bid_price: bid_price ?? this.bid_price,
      Bidder: Bidder ?? this.Bidder,
      bid_time: bid_time ?? this.bid_time,
      bid_description: bid_description ?? this.bid_description,
      bidRecordBidderId: bidRecordBidderId ?? this.bidRecordBidderId);
  }
  
  BidRecord copyWithModelFieldValues({
    ModelFieldValue<double>? bid_price,
    ModelFieldValue<User>? Bidder,
    ModelFieldValue<amplify_core.TemporalDateTime>? bid_time,
    ModelFieldValue<String?>? bid_description,
    ModelFieldValue<String>? bidRecordBidderId
  }) {
    return BidRecord._internal(
      id: id,
      bid_price: bid_price == null ? this.bid_price : bid_price.value,
      Bidder: Bidder == null ? this.Bidder : Bidder.value,
      bid_time: bid_time == null ? this.bid_time : bid_time.value,
      bid_description: bid_description == null ? this.bid_description : bid_description.value,
      bidRecordBidderId: bidRecordBidderId == null ? this.bidRecordBidderId : bidRecordBidderId.value
    );
  }
  
  BidRecord.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _bid_price = (json['bid_price'] as num?)?.toDouble(),
      _Bidder = json['Bidder']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['Bidder']['serializedData']))
        : null,
      _bid_time = json['bid_time'] != null ? amplify_core.TemporalDateTime.fromString(json['bid_time']) : null,
      _bid_description = json['bid_description'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _bidRecordBidderId = json['bidRecordBidderId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'bid_price': _bid_price, 'Bidder': _Bidder?.toJson(), 'bid_time': _bid_time?.format(), 'bid_description': _bid_description, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'bidRecordBidderId': _bidRecordBidderId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'bid_price': _bid_price,
    'Bidder': _Bidder,
    'bid_time': _bid_time,
    'bid_description': _bid_description,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'bidRecordBidderId': _bidRecordBidderId
  };

  static final amplify_core.QueryModelIdentifier<BidRecordModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<BidRecordModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final BID_PRICE = amplify_core.QueryField(fieldName: "bid_price");
  static final BIDDER = amplify_core.QueryField(
    fieldName: "Bidder",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final BID_TIME = amplify_core.QueryField(fieldName: "bid_time");
  static final BID_DESCRIPTION = amplify_core.QueryField(fieldName: "bid_description");
  static final BIDRECORDBIDDERID = amplify_core.QueryField(fieldName: "bidRecordBidderId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "BidRecord";
    modelSchemaDefinition.pluralName = "BidRecords";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: BidRecord.BID_PRICE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: BidRecord.BIDDER,
      isRequired: true,
      ofModelName: 'User',
      associatedKey: User.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: BidRecord.BID_TIME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: BidRecord.BID_DESCRIPTION,
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: BidRecord.BIDRECORDBIDDERID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _BidRecordModelType extends amplify_core.ModelType<BidRecord> {
  const _BidRecordModelType();
  
  @override
  BidRecord fromJson(Map<String, dynamic> jsonData) {
    return BidRecord.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'BidRecord';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [BidRecord] in your schema.
 */
class BidRecordModelIdentifier implements amplify_core.ModelIdentifier<BidRecord> {
  final String id;

  /** Create an instance of BidRecordModelIdentifier using [id] the primary key. */
  const BidRecordModelIdentifier({
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
  String toString() => 'BidRecordModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is BidRecordModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}