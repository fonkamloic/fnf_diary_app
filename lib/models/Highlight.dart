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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the Highlight type in your schema. */
class Highlight extends amplify_core.Model {
  static const classType = const _HighlightModelType();
  final String id;
  final String? _text;
  final amplify_core.TemporalDate? _addedDate;
  final Entry? _entry;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  HighlightModelIdentifier get modelIdentifier {
      return HighlightModelIdentifier(
        id: id
      );
  }
  
  String get text {
    try {
      return _text!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get addedDate {
    try {
      return _addedDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Entry? get entry {
    return _entry;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Highlight._internal({required this.id, required text, required addedDate, entry, createdAt, updatedAt}): _text = text, _addedDate = addedDate, _entry = entry, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Highlight({String? id, required String text, required amplify_core.TemporalDate addedDate, Entry? entry}) {
    return Highlight._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      text: text,
      addedDate: addedDate,
      entry: entry);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Highlight &&
      id == other.id &&
      _text == other._text &&
      _addedDate == other._addedDate &&
      _entry == other._entry;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Highlight {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("text=" + "$_text" + ", ");
    buffer.write("addedDate=" + (_addedDate != null ? _addedDate!.format() : "null") + ", ");
    buffer.write("entry=" + (_entry != null ? _entry!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Highlight copyWith({String? text, amplify_core.TemporalDate? addedDate, Entry? entry}) {
    return Highlight._internal(
      id: id,
      text: text ?? this.text,
      addedDate: addedDate ?? this.addedDate,
      entry: entry ?? this.entry);
  }
  
  Highlight copyWithModelFieldValues({
    ModelFieldValue<String>? text,
    ModelFieldValue<amplify_core.TemporalDate>? addedDate,
    ModelFieldValue<Entry?>? entry
  }) {
    return Highlight._internal(
      id: id,
      text: text == null ? this.text : text.value,
      addedDate: addedDate == null ? this.addedDate : addedDate.value,
      entry: entry == null ? this.entry : entry.value
    );
  }
  
  Highlight.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _text = json['text'],
      _addedDate = json['addedDate'] != null ? amplify_core.TemporalDate.fromString(json['addedDate']) : null,
      _entry = json['entry'] != null
        ? json['entry']['serializedData'] != null
          ? Entry.fromJson(new Map<String, dynamic>.from(json['entry']['serializedData']))
          : Entry.fromJson(new Map<String, dynamic>.from(json['entry']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'text': _text, 'addedDate': _addedDate?.format(), 'entry': _entry?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'text': _text,
    'addedDate': _addedDate,
    'entry': _entry,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<HighlightModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<HighlightModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TEXT = amplify_core.QueryField(fieldName: "text");
  static final ADDEDDATE = amplify_core.QueryField(fieldName: "addedDate");
  static final ENTRY = amplify_core.QueryField(
    fieldName: "entry",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Entry'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Highlight";
    modelSchemaDefinition.pluralName = "Highlights";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Highlight.TEXT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Highlight.ADDEDDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Highlight.ENTRY,
      isRequired: false,
      targetNames: ['entryId'],
      ofModelName: 'Entry'
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

class _HighlightModelType extends amplify_core.ModelType<Highlight> {
  const _HighlightModelType();
  
  @override
  Highlight fromJson(Map<String, dynamic> jsonData) {
    return Highlight.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Highlight';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Highlight] in your schema.
 */
class HighlightModelIdentifier implements amplify_core.ModelIdentifier<Highlight> {
  final String id;

  /** Create an instance of HighlightModelIdentifier using [id] the primary key. */
  const HighlightModelIdentifier({
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
  String toString() => 'HighlightModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is HighlightModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}