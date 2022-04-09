// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heroes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Heroes _$HeroesFromJson(Map<String, dynamic> json) => Heroes(
      json['response'] as String,
      json['results-for'] as String?,
      (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['error'] as String?,
    );

Map<String, dynamic> _$HeroesToJson(Heroes instance) => <String, dynamic>{
      'response': instance.response,
      'results-for': instance.resultsFor,
      'results': instance.results,
      'error': instance.error,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      response: json['response'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      powerStats:
          PowerStats.fromJson(json['powerstats'] as Map<String, dynamic>),
      biography: Biography.fromJson(json['biography'] as Map<String, dynamic>),
      appearance:
          Appearance.fromJson(json['appearance'] as Map<String, dynamic>),
      work: Work.fromJson(json['work'] as Map<String, dynamic>),
      connections:
          Connections.fromJson(json['connections'] as Map<String, dynamic>),
      image: HeroImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'response': instance.response,
      'id': instance.id,
      'name': instance.name,
      'powerstats': instance.powerStats,
      'biography': instance.biography,
      'appearance': instance.appearance,
      'work': instance.work,
      'connections': instance.connections,
      'image': instance.image,
    };

PowerStats _$PowerStatsFromJson(Map<String, dynamic> json) => PowerStats(
      json['intelligence'] as String,
      json['strength'] as String,
      json['speed'] as String,
      json['durability'] as String,
      json['power'] as String,
      json['combat'] as String,
    );

Map<String, dynamic> _$PowerStatsToJson(PowerStats instance) =>
    <String, dynamic>{
      'intelligence': instance.intelligence,
      'strength': instance.strength,
      'speed': instance.speed,
      'durability': instance.durability,
      'power': instance.power,
      'combat': instance.combat,
    };

Biography _$BiographyFromJson(Map<String, dynamic> json) => Biography(
      json['full-name'] as String,
      json['alter-egos'] as String,
      (json['aliases'] as List<dynamic>).map((e) => e as String).toList(),
      json['place-of-birth'] as String,
      json['first-appearance'] as String,
      json['publisher'] as String,
      json['alignment'] as String,
    );

Map<String, dynamic> _$BiographyToJson(Biography instance) => <String, dynamic>{
      'full-name': instance.fullName,
      'alter-egos': instance.alterEgos,
      'aliases': instance.aliases,
      'place-of-birth': instance.placeOfBirth,
      'first-appearance': instance.firstAppearance,
      'publisher': instance.publisher,
      'alignment': instance.alignment,
    };

Appearance _$AppearanceFromJson(Map<String, dynamic> json) => Appearance(
      json['gender'] as String,
      json['race'] as String,
      (json['height'] as List<dynamic>).map((e) => e as String).toList(),
      (json['weight'] as List<dynamic>).map((e) => e as String).toList(),
      json['eye-color'] as String,
      json['hair-color'] as String,
    );

Map<String, dynamic> _$AppearanceToJson(Appearance instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'race': instance.race,
      'height': instance.height,
      'weight': instance.weight,
      'eye-color': instance.eyeColor,
      'hair-color': instance.hairColor,
    };

Work _$WorkFromJson(Map<String, dynamic> json) => Work(
      json['occupation'] as String,
      json['base'] as String,
    );

Map<String, dynamic> _$WorkToJson(Work instance) => <String, dynamic>{
      'occupation': instance.occupation,
      'base': instance.base,
    };

Connections _$ConnectionsFromJson(Map<String, dynamic> json) => Connections(
      json['group-affiliation'] as String,
      json['relatives'] as String,
    );

Map<String, dynamic> _$ConnectionsToJson(Connections instance) =>
    <String, dynamic>{
      'group-affiliation': instance.groupAffiliation,
      'relatives': instance.relatives,
    };

HeroImage _$HeroImageFromJson(Map<String, dynamic> json) => HeroImage(
      json['url'] as String,
    );

Map<String, dynamic> _$HeroImageToJson(HeroImage instance) => <String, dynamic>{
      'url': instance.url,
    };
