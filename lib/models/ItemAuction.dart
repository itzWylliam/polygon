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


/** This is an auto generated class representing the ItemAuction type in your schema. */
class ItemAuction extends amplify_core.Model {
  static const classType = const _ItemAuctionModelType();
  final String id;
  final Item? _item;
  final Auction? _auction;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ItemAuctionModelIdentifier get modelIdentifier {
      return ItemAuctionModelIdentifier(
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
  
  Auction get auction {
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
  
  const ItemAuction._internal({required this.id, required item, required auction, createdAt, updatedAt}): _item = item, _auction = auction, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ItemAuction({String? id, required Item item, required Auction auction}) {
    return ItemAuction._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      item: item,
      auction: auction);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemAuction &&
      id == other.id &&
      _item == other._item &&
      _auction == other._auction;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ItemAuction {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("item=" + (_item != null ? _item!.toString() : "null") + ", ");
    buffer.write("auction=" + (_auction != null ? _auction!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ItemAuction copyWith({Item? item, Auction? auction}) {
    return ItemAuction._internal(
      id: id,
      item: item ?? this.item,
      auction: auction ?? this.auction);
  }
  
  ItemAuction copyWithModelFieldValues({
    ModelFieldValue<Item>? item,
    ModelFieldValue<Auction>? auction
  }) {
    return ItemAuction._internal(
      id: id,
      item: item == null ? this.item : item.value,
      auction: auction == null ? this.auction : auction.value
    );
  }
  
  ItemAuction.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _item = json['item']?['serializedData'] != null
        ? Item.fromJson(new Map<String, dynamic>.from(json['item']['serializedData']))
        : null,
      _auction = json['auction']?['serializedData'] != null
        ? Auction.fromJson(new Map<String, dynamic>.from(json['auction']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'item': _item?.toJson(), 'auction': _auction?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'item': _item,
    'auction': _auction,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ItemAuctionModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ItemAuctionModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final ITEM = amplify_core.QueryField(
    fieldName: "item",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Item'));
  static final AUCTION = amplify_core.QueryField(
    fieldName: "auction",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Auction'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ItemAuction";
    modelSchemaDefinition.pluralName = "ItemAuctions";
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["itemId"], name: "byItem"),
      amplify_core.ModelIndex(fields: const ["auctionId"], name: "byAuction")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: ItemAuction.ITEM,
      isRequired: true,
      targetNames: ['itemId'],
      ofModelName: 'Item'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: ItemAuction.AUCTION,
      isRequired: true,
      targetNames: ['auctionId'],
      ofModelName: 'Auction'
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

class _ItemAuctionModelType extends amplify_core.ModelType<ItemAuction> {
  const _ItemAuctionModelType();
  
  @override
  ItemAuction fromJson(Map<String, dynamic> jsonData) {
    return ItemAuction.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ItemAuction';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ItemAuction] in your schema.
 */
class ItemAuctionModelIdentifier implements amplify_core.ModelIdentifier<ItemAuction> {
  final String id;

  /** Create an instance of ItemAuctionModelIdentifier using [id] the primary key. */
  const ItemAuctionModelIdentifier({
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
  String toString() => 'ItemAuctionModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ItemAuctionModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}