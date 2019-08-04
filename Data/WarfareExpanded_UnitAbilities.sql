-- Unit Ability's - Includes Automatic Guns created by Laurana Kanan

-----------------------------------------------
-- Tags
-----------------------------------------------
-- Naval Units
INSERT INTO Tags
		(Tag,								Vocabulary)
VALUES	('CLASS_NAVAL_BOMBARD',				'ABILITY_CLASS'),
		('CLASS_MARINE',					'ABILITY_CLASS'),
		('CLASS_ATTACK_SUBMARINE',			'ABILITY_CLASS'),
		-- Land Units
		('CLASS_AUTOMATIC_GUN',				'ABILITY_CLASS'),
		('CLASS_LK_AUTOMATIC_GUN_CAV',		'ABILITY_CLASS'),
		('CLASS_LK_AUTOMATIC_GUN_ANTICAV',	'ABILITY_CLASS'),
		('CLASS_LK_AUTOMATIC_GUN_MELEE',	'ABILITY_CLASS');

-----------------------------------------------
-- Types
-----------------------------------------------
-- Naval Units
INSERT INTO Types
		(Type,											Kind)
VALUES	('ABILITY_NAVAL_BOMBARD_VS_SEA',						'KIND_ABILITY'),
        ('ABILITY_NAVAL_RANGED_VS_SEA',						'KIND_ABILITY'),
        ('ABILITY_NAVAL_RAIDER_VS_LAND',						'KIND_ABILITY'),
		('ABILITY_MARINE',								'KIND_ABILITY'),
		('ABILITY_ATTACK_SUB_RAIDER',					'KIND_ABILITY'),
		('ABILITY_ATTACK_SUB_SURFACE_WARSHIP',			'KIND_ABILITY'),
		-- Land Units
		('ABILITY_AUTOMATIC_GUNFIRE',					'KIND_ABILITY'),
		('ABILITY_LK_AUTOMATIC_GUN_CAV', 				'KIND_ABILITY'),
		('ABILITY_LK_AUTOMATIC_GUN_ANTICAV', 			'KIND_ABILITY'),
		('ABILITY_LK_AUTOMATIC_GUN_MELEE', 				'KIND_ABILITY'),
		('MODTYPE_LK_AUTOMATIC_GUN_ADJUST_STRENGTH',	'KIND_MODIFIER'),
		('MODTYPE_LK_AUTOMATIC_GUN_ATTACH_MODIFIER',	'KIND_MODIFIER');

-----------------------------------------------
-- TypeTags
-----------------------------------------------		
-- Naval Units
INSERT INTO TypeTags
		(Type,						Tag)
VALUES	        ('ABILITY_NAVAL_BOMBARD_VS_SEA',		'CLASS_NAVAL_BOMBARD'),
                ('ABILITY_NAVAL_RANGED_VS_SEA',			'CLASS_NAVAL_RANGED'),
                ('ABILITY_NAVAL_RAIDER_VS_LAND',		'CLASS_NAVAL_RAIDER'),
		('ABILITY_BYPASS_COMBAT_UNIT',			'CLASS_NAVAL_BOMBARD'),
		('ABILITY_MARINE',				'CLASS_MARINE'),
		('ABILITY_ATTACK_SUB_RAIDER',			'CLASS_ATTACK_SUBMARINE'),
		('ABILITY_ATTACK_SUB_SURFACE_WARSHIP',		'CLASS_ATTACK_SUBMARINE'),
		('ABILITY_OLIGARCHY_MELEE_BUFF',		'CLASS_MARINE'),
		('ABILITY_FASCISM_ATTACK_BUFF',			'CLASS_MARINE'),
		('ABILITY_FASCISM_ATTACK_BUFF', 		'CLASS_NAVAL_BOMBARD'),
		('ABILITY_COMMUNISM_DEFENSE_BUFF', 		'CLASS_MARINE'),
		('ABILITY_GREAT_GENERAL_MOVEMENT', 		'CLASS_MARINE'),
		('ABILITY_GREAT_GENERAL_STRENGTH', 		'CLASS_MARINE'),
		('ABILITY_GREAT_ADMIRAL_MOVEMENT', 		'CLASS_NAVAL_BOMBARD'),
		('ABILITY_GREAT_ADMIRAL_STRENGTH', 		'CLASS_NAVAL_BOMBARD'),
		-- Land Units
		('ABILITY_AUTOMATIC_GUNFIRE',			'CLASS_AUTOMATIC_GUN'),
		('ABILITY_LK_AUTOMATIC_GUN_CAV',		'CLASS_LK_AUTOMATIC_GUN_CAV'),
		('ABILITY_LK_AUTOMATIC_GUN_ANTICAV', 	'CLASS_LK_AUTOMATIC_GUN_ANTICAV'),
		('ABILITY_LK_AUTOMATIC_GUN_MELEE', 		'CLASS_LK_AUTOMATIC_GUN_MELEE'),
		('ABILITY_IGNORE_TERRAIN_COST', 		'CLASS_OBSERVATION'),
		('ABILITY_FASCISM_ATTACK_BUFF',			'CLASS_AUTOMATIC_GUN'),
		('ABILITY_COMMUNISM_DEFENSE_BUFF', 		'CLASS_AUTOMATIC_GUN'),
		('ABILITY_GREAT_GENERAL_MOVEMENT', 		'CLASS_AUTOMATIC_GUN'),
		('ABILITY_GREAT_GENERAL_STRENGTH', 		'CLASS_AUTOMATIC_GUN');
		-- Decide wether or not to include these
		-- ('ABILITY_BYPASS_COMBAT_UNIT', 			'CLASS_AUTOMATIC_GUN'),
		-- ('ABILITY_BYPASS_COMBAT_UNIT', 			'CLASS_RANGED'),
		-- ('ABILITY_BYPASS_COMBAT_UNIT', 			'CLASS_SIEGE'),
		-- ('ABILITY_BYPASS_COMBAT_UNIT', 			'CLASS_NAVAL_RANGED'),
		-- ('ABILITY_BYPASS_COMBAT_UNIT', 			'CLASS_NAVAL_RAIDER');

-- Naval Units
INSERT INTO TypeTags
		(Type,						Tag)
SELECT	'ABILITY_ALPINE_TRAINING',	'CLASS_MARINE'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPEC_OPS');

INSERT INTO TypeTags
		(Type,									Tag)
SELECT	'ABILITY_TWILIGHT_VALOR_ATTACK_BONUS',	'CLASS_MARINE'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPEC_OPS');

INSERT INTO TypeTags
		(Type,									Tag)
SELECT	'ABILITY_OLIGARCHY_LEGACY_MELEE_BUFF',	'CLASS_MARINE'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPEC_OPS');

INSERT INTO TypeTags
		(Type,									Tag)
SELECT	'ABILITY_FASCISM_LEGACY_ATTACK_BUFF',	'CLASS_MARINE'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPEC_OPS');

INSERT INTO TypeTags
		(Type,									Tag)
SELECT	'ABILITY_FASCISM_LEGACY_ATTACK_BUFF',	'CLASS_NAVAL_BOMBARD'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPEC_OPS');

INSERT INTO TypeTags
		(Type,						Tag)
SELECT	'ABILITY_SPEAR_OF_FIONN',	'CLASS_MARINE'
WHERE EXISTS (SELECT 1 FROM Types WHERE Type = 'ABILITY_SPEAR_OF_FIONN');

-- Land Units
INSERT INTO TypeTags (Type,		Tag)
SELECT 	UnitType,	'CLASS_LK_AUTOMATIC_GUN_CAV'
FROM 	Units
WHERE	PromotionClass IN ('PROMOTION_CLASS_LIGHT_CAVALRY', 'PROMOTION_CLASS_HEAVY_CAVALRY');

INSERT INTO TypeTags (Type,		Tag)
SELECT 	UnitType,	'CLASS_LK_AUTOMATIC_GUN_ANTICAV'
FROM 	Units
WHERE	PromotionClass = 'PROMOTION_CLASS_ANTI_CAVALRY';

INSERT INTO TypeTags (Type,		Tag)
SELECT 	UnitType,	'CLASS_LK_AUTOMATIC_GUN_MELEE'
FROM 	Units
WHERE	PromotionClass = 'PROMOTION_CLASS_MELEE';

INSERT INTO TypeTags
		(Type,						Tag)
SELECT	'ABILITY_ALPINE_TRAINING',	'CLASS_AUTOMATIC_GUN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPEC_OPS');

INSERT INTO TypeTags
		(Type,									Tag)
SELECT	'ABILITY_FASCISM_LEGACY_ATTACK_BUFF',	'CLASS_AUTOMATIC_GUN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPEC_OPS');

INSERT INTO TypeTags
		(Type,						Tag)
SELECT	'ABILITY_SPEAR_OF_FIONN',	'CLASS_AUTOMATIC_GUN'
WHERE EXISTS (SELECT 1 FROM Types WHERE Type = 'ABILITY_SPEAR_OF_FIONN');

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------
-- Naval Units
INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,						Description)
VALUES		('ABILITY_NAVAL_BOMBARD_VS_SEA',	'LOC_ABILITY_NAVAL_BOMBARD_VS_SEA_NAME',	'LOC_ABILITY_NAVAL_BOMBARD_VS_SEA_DESCRIPTION'),
		('ABILITY_NAVAL_RANGED_VS_SEA',		'LOC_ABILITY_NAVAL_RANGED_VS_SEA_NAME',		'LOC_ABILITY_NAVAL_RANGED_VS_SEA_DESCRIPTION'),
		('ABILITY_NAVAL_RAIDER_VS_LAND',	'LOC_ABILITY_NAVAL_RAIDER_VS_LAND_NAME',	'LOC_ABILITY_NAVAL_RAIDER_VS_LAND_DESCRIPTION'),
		('ABILITY_MARINE',			'LOC_ABILITY_MARINE_NAME',			'LOC_ABILITY_MARINE_DESCRIPTION'),
		('ABILITY_ATTACK_SUB_RAIDER',		'LOC_ABILITY_ATTACK_SUBMARINE_NAME',		'LOC_ABILITY_ATTACK_SUBMARINE_DESCRIPTION'),
		('ABILITY_ATTACK_SUB_SURFACE_WARSHIP',	'LOC_ABILITY_ATTACK_SUBMARINE_NAME',		'LOC_ABILITY_ATTACK_SUBMARINE_DESCRIPTION'),
		-- Land Units
		('ABILITY_AUTOMATIC_GUNFIRE',		'LOC_ABILITY_LK_AUTOMATIC_GUN_NAME',		'LOC_ABILITY_LK_AUTOMATIC_GUN_DESCRIPTION'),
		('ABILITY_LK_AUTOMATIC_GUN_CAV', 	'LOC_ABILITY_LK_AUTOMATIC_GUN_NAME', 		'LOC_ABILITY_LK_AUTOMATIC_GUN_DESCRIPTION'),
		('ABILITY_LK_AUTOMATIC_GUN_ANTICAV', 	'LOC_ABILITY_LK_AUTOMATIC_GUN_NAME', 		'LOC_ABILITY_LK_AUTOMATIC_GUN_DESCRIPTION'),
		('ABILITY_LK_AUTOMATIC_GUN_MELEE', 	'LOC_ABILITY_LK_AUTOMATIC_GUN_NAME', 		'LOC_ABILITY_LK_AUTOMATIC_GUN_DESCRIPTION');

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
-- Naval Units
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,			ModifierId)
VALUES		('ABILITY_NAVAL_BOMBARD_VS_SEA',	'ADJUST_NAVAL_BOMBARD_VS_SEA'),
		('ABILITY_NAVAL_RANGED_VS_SEA',		'ADJUST_NAVAL_RANGED_VS_SEA'),
		('ABILITY_NAVAL_RAIDER_VS_LAND',	'ADJUST_NAVAL_RAIDER_VS_LAND'),
		('ABILITY_MARINE',			'AMPHIBIOUS_BONUS_IGNORE_RIVERS'),
		('ABILITY_MARINE',			'AMPHIBIOUS_BONUS_IGNORE_SHORES'),
		('ABILITY_MARINE',			'AMPHIBIOUS_ASSAULT'),
		('ABILITY_ATTACK_SUB_RAIDER',		'HUNTER_KILLER_RAIDER'),
		('ABILITY_ATTACK_SUB_SURFACE_WARSHIP',	'HUNTER_KILLER_SURFACE'),
		-- Land Units
		('ABILITY_AUTOMATIC_GUNFIRE',		'PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS'),
		('ABILITY_LK_AUTOMATIC_GUN_CAV', 	'MODIFIER_LK_AUTOMATIC_GUN_CAV'),
		('ABILITY_LK_AUTOMATIC_GUN_ANTICAV', 	'MODIFIER_LK_AUTOMATIC_GUN_ANTICAV'),
		('ABILITY_LK_AUTOMATIC_GUN_MELEE', 	'MODIFIER_LK_AUTOMATIC_GUN_MELEE');

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------
-- Land Units
INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType)
VALUES	('MODTYPE_LK_AUTOMATIC_GUN_ADJUST_STRENGTH',	'COLLECTION_UNIT_COMBAT', 	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'),
		('MODTYPE_LK_AUTOMATIC_GUN_ATTACH_MODIFIER',	'COLLECTION_PLAYER_UNITS', 	'EFFECT_ATTACH_MODIFIER');

-----------------------------------------------
-- Modifiers
-----------------------------------------------
-- Naval Units
INSERT INTO Modifiers
		(ModifierId,						ModifierType,					SubjectRequirementSetId)
VALUES		('ADJUST_NAVAL_BOMBARD_VS_SEA',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		'NAVAL_BOMBARD_SEA_OPPONENT_REQUIREMENT'),
		('ADJUST_NAVAL_RANGED_VS_SEA',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		'NAVAL_RANGED_SEA_OPPONENT_REQUIREMENT'),
		('ADJUST_NAVAL_RAIDER_VS_LAND',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		'NAVAL_RAIDER_LAND_OPPONENT_REQUIREMENT'),
		('AMPHIBIOUS_ASSAULT',					'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		'MARINE_PLOT_IS_COAST_REQUIREMENT'),
		('HUNTER_KILLER_RAIDER',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		'OPPONENT_IS_RAIDER_REQUIREMENT'),
		('HUNTER_KILLER_SURFACE',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		'OPPONENT_IS_SURFACE_REQUIREMENT'),
		-- Land Units
		('PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		'OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS'),
		('MODIFIER_LK_AUTOMATIC_GUN_CAV', 			'MODTYPE_LK_AUTOMATIC_GUN_ADJUST_STRENGTH',	'REQSET_LK_AUTOMATIC_GUN_ADJ_CAV'),
		('MODIFIER_LK_AUTOMATIC_GUN_ANTICAV', 			'MODTYPE_LK_AUTOMATIC_GUN_ADJUST_STRENGTH',	'REQSET_LK_AUTOMATIC_GUN_ADJ_ANTICAV'),
		('MODIFIER_LK_AUTOMATIC_GUN_MELEE', 			'MODTYPE_LK_AUTOMATIC_GUN_ADJUST_STRENGTH',	'REQSET_LK_AUTOMATIC_GUN_ADJ_MELEE');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
-- Naval Units
INSERT INTO ModifierArguments
		(ModifierId,						Name,		Value)
VALUES		('ADJUST_NAVAL_BOMBARD_VS_SEA',				'Amount',	-17),
		('ADJUST_NAVAL_RANGED_VS_SEA',				'Amount',	-17),
		('ADJUST_NAVAL_RAIDER_VS_LAND',				'Amount',	-17),
		('AMPHIBIOUS_ASSAULT',					'Amount',	10),
		('HUNTER_KILLER_RAIDER',				'Amount',	15),
		('HUNTER_KILLER_SURFACE',				'Amount',	7),
		-- Land Units
		('PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS',	'Amount',	8),
		('MODIFIER_LK_AUTOMATIC_GUN_CAV', 			'Amount', 	4),
		('MODIFIER_LK_AUTOMATIC_GUN_ANTICAV', 			'Amount', 	4),
		('MODIFIER_LK_AUTOMATIC_GUN_MELEE', 			'Amount', 	2);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
-- Naval Units
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES		('NAVAL_BOMBARD_SEA_OPPONENT_REQUIREMENT',		'OPPONENT_IS_SEA_UNIT'),
		('NAVAL_BOMBARD_SEA_OPPONENT_REQUIREMENT',		'PLAYER_IS_ATTACKER_REQUIREMENTS'),
		('NAVAL_RANGED_SEA_OPPONENT_REQUIREMENT',		'OPPONENT_IS_SEA_UNIT'),
		('NAVAL_RANGED_SEA_OPPONENT_REQUIREMENT',		'PLAYER_IS_ATTACKER_REQUIREMENTS'),
		('NAVAL_RAIDER_LAND_OPPONENT_REQUIREMENT',		'OPPONENT_IS_LAND_UNIT'),
		('NAVAL_RAIDER_LAND_OPPONENT_REQUIREMENT',		'PLAYER_IS_ATTACKER_REQUIREMENTS'),
		('MARINE_PLOT_IS_COAST_REQUIREMENT',			'REQUIRES_UNIT_ON_COASTAL_LAND'),
		('OPPONENT_IS_RAIDER_REQUIREMENT',			'PLAYER_IS_ATTACKER_REQUIREMENTS'),
		('OPPONENT_IS_RAIDER_REQUIREMENT',			'OPPONENT_IS_RAIDER'),
		('OPPONENT_IS_SURFACE_REQUIREMENT',			'PLAYER_IS_ATTACKER_REQUIREMENTS'),
		('OPPONENT_IS_SURFACE_REQUIREMENT',			'OPPONENT_IS_SURFACE_UNIT'),
		('ATTACK_SUB_OPPONENT_REQUIREMENTS',			'OPPONENT_NAVAL_MELEE_REQUIREMENT'),
		('ATTACK_SUB_OPPONENT_REQUIREMENTS',			'OPPONENT_NAVAL_RANGED_REQUIREMENT'),
		('ATTACK_SUB_OPPONENT_REQUIREMENTS',			'OPPONENT_NAVAL_BOMBARD_REQUIREMENT'),
		('ATTACK_SUB_OPPONENT_REQUIREMENTS',			'OPPONENT_NAVAL_CARRIER_REQUIREMENT'),
		-- Land Units
		('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS',	'ANTI_CAVALRY_OPPONENT_REQUIREMENT_LC'),
		('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS',	'OPPONENT_ANTI_CAVALRY_REQUIREMENT'),
		('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS',	'OPPONENT_IS_PROMOTION_CLASS_MELEE'),
		('REQSET_LK_AUTOMATIC_GUN_ADJ_CAV', 			'REQ_LK_AUTOMATIC_GUN_ADJACENT'), 
		('REQSET_LK_AUTOMATIC_GUN_ADJ_CAV', 			'REQ_LK_AUTOMATIC_GUN_ATTACKING'),
		('REQSET_LK_AUTOMATIC_GUN_ADJ_ANTICAV',			'REQ_LK_AUTOMATIC_GUN_ADJACENT'),
		('REQSET_LK_AUTOMATIC_GUN_ADJ_ANTICAV',			'REQ_LK_AUTOMATIC_GUN_DEFENDING'),
		('REQSET_LK_AUTOMATIC_GUN_ADJ_MELEE', 			'REQ_LK_AUTOMATIC_GUN_ADJACENT');

-----------------------------------------------
-- RequirementSets
-----------------------------------------------
-- Naval Units
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('BOMBARD_OPPONENT_REQUIREMENT',					'REQUIREMENTSET_TEST_ALL'),
		('MARINE_PLOT_IS_COAST_REQUIREMENT',				'REQUIREMENTSET_TEST_ANY'),
		('OPPONENT_IS_RAIDER_REQUIREMENT',					'REQUIREMENTSET_TEST_ALL'),
		('OPPONENT_IS_SURFACE_REQUIREMENT',					'REQUIREMENTSET_TEST_ALL'),
		('ATTACK_SUB_OPPONENT_REQUIREMENTS',				'REQUIREMENTSET_TEST_ANY'),
		-- Land Units
		('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY'),
		('REQSET_LK_AUTOMATIC_GUN_ADJ_CAV', 				'REQUIREMENTSET_TEST_ALL'),
		('REQSET_LK_AUTOMATIC_GUN_ADJ_ANTICAV',				'REQUIREMENTSET_TEST_ALL'),
		('REQSET_LK_AUTOMATIC_GUN_ADJ_MELEE', 				'REQUIREMENTSET_TEST_ALL');

-----------------------------------------------
-- Requirements
-----------------------------------------------
-- Naval Units
INSERT INTO Requirements
		(RequirementId, 			RequirementType,					Inverse)
VALUES		('OPPONENT_IS_SURFACE_UNIT',	 	'REQUIREMENT_REQUIREMENTSET_IS_MET',			0),
		('OPPONENT_NAVAL_MELEE_REQUIREMENT',	'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES',	0),
		('OPPONENT_NAVAL_RANGED_REQUIREMENT',	'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES',	0),
		('OPPONENT_NAVAL_BOMBARD_REQUIREMENT',	'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES',	0),
		('OPPONENT_NAVAL_CARRIER_REQUIREMENT',	'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES',	0),
		-- Land Units
		('REQ_LK_AUTOMATIC_GUN_ADJACENT', 	'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TAG_MATCHES',	0),
		('REQ_LK_AUTOMATIC_GUN_ATTACKING', 	'REQUIREMENT_PLAYER_IS_ATTACKING',			0),
		('REQ_LK_AUTOMATIC_GUN_DEFENDING', 	'REQUIREMENT_PLAYER_IS_ATTACKING',			1);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
-- Naval Units
INSERT INTO RequirementArguments
		(RequirementId, 						Name,					Value)
VALUES	('OPPONENT_IS_SURFACE_UNIT', 			'RequirementSetId',		'ATTACK_SUB_OPPONENT_REQUIREMENTS'),
		('OPPONENT_NAVAL_MELEE_REQUIREMENT',	'UnitPromotionClass',	'PROMOTION_CLASS_NAVAL_MELEE'),
		('OPPONENT_NAVAL_RANGED_REQUIREMENT',	'UnitPromotionClass',	'PROMOTION_CLASS_NAVAL_RANGED'),
		('OPPONENT_NAVAL_BOMBARD_REQUIREMENT',	'UnitPromotionClass',	'PROMOTION_CLASS_NAVAL_BOMBARD'),
		('OPPONENT_NAVAL_CARRIER_REQUIREMENT',	'UnitPromotionClass',	'PROMOTION_CLASS_NAVAL_CARRIER'),
		-- Land Units
		('REQ_LK_AUTOMATIC_GUN_ADJACENT', 		'Tag',					'CLASS_AUTOMATIC_GUN');

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------
-- Naval Units
INSERT INTO ModifierStrings
		(ModifierId,						Context,	Text)
VALUES		('ADJUST_NAVAL_BOMBARD_VS_SEA',				'Preview',	'LOC_ABILITY_NAVAL_BOMBARD_VS_SEA_COMBAT_MODIFIER_DESCRIPTION'),
		('ADJUST_NAVAL_RANGED_VS_SEA',				'Preview',	'LOC_ABILITY_NAVAL_RANGED_VS_SEA_COMBAT_MODIFIER_DESCRIPTION'),
		('ADJUST_NAVAL_RAIDER_VS_LAND',				'Preview',	'LOC_ABILITY_NAVAL_RAIDER_VS_LAND_COMBAT_MODIFIER_DESCRIPTION'),
		('AMPHIBIOUS_ASSAULT',					'Preview',	'LOC_ABILITY_AMPHIBIOUS_ASSAULT_COMBAT_MODIFIER_DESCRIPTION'),
		('HUNTER_KILLER_RAIDER',				'Preview',	'LOC_ABILITY_HUNTER_KILLER_RAIDER_MODIFIER_DESCRIPTION'),
		('HUNTER_KILLER_SURFACE',				'Preview',	'LOC_ABILITY_HUNTER_KILLER_SURFACE_MODIFIER_DESCRIPTION'),
		-- Land Units
		('PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS',	'Preview',	'LOC_PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS_DESC'),
		('MODIFIER_LK_AUTOMATIC_GUN_CAV', 			'Preview', 	'LOC_MODIFIER_LK_AUTOMATIC_GUN_CAV_DESCRIPTION'),
		('MODIFIER_LK_AUTOMATIC_GUN_ANTICAV', 			'Preview', 	'LOC_MODIFIER_LK_AUTOMATIC_GUN_ANTICAV_DESCRIPTION'),
		('MODIFIER_LK_AUTOMATIC_GUN_MELEE', 			'Preview', 	'LOC_MODIFIER_LK_AUTOMATIC_GUN_MELEE_DESCRIPTION');

-----------------------------------------------
-- Policy Modifiers
-----------------------------------------------
INSERT INTO PolicyModifiers (PolicyType, ModifierId)
VALUES	('POLICY_MARITIME_INDUSTRIES', 'MARITIMIEINDUSTRIES_ANCIENT_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_MARITIME_INDUSTRIES', 'MARITIMIEINDUSTRIES_CLASSICAL_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_PRESS_GANGS','MARITIMIEINDUSTRIES_ANCIENT_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_PRESS_GANGS','MARITIMIEINDUSTRIES_CLASSICAL_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_PRESS_GANGS','PRESSGANGS_MEDIEVAL_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_PRESS_GANGS','PRESSGANGS_RENAISSANCE_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_PRESS_GANGS','PRESSGANGS_INDUSTRIAL_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_INTERNATIONAL_WATERS','MARITIMIEINDUSTRIES_ANCIENT_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_INTERNATIONAL_WATERS','MARITIMIEINDUSTRIES_CLASSICAL_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_INTERNATIONAL_WATERS','PRESSGANGS_MEDIEVAL_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_INTERNATIONAL_WATERS','PRESSGANGS_RENAISSANCE_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_INTERNATIONAL_WATERS','PRESSGANGS_INDUSTRIAL_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_INTERNATIONAL_WATERS','INTERNATIONALWATERS_MODERN_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_INTERNATIONAL_WATERS','INTERNATIONALWATERS_ATOMIC_NAVAL_BOMBARD_PRODUCTION'),
		('POLICY_INTERNATIONAL_WATERS','INTERNATIONALWATERS_INFORMATION_NAVAL_BOMBARD_PRODUCTION');

INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES	('MARITIMIEINDUSTRIES_ANCIENT_NAVAL_BOMBARD_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION'),
		('MARITIMIEINDUSTRIES_CLASSICAL_NAVAL_BOMBARD_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION'),
		('PRESSGANGS_MEDIEVAL_NAVAL_BOMBARD_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION'),
		('PRESSGANGS_RENAISSANCE_NAVAL_BOMBARD_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION'),
		('PRESSGANGS_INDUSTRIAL_NAVAL_BOMBARD_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION'),
		('INTERNATIONALWATERS_MODERN_NAVAL_BOMBARD_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION'),
		('INTERNATIONALWATERS_ATOMIC_NAVAL_BOMBARD_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION'),
		('INTERNATIONALWATERS_INFORMATION_NAVAL_BOMBARD_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION');

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('MARITIMIEINDUSTRIES_ANCIENT_NAVAL_BOMBARD_PRODUCTION', 'Amount', 100),
		('MARITIMIEINDUSTRIES_ANCIENT_NAVAL_BOMBARD_PRODUCTION', 'EraType', 'ERA_ANCIENT'),
		('MARITIMIEINDUSTRIES_ANCIENT_NAVAL_BOMBARD_PRODUCTION', 'UnitPromotionClass', 'PROMOTION_CLASS_NAVAL_BOMBARD'),
		('MARITIMIEINDUSTRIES_CLASSICAL_NAVAL_BOMBARD_PRODUCTION', 'Amount', 100),
		('MARITIMIEINDUSTRIES_CLASSICAL_NAVAL_BOMBARD_PRODUCTION', 'EraType', 'ERA_CLASSICAL'),
		('MARITIMIEINDUSTRIES_CLASSICAL_NAVAL_BOMBARD_PRODUCTION', 'UnitPromotionClass', 'PROMOTION_CLASS_NAVAL_BOMBARD'),
		('PRESSGANGS_MEDIEVAL_NAVAL_BOMBARD_PRODUCTION', 'Amount', 100),
		('PRESSGANGS_MEDIEVAL_NAVAL_BOMBARD_PRODUCTION', 'EraType', 'ERA_MEDIEVAL'),
		('PRESSGANGS_MEDIEVAL_NAVAL_BOMBARD_PRODUCTION', 'UnitPromotionClass', 'PROMOTION_CLASS_NAVAL_BOMBARD'),
		('PRESSGANGS_RENAISSANCE_NAVAL_BOMBARD_PRODUCTION', 'Amount', 100),
		('PRESSGANGS_RENAISSANCE_NAVAL_BOMBARD_PRODUCTION', 'EraType', 'ERA_RENAISSANCE'),
		('PRESSGANGS_RENAISSANCE_NAVAL_BOMBARD_PRODUCTION', 'UnitPromotionClass', 'PROMOTION_CLASS_NAVAL_BOMBARD'),
		('PRESSGANGS_INDUSTRIAL_NAVAL_BOMBARD_PRODUCTION', 'Amount', 100),
		('PRESSGANGS_INDUSTRIAL_NAVAL_BOMBARD_PRODUCTION', 'EraType', 'ERA_INDUSTRIAL'),
		('PRESSGANGS_INDUSTRIAL_NAVAL_BOMBARD_PRODUCTION', 'UnitPromotionClass', 'PROMOTION_CLASS_NAVAL_BOMBARD'),
		('INTERNATIONALWATERS_MODERN_NAVAL_BOMBARD_PRODUCTION', 'Amount', 100),
		('INTERNATIONALWATERS_MODERN_NAVAL_BOMBARD_PRODUCTION', 'EraType', 'ERA_MODERN'),
		('INTERNATIONALWATERS_MODERN_NAVAL_BOMBARD_PRODUCTION', 'UnitPromotionClass', 'PROMOTION_CLASS_NAVAL_BOMBARD'),
		('INTERNATIONALWATERS_ATOMIC_NAVAL_BOMBARD_PRODUCTION', 'Amount', 100),
		('INTERNATIONALWATERS_ATOMIC_NAVAL_BOMBARD_PRODUCTION', 'EraType', 'ERA_ATOMIC'),
		('INTERNATIONALWATERS_ATOMIC_NAVAL_BOMBARD_PRODUCTION', 'UnitPromotionClass', 'PROMOTION_CLASS_NAVAL_BOMBARD'),
		('INTERNATIONALWATERS_INFORMATION_NAVAL_BOMBARD_PRODUCTION', 'Amount', 100),
		('INTERNATIONALWATERS_INFORMATION_NAVAL_BOMBARD_PRODUCTION', 'EraType', 'ERA_INFORMATION'),
		('INTERNATIONALWATERS_INFORMATION_NAVAL_BOMBARD_PRODUCTION', 'UnitPromotionClass', 'PROMOTION_CLASS_NAVAL_BOMBARD');
