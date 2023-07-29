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


/** This is an auto generated class representing the Bid type in your schema. */
class Bid extends amplify_core.Model {
  static const classType = const _BidModelType();
  final String id;
  final double? _bid_price;
  final amplify_core.TemporalDateTime? _bid_time;
  final String? _bid_description;
  final BidStatus? _bid_status;
  final String? _bidder;
  final String? _auction;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  BidModelIdentifier get modelIdentifier {
      return BidModelIdentifier(
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
  
  BidStatus get bid_status {
    try {
      return _bid_status!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bidder {
    try {
      return _bidder!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get auction {
    try {
      return _auction!;
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
  
  const Bid._internal({required this.id, required bid_price, required bid_time, bid_description, required bid_status, required bidder, required auction, createdAt, updatedAt}): _bid_price = bid_price, _bid_time = bid_time, _bid_description = bid_description, _bid_status = bid_status, _bidder = bidder, _auction = auction, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Bid({String? id, required double bid_price, required amplify_core.TemporalDateTime bid_time, String? bid_description, required BidStatus bid_status, required String bidder, required String auction}) {
    return Bid._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      bid_price: bid_price,
      bid_time: bid_time,
      bid_description: bid_description,
      bid_status: bid_status,
      bidder: bidder,
      auction: auction);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bid &&
      id == other.id &&
      _bid_price == other._bid_price &&
      _bid_time == other._bid_time &&
      _bid_description == other._bid_description &&
      _bid_status == other._bid_status &&
      _bidder == other._bidder &&
      _auction == other._auction;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Bid {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("bid_price=" + (_bid_price != null ? _bid_price!.toString() : "null") + ", ");
    buffer.write("bid_time=" + (_bid_time != null ? _bid_time!.format() : "null") + ", ");
    buffer.write("bid_description=" + "$_bid_description" + ", ");
    buffer.write("bid_status=" + (_bid_status != null ? amplify_core.enumToString(_bid_status)! : "null") + ", ");
    buffer.write("bidder=" + "$_bidder" + ", ");
    buffer.write("auction=" + "$_auction" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Bid copyWith({double? bid_price, amplify_core.TemporalDateTime? bid_time, String? bid_description, BidStatus? bid_status, String? bidder, String? auction}) {
    return Bid._internal(
      id: id,
      bid_price: bid_price ?? this.bid_price,
      bid_time: bid_time ?? this.bid_time,
      bid_description: bid_description ?? this.bid_description,
      bid_status: bid_status ?? this.bid_status,
      bidder: bidder ?? this.bidder,
      auction: auction ?? this.auction);
  }
  
  Bid copyWithModelFieldValues({
    ModelFieldValue<double>? bid_price,
    ModelFieldValue<amplify_core.TemporalDateTime>? bid_time,
    ModelFieldValue<String?>? bid_description,
    ModelFieldValue<BidStatus>? bid_status,
    ModelFieldValue<String>? bidder,
    ModelFieldValue<String>? auction
  }) {
    return Bid._internal(
      id: id,
      bid_price: bid_price == null ? this.bid_price : bid_price.value,
      bid_time: bid_time == null ? this.bid_time : bid_time.value,
      bid_description: bid_description == null ? this.bid_description : bid_description.value,
      bid_status: bid_status == null ? this.bid_status : bid_status.value,
      bidder: bidder == null ? this.bidder : bidder.value,
      auction: auction == null ? this.auction : auction.value
    );
  }
  
  Bid.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _bid_price = (json['bid_price'] as num?)?.toDouble(),
      _bid_time = json['bid_time'] != null ? amplify_core.TemporalDateTime.fromString(json['bid_time']) : null,
      _bid_description = json['bid_description'],
      _bid_status = amplify_core.enumFromString<BidStatus>(json['bid_status'], BidStatus.values),
      _bidder = json['bidder'],
      _auction = json['auction'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'bid_price': _bid_price, 'bid_time': _bid_time?.format(), 'bid_description': _bid_description, 'bid_status': amplify_core.enumToString(_bid_status), 'bidder': _bidder, 'auction': _auction, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'bid_price': _bid_price,
    'bid_time': _bid_time,
    'bid_description': _bid_description,
    'bid_status': _bid_status,
    'bidder': _bidder,
    'auction': _auction,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<BidModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<BidModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final BID_PRICE = amplify_core.QueryField(fieldName: "bid_price");
  static final BID_TIME = amplify_core.QueryField(fieldName: "bid_time");
  static final BID_DESCRIPTION = amplify_core.QueryField(fieldName: "bid_description");
  static final BID_STATUS = amplify_core.QueryField(fieldName: "bid_status");
  static final BIDDER = amplify_core.QueryField(fieldName: "bidder");
  static final AUCTION = amplify_core.QueryField(fieldName: "auction");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Bid";
    modelSchemaDefinition.pluralName = "Bids";
    
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
        ownerField: "bidder",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.UPDATE
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["bidder"], name: "byBidder"),
      amplify_core.ModelIndex(fields: const ["auction"], name: "byAuction")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Bid.BID_PRICE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Bid.BID_TIME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Bid.BID_DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Bid.BID_STATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Bid.BIDDER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Bid.AUCTION,
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

class _BidModelType extends amplify_core.ModelType<Bid> {
  const _BidModelType();
  
  @override
  Bid fromJson(Map<String, dynamic> jsonData) {
    return Bid.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Bid';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Bid] in your schema.
 */
class BidModelIdentifier implements amplify_core.ModelIdentifier<Bid> {
  final String id;

  /** Create an instance of BidModelIdentifier using [id] the primary key. */
  const BidModelIdentifier({
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
  String toString() => 'BidModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is BidModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}