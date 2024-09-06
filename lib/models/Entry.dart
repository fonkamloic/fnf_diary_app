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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Entry type in your schema. */
class Entry extends amplify_core.Model {
  static const classType = const _EntryModelType();
  final String id;
  final String? _title;
  final String? _details;
  final amplify_core.TemporalDate? _addedDate;
  final EntryMood? _mood;
  final String? _image;
  final List<Highlight>? _highlights;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  EntryModelIdentifier get modelIdentifier {
      return EntryModelIdentifier(
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
  
  String get details {
    try {
      return _details!;
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
  
  EntryMood? get mood {
    return _mood;
  }
  
  String? get image {
    return _image;
  }
  
  List<Highlight>? get highlights {
    return _highlights;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Entry._internal({required this.id, required title, required details, required addedDate, mood, image, highlights, createdAt, updatedAt}): _title = title, _details = details, _addedDate = addedDate, _mood = mood, _image = image, _highlights = highlights, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Entry({String? id, required String title, required String details, required amplify_core.TemporalDate addedDate, EntryMood? mood, String? image, List<Highlight>? highlights}) {
    return Entry._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      title: title,
      details: details,
      addedDate: addedDate,
      mood: mood,
      image: image,
      highlights: highlights != null ? List<Highlight>.unmodifiable(highlights) : highlights);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Entry &&
      id == other.id &&
      _title == other._title &&
      _details == other._details &&
      _addedDate == other._addedDate &&
      _mood == other._mood &&
      _image == other._image &&
      DeepCollectionEquality().equals(_highlights, other._highlights);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Entry {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("details=" + "$_details" + ", ");
    buffer.write("addedDate=" + (_addedDate != null ? _addedDate!.format() : "null") + ", ");
    buffer.write("mood=" + (_mood != null ? amplify_core.enumToString(_mood)! : "null") + ", ");
    buffer.write("image=" + "$_image" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Entry copyWith({String? title, String? details, amplify_core.TemporalDate? addedDate, EntryMood? mood, String? image, List<Highlight>? highlights}) {
    return Entry._internal(
      id: id,
      title: title ?? this.title,
      details: details ?? this.details,
      addedDate: addedDate ?? this.addedDate,
      mood: mood ?? this.mood,
      image: image ?? this.image,
      highlights: highlights ?? this.highlights);
  }
  
  Entry copyWithModelFieldValues({
    ModelFieldValue<String>? title,
    ModelFieldValue<String>? details,
    ModelFieldValue<amplify_core.TemporalDate>? addedDate,
    ModelFieldValue<EntryMood?>? mood,
    ModelFieldValue<String?>? image,
    ModelFieldValue<List<Highlight>?>? highlights
  }) {
    return Entry._internal(
      id: id,
      title: title == null ? this.title : title.value,
      details: details == null ? this.details : details.value,
      addedDate: addedDate == null ? this.addedDate : addedDate.value,
      mood: mood == null ? this.mood : mood.value,
      image: image == null ? this.image : image.value,
      highlights: highlights == null ? this.highlights : highlights.value
    );
  }
  
  Entry.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _details = json['details'],
      _addedDate = json['addedDate'] != null ? amplify_core.TemporalDate.fromString(json['addedDate']) : null,
      _mood = amplify_core.enumFromString<EntryMood>(json['mood'], EntryMood.values),
      _image = json['image'],
      _highlights = json['highlights']  is Map
        ? (json['highlights']['items'] is List
          ? (json['highlights']['items'] as List)
              .where((e) => e != null)
              .map((e) => Highlight.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['highlights'] is List
          ? (json['highlights'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Highlight.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'details': _details, 'addedDate': _addedDate?.format(), 'mood': amplify_core.enumToString(_mood), 'image': _image, 'highlights': _highlights?.map((Highlight? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'title': _title,
    'details': _details,
    'addedDate': _addedDate,
    'mood': _mood,
    'image': _image,
    'highlights': _highlights,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<EntryModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<EntryModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final DETAILS = amplify_core.QueryField(fieldName: "details");
  static final ADDEDDATE = amplify_core.QueryField(fieldName: "addedDate");
  static final MOOD = amplify_core.QueryField(fieldName: "mood");
  static final IMAGE = amplify_core.QueryField(fieldName: "image");
  static final HIGHLIGHTS = amplify_core.QueryField(
    fieldName: "highlights",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Highlight'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Entry";
    modelSchemaDefinition.pluralName = "Entries";
    
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
      key: Entry.TITLE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Entry.DETAILS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Entry.ADDEDDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Entry.MOOD,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Entry.IMAGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Entry.HIGHLIGHTS,
      isRequired: false,
      ofModelName: 'Highlight',
      associatedKey: Highlight.ENTRY
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

class _EntryModelType extends amplify_core.ModelType<Entry> {
  const _EntryModelType();
  
  @override
  Entry fromJson(Map<String, dynamic> jsonData) {
    return Entry.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Entry';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Entry] in your schema.
 */
class EntryModelIdentifier implements amplify_core.ModelIdentifier<Entry> {
  final String id;

  /** Create an instance of EntryModelIdentifier using [id] the primary key. */
  const EntryModelIdentifier({
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
  String toString() => 'EntryModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is EntryModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}