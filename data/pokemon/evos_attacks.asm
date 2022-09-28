INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evolution_moves.asm"
INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
    db  1, TACKLE
    db  3, GROWL
    db  7, LEECH_SEED
    db  9, VINE_WHIP
    db 13, POISONPOWDER
    db 13, SLEEP_POWDER
    db 15, TAKE_DOWN
    db 19, RAZOR_LEAF
    db 21, SWEET_SCENT
    db 25, GROWTH
    db 27, DOUBLE_EDGE
    db 33, SYNTHESIS

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
    db  1, TACKLE
    db  3, GROWL
    db  7, LEECH_SEED
    db  9, VINE_WHIP
    db 13, POISONPOWDER
    db 13, SLEEP_POWDER
    db 15, TAKE_DOWN
    db 20, RAZOR_LEAF
    db 23, SWEET_SCENT
    db 28, GROWTH
    db 31, DOUBLE_EDGE
    db 39, SYNTHESIS
    db 44, SOLARBEAM
    db 0 ; no more level-up moves

VenusaurEvosAttacks:
    db  1, TACKLE
    db  3, GROWL
    db  7, LEECH_SEED
    db  9, VINE_WHIP
    db 13, POISONPOWDER
    db 13, SLEEP_POWDER
    db 15, TAKE_DOWN
    db 20, RAZOR_LEAF
    db 23, SWEET_SCENT
    db 28, GROWTH
    db 31, DOUBLE_EDGE
    db 45, SYNTHESIS
    db 53, SOLARBEAM
    db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, GROWL
    db  7, EMBER
    db 10, SMOKESCREEN
    db 16, DRAGON_RAGE
    db 19, SCARY_FACE
    db 34, SLASH
    db 37, FLAMETHROWER
    db 43, FIRE_SPIN
    db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, GROWL
    db  7, EMBER
    db 10, SMOKESCREEN
    db 17, DRAGON_RAGE
    db 21, SCARY_FACE
    db 39, SLASH
    db 43, FLAMETHROWER
    db 50, FIRE_SPIN
    db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, GROWL
    db  7, EMBER
    db 10, SMOKESCREEN
    db 17, DRAGON_RAGE
    db 21, SCARY_FACE
    db 41, SLASH
    db 47, FLAMETHROWER
    db 56, FIRE_SPIN
    db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
    db  1, TACKLE
    db  4, TAIL_WHIP
    db  7, WATER_GUN
    db 10, WITHDRAW
    db 13, BUBBLE
    db 16, BITE
    db 19, RAPID_SPIN
    db 22, PROTECT
    db 31, SKULL_BASH
    db 37, RAIN_DANCE
    db 40, HYDRO_PUMP
    db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
    db  1, TACKLE
    db  4, TAIL_WHIP
    db  7, WATER_GUN
    db 10, WITHDRAW
    db 13, BUBBLE
    db 17, BITE
    db 21, RAPID_SPIN
    db 25, PROTECT
    db 37, SKULL_BASH
    db 45, RAIN_DANCE
    db 49, HYDRO_PUMP
    db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  4, TAIL_WHIP
    db  7, WATER_GUN
    db 10, WITHDRAW
    db 13, BUBBLE
    db 17, BITE
    db 21, RAPID_SPIN
    db 25, PROTECT
    db 40, SKULL_BASH
    db 54, RAIN_DANCE
    db 60, HYDRO_PUMP
    db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, STRING_SHOT
    db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
    db  1, HARDEN
    db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
    db  1, GUST
    db 11, CONFUSION
    db 13, POISONPOWDER
    db 13, STUN_SPORE
    db 13, SLEEP_POWDER
    db 17, PSYBEAM
    db 23, SUPERSONIC
    db 25, SAFEGUARD
    db 29, WHIRLWIND
    db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
    db  1, POISON_STING
    db  1, STRING_SHOT
    db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
    db  1, HARDEN
    db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
    db  1, TWINEEDLE
    db 11, FURY_ATTACK
    db 14, RAGE
    db 17, PURSUIT
    db 20, FOCUS_ENERGY
    db 32, PIN_MISSILE
    db 38, AGILITY
    db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
    db  1, TACKLE
    db  5, SAND_ATTACK
    db  9, GUST
    db 13, QUICK_ATTACK
    db 17, WHIRLWIND
    db 21, TWISTER
    db 29, AGILITY
    db 33, WING_ATTACK
    db 45, MIRROR_MOVE
    db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
    db  1, TACKLE
    db  5, SAND_ATTACK
    db  9, GUST
    db 13, QUICK_ATTACK
    db 17, WHIRLWIND
    db 22, TWISTER
    db 32, AGILITY
    db 37, WING_ATTACK
    db 52, MIRROR_MOVE
    db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  5, SAND_ATTACK
    db  9, GUST
    db 13, QUICK_ATTACK
    db 17, WHIRLWIND
    db 22, TWISTER
    db 32, AGILITY
    db 38, WING_ATTACK
    db 56, MIRROR_MOVE
    db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, TAIL_WHIP
    db  4, QUICK_ATTACK
    db  7, FOCUS_ENERGY
    db 10, BITE
    db 13, PURSUIT
    db 16, HYPER_FANG
    db 22, CRUNCH
    db 28, SUPER_FANG
    db 31, DOUBLE_EDGE
    db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, TAIL_WHIP
    db  4, QUICK_ATTACK
    db  7, FOCUS_ENERGY
    db 10, BITE
    db 13, PURSUIT
    db 16, HYPER_FANG
    db 24, CRUNCH
    db 34, SUPER_FANG
    db 39, DOUBLE_EDGE
    db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
    db  1, PECK
    db  1, GROWL
    db  4, LEER
    db  8, PURSUIT
    db 11, FURY_ATTACK
    db 18, MIRROR_MOVE
    db 25, AGILITY
    db 29, FOCUS_ENERGY
    db 36, DRILL_PECK
    db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
    db  1, PECK
    db  1, GROWL
    db  4, LEER
    db  8, PURSUIT
    db 11, FURY_ATTACK
    db 18, MIRROR_MOVE
    db 27, AGILITY
    db 32, FOCUS_ENERGY
    db 41, DRILL_PECK
    db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
    db  1, WRAP
    db  1, LEER
    db  4, POISON_STING
    db  9, BITE
    db 12, GLARE
    db 17, SCREECH
    db 20, ACID
    db 41, HAZE
    db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
    db  1, WRAP
    db  1, LEER
    db  4, POISON_STING
    db  9, BITE
    db 12, GLARE
    db 17, SCREECH
    db 20, ACID
    db 51, HAZE
    db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
    db  1, TAIL_WHIP
    db  1, THUNDERSHOCK
    db  5, GROWL
    db 10, QUICK_ATTACK
    db 18, THUNDER_WAVE
    db 23, DOUBLE_TEAM
    db 26, SPARK
    db 37, SLAM
    db 42, THUNDERBOLT
    db 45, AGILITY
    db 53, LIGHT_SCREEN
    db 58, THUNDER
    db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
    db  1, TAIL_WHIP
    db  1, THUNDERSHOCK
    db  5, GROWL
    db 10, QUICK_ATTACK
    db 18, THUNDER_WAVE
    db 23, DOUBLE_TEAM
    db 26, SPARK
    db 37, SLAM
    db 42, THUNDERBOLT
    db 45, AGILITY
    db 53, LIGHT_SCREEN
    db 58, THUNDER
    db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, DEFENSE_CURL
    db  3, SAND_ATTACK
    db  5, POISON_STING
    db  7, ROLLOUT
    db  9, RAPID_SPIN
    db 11, FURY_CUTTER
    db 14, MAGNITUDE
    db 17, SWIFT
    db 20, FURY_SWIPES
    db 26, SLASH
    db 30, DIG
    db 38, SWORDS_DANCE
    db 42, SANDSTORM
    db 46, EARTHQUAKE
    db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, DEFENSE_CURL
    db  3, SAND_ATTACK
    db  5, POISON_STING
    db  7, ROLLOUT
    db  9, RAPID_SPIN
    db 11, FURY_CUTTER
    db 14, MAGNITUDE
    db 17, SWIFT
    db 20, FURY_SWIPES
    db 28, SLASH
    db 33, DIG
    db 43, SWORDS_DANCE
    db 48, SANDSTORM
    db 53, EARTHQUAKE
    db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
    db  1, GROWL
    db  1, SCRATCH
    db  7, TAIL_WHIP
    db  9, DOUBLE_KICK
    db 13, POISON_STING
    db 19, FURY_SWIPES
    db 21, BITE
    db 37, CRUNCH
    db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
    db  1, GROWL
    db  1, SCRATCH
    db  7, TAIL_WHIP
    db  9, DOUBLE_KICK
    db 13, POISON_STING
    db 20, FURY_SWIPES
    db 23, BITE
    db 43, CRUNCH
    db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
    db  1, GROWL
    db  1, SCRATCH
    db  7, TAIL_WHIP
    db  9, DOUBLE_KICK
    db 13, POISON_STING
    db 20, FURY_SWIPES
    db 23, BITE
    db 35, BODY_SLAM
    db 43, CRUNCH
    db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
    db  1, LEER
    db  1, PECK
    db  7, FOCUS_ENERGY
    db  9, DOUBLE_KICK
    db 13, POISON_STING
    db 19, FURY_ATTACK
    db 21, HORN_ATTACK
    db 45, HORN_DRILL
    db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions

    db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
    db  1, PECK
    db  7, FOCUS_ENERGY
    db  9, DOUBLE_KICK
    db 13, POISON_STING
    db 20, FURY_ATTACK
    db 23, HORN_ATTACK
    db 35, THRASH
    db 58, HORN_DRILL
    db 58, MEGAHORN
    db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
    db  1, POUND
    db  1, GROWL
    db  1, ENCORE
    db  7, SING
    db 10, DOUBLESLAP
    db 13, DEFENSE_CURL
    db 25, MINIMIZE
    db 31, METRONOME
    db 40, BODY_SLAM
    db 43, MOONLIGHT
    db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
    db  1, ENCORE
    db  1, GROWL
    db  1, POUND
    db  7, SING
    db 10, DOUBLESLAP
    db 13, DEFENSE_CURL
    db 25, MINIMIZE
    db 31, METRONOME
    db 40, BODY_SLAM
    db 43, MOONLIGHT
    db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
    db  1, EMBER
    db  4, TAIL_WHIP
    db  7, ROAR
    db 10, QUICK_ATTACK
    db 12, CONFUSE_RAY
    db 15, FIRE_SPIN
    db 23, FAINT_ATTACK
    db 34, SAFEGUARD
    db 36, FLAMETHROWER
    db 42, FIRE_BLAST
    db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
    db  1, EMBER
    db  4, TAIL_WHIP
    db  7, ROAR
    db 10, QUICK_ATTACK
    db 12, CONFUSE_RAY
    db 15, FIRE_SPIN
    db 23, FAINT_ATTACK
    db 34, SAFEGUARD
    db 36, FLAMETHROWER
    db 42, FIRE_BLAST
    db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
    db  1, SING
    db  3, DEFENSE_CURL
    db  5, POUND
    db 14, DISABLE
    db 17, DOUBLESLAP
    db 20, ROLLOUT
    db 30, REST
    db 32, BODY_SLAM
    db 38, MIMIC
    db 45, DOUBLE_EDGE
    db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
    db  1, SING
    db  3, DEFENSE_CURL
    db  5, POUND
    db 14, DISABLE
    db 17, DOUBLESLAP
    db 20, ROLLOUT
    db 30, REST
    db 32, BODY_SLAM
    db 38, MIMIC
    db 45, DOUBLE_EDGE
    db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
    db  1, ABSORB
    db  5, SUPERSONIC
    db 11, BITE
    db 13, WING_ATTACK
    db 17, CONFUSE_RAY
    db 23, SWIFT
    db 29, MEAN_LOOK
    db 31, LEECH_LIFE
    db 35, HAZE
    db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
    db  1, SCREECH
    db  1, ABSORB
    db  5, SUPERSONIC
    db 11, BITE
    db 13, WING_ATTACK
    db 17, CONFUSE_RAY
    db 24, SWIFT
    db 32, MEAN_LOOK
    db 35, LEECH_LIFE
    db 40, HAZE
    db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
    db  1, ABSORB
    db  1, GROWTH
    db  5, SWEET_SCENT
    db  9, ACID
    db 13, POISONPOWDER
    db 14, STUN_SPORE
    db 15, SLEEP_POWDER
    db 19, MEGA_DRAIN
    db 27, MOONLIGHT
    db 31, GIGA_DRAIN
    db 35, TOXIC
    db 51, PETAL_DANCE
    db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
    db  1, ABSORB
    db  1, GROWTH
    db  5, SWEET_SCENT
    db  9, ACID
    db 13, POISONPOWDER
    db 14, STUN_SPORE
    db 15, SLEEP_POWDER
    db 19, MEGA_DRAIN
    db 29, MOONLIGHT
    db 34, GIGA_DRAIN
    db 39, TOXIC
    db 59, PETAL_DANCE
    db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
    db  1, ABSORB
    db  1, GROWTH
    db  5, SWEET_SCENT
    db  9, ACID
    db 13, POISONPOWDER
    db 14, STUN_SPORE
    db 15, SLEEP_POWDER
    db 19, MEGA_DRAIN
    db 29, MOONLIGHT
    db 34, GIGA_DRAIN
    db 39, TOXIC
    db 59, PETAL_DANCE
    db 69, SOLARBEAM
    db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  6, STUN_SPORE
    db  6, POISONPOWDER
    db 11, ABSORB
    db 17, FURY_CUTTER
    db 22, SPORE
    db 27, SLASH
    db 33, GROWTH
    db 38, GIGA_DRAIN
	db 43, LEECH_LIFE
    db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  6, STUN_SPORE
    db  6, POISONPOWDER
    db 11, ABSORB
    db 17, FURY_CUTTER
    db 22, SPORE
    db 29, SLASH
    db 37, GROWTH
    db 44, GIGA_DRAIN
	db 50, LEECH_LIFE
    db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, DISABLE
    db  1, FORESIGHT
    db  5, SUPERSONIC
    db 11, CONFUSION
    db 13, POISONPOWDER
    db 17, PSYBEAM
    db 23, STUN_SPORE
    db 29, SLEEP_POWDER
    db 35, LEECH_LIFE
    db 47, PSYCHIC_M
    db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
    db  1, GUST
    db  1, TACKLE
    db  1, DISABLE
    db  1, FORESIGHT
    db  5, SUPERSONIC
    db 11, CONFUSION
    db 13, POISONPOWDER
    db 17, PSYBEAM
    db 23, STUN_SPORE
    db 29, SLEEP_POWDER
    db 37, LEECH_LIFE
    db 55, PSYCHIC_M
    db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
    db  1, SAND_ATTACK
    db  1, SCRATCH
    db  4, GROWL
    db 10, MUD_SLAP
    db 14, MAGNITUDE
    db 31, DIG
    db 35, SLASH
    db 39, EARTHQUAKE
    db 43, FISSURE
    db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, SAND_ATTACK
    db  4, GROWL
    db 10, MUD_SLAP
    db 14, MAGNITUDE
    db 35, DIG
    db 41, SLASH
    db 47, EARTHQUAKE
    db 53, FISSURE
    db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, GROWL
    db  6, BITE
    db 14, FURY_SWIPES
    db 17, SCREECH
    db 22, FAINT_ATTACK
    db 30, PAY_DAY
    db 33, SLASH
    db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
    db  1, SWIFT
    db  1, SCRATCH
    db  1, GROWL
    db  6, BITE
    db 14, FURY_SWIPES
    db 17, SCREECH
    db 22, FAINT_ATTACK
    db 37, SLASH
    db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  4, TAIL_WHIP
    db  7, WATER_GUN
    db 10, CONFUSION
    db 13, FURY_SWIPES
    db 19, DISABLE
    db 22, SCREECH
    db 34, PSYCH_UP
    db 37, AMNESIA
    db 40, HYDRO_PUMP
    db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  4, TAIL_WHIP
    db  7, WATER_GUN
    db 10, CONFUSION
    db 13, FURY_SWIPES
    db 19, DISABLE
    db 22, SCREECH
    db 36, PSYCH_UP
    db 41, AMNESIA
    db 46, HYDRO_PUMP
    db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, LOW_KICK
    db  1, LEER
    db  1, FOCUS_ENERGY
    db  5, FURY_SWIPES
    db  8, KARATE_CHOP
    db 12, PURSUIT
    db 15, SEISMIC_TOSS
    db 19, SWAGGER
    db 22, CROSS_CHOP
    db 33, THRASH
    db 40, SCREECH
    db 47, OUTRAGE
    db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
    db  1, RAGE
    db  1, SCRATCH
    db  1, LOW_KICK
    db  1, LEER
    db  1, FOCUS_ENERGY
    db  5, FURY_SWIPES
    db  8, KARATE_CHOP
    db 12, PURSUIT
    db 15, SEISMIC_TOSS
    db 19, SWAGGER
    db 22, CROSS_CHOP
    db 35, THRASH
    db 44, SCREECH
    db 53, OUTRAGE
    db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
    db  1, BITE
    db  1, ROAR
    db  6, EMBER
    db  8, LEER
    db 17, FLAME_WHEEL
    db 19, REVERSAL
    db 23, TAKE_DOWN
    db 30, AGILITY
    db 34, FLAMETHROWER
    db 39, CRUNCH
    db 43, OUTRAGE
    db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
    db  1, BITE
    db  1, ROAR
    db  6, EMBER
    db  8, LEER
    db 17, FLAME_WHEEL
    db 19, REVERSAL
    db 23, TAKE_DOWN
    db 30, AGILITY
    db 34, EXTREMESPEED
    db 34, FLAMETHROWER
    db 39, CRUNCH
    db 43, OUTRAGE
    db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
    db  5, WATER_GUN
    db  8, HYPNOSIS
    db 11, BUBBLE
    db 15, DOUBLESLAP
    db 18, RAIN_DANCE
    db 21, BODY_SLAM
    db 25, BUBBLEBEAM
    db 31, BELLY_DRUM
    db 38, HYDRO_PUMP
    db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
    db  1, WATER_GUN
    db  8, HYPNOSIS
    db 11, BUBBLE
    db 15, DOUBLESLAP
    db 18, RAIN_DANCE
    db 21, BODY_SLAM
    db 27, BUBBLEBEAM
    db 37, BELLY_DRUM
    db 48, HYDRO_PUMP
    db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
    db  1, SUBMISSION
    db  1, WATER_GUN
    db  8, HYPNOSIS
    db 11, BUBBLE
    db 15, DOUBLESLAP
    db 18, RAIN_DANCE
    db 21, BODY_SLAM
    db 27, BUBBLEBEAM
    db 32, DYNAMICPUNCH
    db 37, BELLY_DRUM
    db 43, MIND_READER
    db 48, HYDRO_PUMP
    db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
    db  1, TELEPORT
    db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, ALAKAZAM
	db 0 ; no more evolutions
    db  1, KINESIS
    db  1, TELEPORT
    db 16, CONFUSION
    db 18, DISABLE
    db 21, PSYBEAM
    db 26, REFLECT
    db 31, RECOVER
    db 38, PSYCHIC_M
    db 43, FUTURE_SIGHT
    db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
    db  1, KINESIS
    db  1, TELEPORT
    db 16, CONFUSION
    db 18, DISABLE
    db 21, PSYBEAM
    db 26, REFLECT
    db 31, RECOVER
    db 38, PSYCHIC_M
    db 43, FUTURE_SIGHT
    db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
    db  1, LOW_KICK
    db  1, LEER
    db  3, FOCUS_ENERGY
    db  7, KARATE_CHOP
    db  9, FORESIGHT
    db 15, SEISMIC_TOSS
    db 33, SUBMISSION
    db 39, CROSS_CHOP
    db 43, SCARY_FACE
    db 45, DYNAMICPUNCH
    db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, MACHAMP
	db 0 ; no more evolutions
    db  1, LOW_KICK
    db  1, LEER
    db  3, FOCUS_ENERGY
    db  7, KARATE_CHOP
    db  9, FORESIGHT
    db 15, SEISMIC_TOSS
    db 37, SUBMISSION
    db 47, CROSS_CHOP
    db 53, SCARY_FACE
    db 57, DYNAMICPUNCH
    db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
    db  1, STRENGTH
    db  1, LOW_KICK
    db  1, LEER
    db  3, FOCUS_ENERGY
    db  7, KARATE_CHOP
    db  9, FORESIGHT
    db 15, SEISMIC_TOSS
    db 37, SUBMISSION
    db 47, CROSS_CHOP
    db 53, SCARY_FACE
    db 57, DYNAMICPUNCH
    db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
    db  1, VINE_WHIP
    db  7, GROWTH
    db 11, WRAP
    db 13, SLEEP_POWDER
    db 15, POISONPOWDER
    db 17, STUN_SPORE
    db 23, ACID
    db 29, SWEET_SCENT
    db 39, RAZOR_LEAF
    db 47, SLAM
    db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
    db  1, VINE_WHIP
    db  7, GROWTH
    db 11, WRAP
    db 13, SLEEP_POWDER
    db 15, POISONPOWDER
    db 17, STUN_SPORE
    db 24, ACID
    db 32, SWEET_SCENT
    db 44, RAZOR_LEAF
    db 54, SLAM
    db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
    db  1, VINE_WHIP
    db  7, GROWTH
    db 11, WRAP
    db 13, SLEEP_POWDER
    db 15, POISONPOWDER
    db 17, STUN_SPORE
    db 24, ACID
    db 32, SWEET_SCENT
    db 44, RAZOR_LEAF
    db 54, SLAM
    db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
    db  1, POISON_STING
    db  4, SUPERSONIC
    db  7, CONSTRICT
    db 10, ACID
    db 19, WRAP
    db 25, BUBBLEBEAM
    db 28, BARRIER
    db 37, SCREECH
    db 46, HYDRO_PUMP
    db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
    db  1, POISON_STING
    db  4, SUPERSONIC
    db  7, CONSTRICT
    db 10, ACID
    db 19, WRAP
    db 25, BUBBLEBEAM
    db 28, BARRIER
    db 40, SCREECH
    db 52, HYDRO_PUMP
    db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, DEFENSE_CURL
    db 10, ROLLOUT
    db 12, MAGNITUDE
    db 16, ROCK_THROW
    db 24, SELFDESTRUCT
    db 34, EARTHQUAKE
    db 36, EXPLOSION
    db 40, DOUBLE_EDGE
    db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, GOLEM
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, DEFENSE_CURL
    db 10, ROLLOUT
    db 12, MAGNITUDE
    db 16, ROCK_THROW
    db 24, SELFDESTRUCT
    db 40, EARTHQUAKE
    db 44, EXPLOSION
    db 50, DOUBLE_EDGE
    db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, DEFENSE_CURL
    db 12, MAGNITUDE
    db 16, ROCK_THROW
    db 24, SELFDESTRUCT
    db 40, EARTHQUAKE
    db 44, EXPLOSION
    db 50, DOUBLE_EDGE
    db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
    db  1, GROWL
    db  1, TACKLE
    db  4, TAIL_WHIP
    db  9, EMBER
    db 13, FLAME_WHEEL
    db 17, STOMP
    db 25, FIRE_SPIN
    db 29, TAKE_DOWN
    db 37, AGILITY
    db 41, FIRE_BLAST
    db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
    db  1, GROWL
    db  1, QUICK_ATTACK
    db  4, TAIL_WHIP
    db  9, EMBER
    db 13, FLAME_WHEEL
    db 17, STOMP
    db 25, FIRE_SPIN
    db 29, TAKE_DOWN
    db 37, AGILITY
    db 41, FIRE_BLAST
    db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
    db  1, CURSE
    db  1, TACKLE
    db  5, GROWL
    db  9, WATER_GUN
    db 14, CONFUSION
    db 19, DISABLE
    db 23, HEADBUTT
    db 41, AMNESIA
    db 45, PSYCHIC_M
    db 49, RAIN_DANCE
    db 54, PSYCH_UP
    db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
    db  1, WITHDRAW
    db  1, CURSE
    db  1, TACKLE
    db  5, GROWL
    db  9, WATER_GUN
    db 14, CONFUSION
    db 19, DISABLE
    db 23, HEADBUTT
    db 43, AMNESIA
    db 49, PSYCHIC_M
    db 55, RAIN_DANCE
    db 62, PSYCH_UP
    db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
    db  1, SUPERSONIC
    db  1, TACKLE
    db  5, THUNDERSHOCK
    db  7, THUNDER_WAVE
    db 13, LIGHT_SCREEN
    db 17, SONICBOOM
    db 19, SPARK
    db 35, SCREECH
    db 41, LOCK_ON
    db 49, ZAP_CANNON
    db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
    db  1, SUPERSONIC
    db  1, TACKLE
    db  5, THUNDERSHOCK
    db  7, THUNDER_WAVE
    db 13, LIGHT_SCREEN
    db 17, SONICBOOM
    db 19, SPARK
    db 39, SCREECH
    db 49, LOCK_ON
    db 63, ZAP_CANNON
    db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
    db  1, PECK
    db  1, SAND_ATTACK
    db  1, LEER
    db  1, FURY_CUTTER
    db  7, FURY_ATTACK
    db 19, SLASH
    db 25, SWORDS_DANCE
    db 31, AGILITY
    db 45, FALSE_SWIPE
    db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
    db  1, PECK
    db  1, GROWL
    db  5, QUICK_ATTACK
    db  8, RAGE
    db 12, FURY_ATTACK
    db 15, PURSUIT
    db 26, AGILITY
    db 36, SWORDS_DANCE
    db 40, JUMP_KICK
    db 43, DRILL_PECK
    db 50, THRASH
    db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
    db  1, PECK
    db  1, GROWL
    db  5, QUICK_ATTACK
    db  8, RAGE
    db 12, FURY_ATTACK
    db 15, PURSUIT
    db 26, AGILITY
    db 38, SWORDS_DANCE
    db 43, JUMP_KICK
    db 47, DRILL_PECK
    db 56, THRASH
    db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
    db  1, HEADBUTT
    db  3, GROWL
    db 11, ICY_WIND
    db 13, ENCORE
    db 21, REST
    db 27, AURORA_BEAM
    db 37, TAKE_DOWN
    db 47, ICE_BEAM
    db 51, SAFEGUARD
    db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
    db  1, HEADBUTT
    db  3, GROWL
    db 11, ICY_WIND
    db 13, ENCORE
    db 21, REST
    db 27, AURORA_BEAM
    db 39, TAKE_DOWN
    db 55, ICE_BEAM
    db 61, SAFEGUARD
    db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
    db  1, POUND
    db  1, POISON_GAS
    db  4, HARDEN
    db  7, MUD_SLAP
    db 12, DISABLE
    db 15, SLUDGE
    db 21, MINIMIZE
    db 29, SLUDGE_BOMB
    db 37, SCREECH
    db 43, ACID_ARMOR
    db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
    db  1, POUND
    db  1, POISON_GAS
    db  4, HARDEN
    db  7, MUD_SLAP
    db 12, DISABLE
    db 15, SLUDGE
    db 21, MINIMIZE
    db 29, SLUDGE_BOMB
    db 37, SCREECH
    db 46, ACID_ARMOR
    db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, WATER_GUN
    db  4, WITHDRAW
    db  8, SUPERSONIC
    db 16, PROTECT
    db 20, LEER
    db 25, CLAMP
    db 37, AURORA_BEAM
    db 40, WHIRLPOOL
    db 52, ICE_BEAM
    db 61, HYDRO_PUMP
    db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, WATER_GUN
    db  4, WITHDRAW
    db  8, SUPERSONIC
    db 13, SPIKE_CANNON
    db 16, PROTECT
    db 20, LEER
    db 25, CLAMP
    db 28, SPIKES
    db 37, AURORA_BEAM
    db 40, WHIRLPOOL
    db 52, ICE_BEAM
    db 61, HYDRO_PUMP
    db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
    db  1, HYPNOSIS
    db  1, LICK
    db  5, SPITE
    db  8, MEAN_LOOK
    db 12, CURSE
    db 15, NIGHT_SHADE
    db 19, CONFUSE_RAY
    db 29, SHADOW_BALL
    db 33, DREAM_EATER
    db 40, DESTINY_BOND
    db 47, NIGHTMARE
    db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, GENGAR
	db 0 ; no more evolutions
    db  1, HYPNOSIS
    db  1, LICK
    db  5, SPITE
    db  8, MEAN_LOOK
    db 12, CURSE
    db 15, NIGHT_SHADE
    db 19, CONFUSE_RAY
    db 33, SHADOW_BALL
    db 39, DREAM_EATER
    db 50, DESTINY_BOND
    db 61, NIGHTMARE
    db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
    db  1, HYPNOSIS
    db  1, LICK
    db  5, SPITE
    db  8, MEAN_LOOK
    db 12, CURSE
    db 15, NIGHT_SHADE
    db 19, CONFUSE_RAY
    db 33, SHADOW_BALL
    db 39, DREAM_EATER
    db 50, DESTINY_BOND
    db 61, NIGHTMARE
    db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, HARDEN
    db  1, BIND
    db  4, CURSE
    db  7, ROCK_THROW
    db 13, RAGE
    db 25, DRAGONBREATH
    db 28, SLAM
    db 31, SCREECH
    db 34, ROCK_SLIDE
    db 40, IRON_TAIL
    db 43, DIG
    db 49, DOUBLE_EDGE
    db 52, SANDSTORM
    db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
    db  1, HYPNOSIS
    db  1, POUND
    db  5, DISABLE
    db  9, CONFUSION
    db 13, HEADBUTT
    db 17, POISON_GAS
    db 21, MEDITATE
    db 25, PSYBEAM
    db 33, PSYCH_UP
    db 45, SWAGGER
    db 49, PSYCHIC_M
    db 61, FUTURE_SIGHT
    db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
    db  1, POUND
    db  1, HYPNOSIS
    db  5, DISABLE
    db  9, CONFUSION
    db 13, HEADBUTT
    db 17, POISON_GAS
    db 21, MEDITATE
    db 25, PSYBEAM
    db 33, PSYCH_UP
    db 45, SWAGGER
    db 49, PSYCHIC_M
    db 61, FUTURE_SIGHT
    db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
    db  1, BUBBLE
    db  5, VICEGRIP
    db  9, LEER
    db 11, HARDEN
    db 15, BUBBLEBEAM
    db 21, METAL_CLAW
    db 25, STOMP
    db 29, PROTECT
    db 31, GUILLOTINE
    db 35, SLAM
    db 41, CRABHAMMER
    db 45, FLAIL
    db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
    db  1, BUBBLE
    db  5, VICEGRIP
    db  9, LEER
    db 11, HARDEN
    db 15, BUBBLEBEAM
    db 21, METAL_CLAW
    db 25, STOMP
    db 32, PROTECT
    db 37, GUILLOTINE
    db 44, SLAM
    db 56, CRABHAMMER
    db 63, FLAIL
    db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
    db  1, TACKLE
    db  4, SONICBOOM
    db  9, SPARK
    db 11, ROLLOUT
    db 13, SCREECH
    db 20, SWIFT
    db 26, SELFDESTRUCT
    db 29, LIGHT_SCREEN
    db 41, EXPLOSION
    db 48, MIRROR_COAT
    db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  4, SONICBOOM
    db  9, SPARK
    db 11, ROLLOUT
    db 13, SCREECH
    db 20, SWIFT
    db 26, SELFDESTRUCT
    db 29, LIGHT_SCREEN
    db 47, EXPLOSION
    db 58, MIRROR_COAT
    db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
    db  1, BARRAGE
    db  1, HYPNOSIS
    db  7, REFLECT
    db 11, LEECH_SEED
    db 19, STUN_SPORE
    db 21, POISONPOWDER
    db 23, SLEEP_POWDER
    db 27, CONFUSION
    db 43, SOLARBEAM
    db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
    db  1, BARRAGE
    db  1, HYPNOSIS
    db  1, STOMP
    db  7, REFLECT
    db 11, LEECH_SEED
    db 19, STUN_SPORE
    db 21, POISONPOWDER
    db 23, SLEEP_POWDER
    db 27, CONFUSION
    db 27, EGG_BOMB
    db 43, SOLARBEAM
    db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
    db  1, GROWL
    db  3, TAIL_WHIP
    db  7, BONE_CLUB
    db 11, HEADBUTT
    db 13, LEER
    db 17, FOCUS_ENERGY
    db 21, BONEMERANG
    db 23, RAGE
    db 27, FALSE_SWIPE
    db 31, THRASH
    db 43, DOUBLE_EDGE
    db 51, BONE_RUSH
    db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
    db  1, GROWL
    db  3, TAIL_WHIP
    db  7, BONE_CLUB
    db 11, HEADBUTT
    db 13, LEER
    db 17, FOCUS_ENERGY
    db 21, BONEMERANG
    db 23, RAGE
    db 27, FALSE_SWIPE
    db 33, THRASH
    db 53, DOUBLE_EDGE
    db 65, BONE_RUSH
    db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
    db  1, DOUBLE_KICK
    db  5, MEDITATE
    db  9, ROLLING_KICK
    db 13, JUMP_KICK
    db 21, FOCUS_ENERGY
    db 29, HI_JUMP_KICK
    db 33, MIND_READER
    db 37, FORESIGHT
    db 49, ENDURE
    db 53, MEGA_KICK
    db 61, REVERSAL
    db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
    db  1, COMET_PUNCH
    db  6, AGILITY
    db 11, PURSUIT
    db 16, MACH_PUNCH
    db 36, THUNDERPUNCH
    db 36, ICE_PUNCH
    db 36, FIRE_PUNCH
    db 46, MEGA_PUNCH
    db 50, DETECT
    db 61, COUNTER
    db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
    db  1, LICK
    db  5, SUPERSONIC
    db  9, DEFENSE_CURL
    db 17, WRAP
    db 21, STOMP
    db 25, DISABLE
    db 29, SLAM
    db 33, ROLLOUT
    db 49, SCREECH
    db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
    db  1, POISON_GAS
    db  1, TACKLE
    db  4, SMOG
    db  7, SMOKESCREEN
    db 18, SLUDGE
    db 23, SELFDESTRUCT
    db 26, HAZE
    db 34, SLUDGE_BOMB
    db 37, EXPLOSION
    db 40, DESTINY_BOND
    db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
    db  1, POISON_GAS
    db  1, TACKLE
    db  4, SMOG
    db  7, SMOKESCREEN
    db 23, SELFDESTRUCT
    db 26, HAZE
    db 34, SLUDGE_BOMB
    db 40, EXPLOSION
    db 46, DESTINY_BOND
    db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
    db  1, HORN_ATTACK
    db  1, TAIL_WHIP
    db  1, FURY_ATTACK
    db  1, SCARY_FACE
    db  5, FURY_ATTACK
    db  9, SCARY_FACE
    db 17, STOMP
    db 37, TAKE_DOWN
    db 45, EARTHQUAKE
    db 49, MEGAHORN
    db 53, HORN_DRILL
    db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
    db  1, HORN_ATTACK
    db  1, TAIL_WHIP
    db  5, FURY_ATTACK
    db  9, SCARY_FACE
    db 17, STOMP
    db 37, TAKE_DOWN
    db 48, EARTHQUAKE
    db 55, MEGAHORN
    db 62, HORN_DRILL
    db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
    db  1, DEFENSE_CURL
    db  1, GROWL
    db  1, POUND
    db  5, TAIL_WHIP
    db 12, DOUBLESLAP
    db 16, SOFTBOILED
    db 23, MINIMIZE
    db 27, TAKE_DOWN
    db 31, SING
    db 44, EGG_BOMB
    db 50, LIGHT_SCREEN
    db 65, DOUBLE_EDGE
    db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
    db  1, CONSTRICT
    db  4, SLEEP_POWDER
    db  7, VINE_WHIP
    db 10, ABSORB
    db 14, POISONPOWDER
    db 17, BIND
    db 20, GROWTH
    db 23, MEGA_DRAIN
    db 30, STUN_SPORE
    db 36, GIGA_DRAIN
    db 38, ANCIENTPOWER
    db 41, SLAM
    db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
    db  1, COMET_PUNCH
    db  1, LEER
    db 10, TAIL_WHIP
    db 13, BITE
    db 22, RAGE
    db 25, MEGA_PUNCH
    db 34, DIZZY_PUNCH
    db 37, CRUNCH
    db 43, ENDURE
    db 46, OUTRAGE
    db 50, REVERSAL
    db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
    db  1, BUBBLE
    db  5, SMOKESCREEN
    db  9, LEER
    db 13, WATER_GUN
    db 17, TWISTER
    db 21, BUBBLEBEAM
    db 26, FOCUS_ENERGY
    db 36, AGILITY
    db 52, HYDRO_PUMP
    db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
    db  1, WATER_GUN
    db  5, SMOKESCREEN
    db  9, LEER
    db 17, TWISTER
    db 21, BUBBLEBEAM
    db 26, FOCUS_ENERGY
    db 38, AGILITY
    db 60, HYDRO_PUMP
    db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
    db  1, PECK
    db  1, TAIL_WHIP
    db  5, SUPERSONIC
    db  8, HORN_ATTACK
    db 13, FLAIL
    db 24, FURY_ATTACK
    db 29, AGILITY
    db 32, WATERFALL
    db 37, HORN_DRILL
    db 45, MEGAHORN
    db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
    db  1, PECK
    db  1, TAIL_WHIP
    db  5, SUPERSONIC
    db  8, HORN_ATTACK
    db 13, FLAIL
    db 24, FURY_ATTACK
    db 29, AGILITY
    db 32, WATERFALL
    db 40, HORN_DRILL
    db 54, MEGAHORN
    db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, HARDEN
    db  4, WATER_GUN
    db  7, RAPID_SPIN
    db 10, RECOVER
    db 13, PSYWAVE
    db 16, SWIFT
    db 18, BUBBLEBEAM
    db 31, MINIMIZE
    db 40, CONFUSE_RAY
    db 42, PSYCHIC_M
    db 46, LIGHT_SCREEN
    db 53, HYDRO_PUMP
    db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
    db  1, HARDEN
    db  1, TACKLE
    db  4, WATER_GUN
    db  7, RAPID_SPIN
    db 10, RECOVER
    db 13, PSYWAVE
    db 16, SWIFT
    db 18, BUBBLEBEAM
    db 31, MINIMIZE
    db 40, CONFUSE_RAY
    db 42, PSYCHIC_M
    db 46, LIGHT_SCREEN
    db 53, HYDRO_PUMP
    db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
    db  1, BARRIER
    db  1, POUND
    db  1, CONFUSION
    db  8, MEDITATE
    db 11, DOUBLESLAP
    db 15, MIMIC
    db 15, PSYWAVE
    db 18, ENCORE
    db 22, LIGHT_SCREEN
    db 22, REFLECT
    db 25, PSYBEAM
    db 29, SUBSTITUTE
    db 39, PSYCHIC_M
    db 46, BATON_PASS
    db 50, SAFEGUARD
    db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
    db  1, QUICK_ATTACK
    db  1, LEER
    db  5, FOCUS_ENERGY
    db  9, PURSUIT
    db 13, FALSE_SWIPE
    db 17, AGILITY
    db 21, WING_ATTACK
    db 25, FURY_CUTTER
    db 29, SLASH
    db 33, RAZOR_WIND
    db 37, DOUBLE_TEAM
    db 57, SWORDS_DANCE
    db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
    db  1, POUND
    db  5, LICK
    db  8, LOVELY_KISS
    db 11, POWDER_SNOW
    db 15, DOUBLESLAP
    db 18, ICE_PUNCH
    db 25, MEAN_LOOK
    db 44, BODY_SLAM
    db 55, PERISH_SONG
    db 60, BLIZZARD
    db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
    db  1, QUICK_ATTACK
    db  1, LEER
    db  5, THUNDERSHOCK
    db  8, LOW_KICK
    db 12, SWIFT
    db 19, THUNDER_WAVE
    db 26, LIGHT_SCREEN
    db 29, THUNDERPUNCH
    db 42, SCREECH
    db 49, THUNDERBOLT
    db 55, THUNDER
    db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
    db  1, SMOG
    db  1, LEER
    db  5, EMBER
    db  8, SMOKESCREEN
    db 12, FAINT_ATTACK
    db 15, FIRE_SPIN
    db 26, CONFUSE_RAY
    db 29, FIRE_PUNCH
    db 42, SUNNY_DAY
    db 49, FLAMETHROWER
    db 55, FIRE_BLAST
    db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
    db  1, VICEGRIP
    db  1, FOCUS_ENERGY
    db  4, BIND
    db  8, SEISMIC_TOSS
    db 11, HARDEN
    db 33, SUBMISSION
    db 40, SWORDS_DANCE
    db 43, THRASH
    db 50, GUILLOTINE
    db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  3, TAIL_WHIP
    db  5, RAGE
    db  8, HORN_ATTACK
    db 11, SCARY_FACE
    db 15, PURSUIT
    db 19, REST
    db 35, TAKE_DOWN
    db 48, SWAGGER
    db 55, THRASH
    db 63, DOUBLE_EDGE
    db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
    db  1, SPLASH
    db 15, TACKLE
    db 30, FLAIL
    db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
    db  1, THRASH
    db 21, LEER
    db 24, TWISTER
    db 33, SCARY_FACE
    db 36, DRAGON_RAGE
    db 39, CRUNCH
    db 42, HYDRO_PUMP
    db 51, RAIN_DANCE
    db 54, HYPER_BEAM
    db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
    db  1, SING
    db  1, GROWL
    db  1, WATER_GUN
    db  4, MIST
    db  7, CONFUSE_RAY
    db 18, BODY_SLAM
    db 22, RAIN_DANCE
    db 27, PERISH_SONG
    db 32, ICE_BEAM
    db 43, SAFEGUARD
    db 47, HYDRO_PUMP
    db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
    db  1, TRANSFORM
    db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
    db  1, GROWL
    db  1, TACKLE
    db  1, TAIL_WHIP
    db  5, SAND_ATTACK
    db 13, QUICK_ATTACK
    db 17, BITE
    db 17, SWIFT
    db 25, TAKE_DOWN
    db 29, CHARM
    db 33, BATON_PASS
    db 37, DOUBLE_EDGE
    db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
    db  1, WATER_GUN
    db  1, TACKLE
    db  1, TAIL_WHIP
    db  5, SAND_ATTACK
    db 13, QUICK_ATTACK
    db 20, AURORA_BEAM
    db 29, ACID_ARMOR
    db 33, HAZE
    db 45, HYDRO_PUMP
    db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
    db  1, THUNDERSHOCK
    db  1, TACKLE
    db  1, TAIL_WHIP
    db  5, SAND_ATTACK
    db 13, QUICK_ATTACK
    db 17, DOUBLE_KICK
    db 25, PIN_MISSILE
    db 29, AGILITY
    db 33, THUNDER_WAVE
    db 45, THUNDER
    db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
    db  1, EMBER
    db  1, TACKLE
    db  1, TAIL_WHIP
    db  5, SAND_ATTACK
    db 13, QUICK_ATTACK
    db 17, BITE
    db 25, FIRE_SPIN
    db 29, SCARY_FACE
    db 33, SMOG
    db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
    db  1, CONVERSION2
    db  1, TACKLE
    db  1, CONVERSION
    db  1, SHARPEN
    db  7, PSYBEAM
    db 12, AGILITY
    db 18, RECOVER
    db 45, LOCK_ON
    db 50, TRI_ATTACK
    db 62, ZAP_CANNON
    db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
    db  1, CONSTRICT
    db  1, WITHDRAW
    db  7, BITE
    db 10, WATER_GUN
    db 16, ROLLOUT
    db 19, LEER
    db 34, PROTECT
    db 37, ANCIENTPOWER
    db 55, HYDRO_PUMP
    db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
    db  1, CONSTRICT
    db  1, WITHDRAW
    db  7, BITE
    db 10, WATER_GUN
    db 16, ROLLOUT
    db 19, LEER
    db 34, PROTECT
    db 37, ANCIENTPOWER
    db 75, HYDRO_PUMP
    db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, HARDEN
    db  6, ABSORB
    db 11, LEER
    db 21, SAND_ATTACK
    db 26, ENDURE
    db 36, MEGA_DRAIN
    db 46, ANCIENTPOWER
    db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, HARDEN
    db  6, ABSORB
    db 11, LEER
    db 21, SAND_ATTACK
    db 26, ENDURE
    db 36, MEGA_DRAIN
    db 54, ANCIENTPOWER
    db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
    db  1, WING_ATTACK
    db  1, SUPERSONIC
    db  1, BITE
    db  1, SCARY_FACE
    db  9, ROAR
    db 17, AGILITY
    db 25, ANCIENTPOWER
    db 33, CRUNCH
    db 41, TAKE_DOWN
    db 65, HYPER_BEAM
    db 73, ROCK_SLIDE
    db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  4, DEFENSE_CURL
    db  9, AMNESIA
    db 12, LICK
    db 25, BODY_SLAM
    db 28, REST
    db 28, SNORE
    db 33, SLEEP_TALK
    db 36, ROLLOUT
    db 44, BELLY_DRUM
    db 49, CRUNCH
    db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
    db  1, GUST
    db  1, POWDER_SNOW
    db  8, MIST
    db 22, MIND_READER
    db 29, ANCIENTPOWER
    db 36, AGILITY
    db 50, REFLECT
    db 71, ICE_BEAM
    db 78, BLIZZARD
    db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
    db  1, PECK
    db  1, THUNDERSHOCK
    db  8, THUNDER_WAVE
    db 15, DETECT
    db 29, ANCIENTPOWER
    db 43, AGILITY
    db 57, RAIN_DANCE
    db 64, LIGHT_SCREEN
    db 71, DRILL_PECK
    db 78, THUNDER
    db 99, ZAP_CANNON
    db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
    db  1, WING_ATTACK
    db  1, EMBER
    db  8, FIRE_SPIN
    db 15, AGILITY
    db 22, ENDURE
    db 29, ANCIENTPOWER
    db 36, FLAMETHROWER
    db 43, SAFEGUARD
    db 57, SUNNY_DAY
    db 71, SOLARBEAM
    db 78, SKY_ATTACK
    db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
    db  1, WRAP
    db  1, LEER
    db  5, THUNDER_WAVE
    db 11, TWISTER
    db 15, DRAGON_RAGE
    db 21, SLAM
    db 25, AGILITY
    db 45, SAFEGUARD
    db 55, OUTRAGE
    db 61, HYPER_BEAM
    db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
    db  1, WRAP
    db  1, LEER
    db  5, THUNDER_WAVE
    db 11, TWISTER
    db 15, DRAGON_RAGE
    db 21, SLAM
    db 25, AGILITY
    db 53, SAFEGUARD
    db 67, OUTRAGE
    db 75, HYPER_BEAM
    db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
    db  1, WRAP
    db  1, LEER
    db  5, THUNDER_WAVE
    db 11, TWISTER
    db 15, DRAGON_RAGE
    db 21, SLAM
    db 25, AGILITY
    db 53, SAFEGUARD
    db 67, OUTRAGE
    db 75, HYPER_BEAM
    db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
    db  1, PSYWAVE
    db  1, CONFUSION
    db  1, DISABLE
    db  1, SAFEGUARD
    db  8, SWIFT
    db 15, FUTURE_SIGHT
    db 22, PSYCH_UP
    db 50, RECOVER
    db 57, PSYCHIC_M
    db 64, BARRIER
    db 79, AMNESIA
    db 86, MIST
    db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
    db  1, POUND
    db  1, TRANSFORM
    db 10, MEGA_PUNCH
    db 20, METRONOME
    db 30, PSYCHIC_M
    db 40, BARRIER
    db 50, ANCIENTPOWER
    db 60, AMNESIA
    db 80, BATON_PASS
    db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, GROWL
    db  6, RAZOR_LEAF
    db  9, POISONPOWDER
    db 12, SYNTHESIS
    db 17, REFLECT
    db 28, SWEET_SCENT
    db 31, LIGHT_SCREEN
    db 34, BODY_SLAM
    db 39, SAFEGUARD
    db 45, SOLARBEAM
    db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, GROWL
    db  6, RAZOR_LEAF
    db  9, POISONPOWDER
    db 12, SYNTHESIS
    db 18, REFLECT
    db 32, SWEET_SCENT
    db 36, LIGHT_SCREEN
    db 40, BODY_SLAM
    db 46, SAFEGUARD
    db 54, SOLARBEAM
    db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, GROWL
    db  6, RAZOR_LEAF
    db  9, POISONPOWDER
    db 12, SYNTHESIS
    db 18, REFLECT
    db 34, SWEET_SCENT
    db 40, LIGHT_SCREEN
    db 46, BODY_SLAM
    db 54, SAFEGUARD
    db 66, SOLARBEAM
    db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, LEER
    db  6, SMOKESCREEN
    db 10, EMBER
    db 13, QUICK_ATTACK
    db 19, FLAME_WHEEL
    db 22, DEFENSE_CURL
    db 31, SWIFT
    db 40, FLAMETHROWER
    db 49, ROLLOUT
    db 55, DOUBLE_EDGE
    db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, LEER
    db  6, SMOKESCREEN
    db 10, EMBER
    db 13, QUICK_ATTACK
    db 20, FLAME_WHEEL
    db 24, DEFENSE_CURL
    db 31, SWIFT
    db 46, FLAMETHROWER
    db 57, ROLLOUT
    db 64, DOUBLE_EDGE
    db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, LEER
    db  6, SMOKESCREEN
    db 10, EMBER
    db 13, QUICK_ATTACK
    db 20, FLAME_WHEEL
    db 24, DEFENSE_CURL
    db 31, SWIFT
    db 48, FLAMETHROWER
    db 61, ROLLOUT
    db 69, DOUBLE_EDGE
    db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, LEER
    db  6, WATER_GUN
    db  8, RAGE
    db 13, BITE
    db 15, SCARY_FACE
    db 22, FLAIL
    db 27, CRUNCH
    db 34, SLASH
    db 36, SCREECH
    db 41, THRASH
    db 50, HYDRO_PUMP
    db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, LEER
    db  6, WATER_GUN
    db  8, RAGE
    db 13, BITE
    db 15, SCARY_FACE
    db 24, FLAIL
    db 30, CRUNCH
    db 39, SLASH
    db 42, SCREECH
    db 48, THRASH
    db 60, HYDRO_PUMP
    db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, LEER
    db  6, WATER_GUN
    db  8, RAGE
    db 13, BITE
    db 15, SCARY_FACE
    db 24, FLAIL
    db 32, CRUNCH
    db 45, SLASH
    db 50, SCREECH
    db 58, THRASH
    db 76, HYDRO_PUMP
    db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, FORESIGHT
    db  4, DEFENSE_CURL
    db  7, QUICK_ATTACK
    db 13, FURY_SWIPES
    db 25, SLAM
    db 28, REST
    db 36, AMNESIA
    db 39, BATON_PASS
    db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, FORESIGHT
    db  4, DEFENSE_CURL
    db  7, QUICK_ATTACK
    db 13, FURY_SWIPES
    db 28, SLAM
    db 32, REST
    db 42, AMNESIA
    db 46, BATON_PASS
    db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, GROWL
    db  1, FORESIGHT
    db  4, HYPNOSIS
    db  7, PECK
    db 10, CONFUSION
    db 25, TAKE_DOWN
    db 28, REFLECT
    db 46, DREAM_EATER
    db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, GROWL
    db  1, FORESIGHT
    db  4, HYPNOSIS
    db  7, PECK
    db 10, CONFUSION
    db 27, TAKE_DOWN
    db 31, REFLECT
    db 55, DREAM_EATER
    db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
    db  1, TACKLE
    db  5, SUPERSONIC
    db  8, SWIFT
    db 12, LIGHT_SCREEN
    db 12, REFLECT
    db 12, SAFEGUARD
    db 15, MACH_PUNCH
    db 22, COMET_PUNCH
    db 26, BATON_PASS
    db 29, AGILITY
    db 40, DOUBLE_EDGE
    db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  5, SUPERSONIC
    db  8, SWIFT
    db 12, LIGHT_SCREEN
    db 12, REFLECT
    db 12, SAFEGUARD
    db 15, MACH_PUNCH
    db 24, COMET_PUNCH
    db 29, BATON_PASS
    db 33, AGILITY
    db 47, DOUBLE_EDGE
    db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
    db  1, POISON_STING
    db  1, STRING_SHOT
    db  1, CONSTRICT
    db  5, ABSORB
    db 12, SCARY_FACE
    db 15, NIGHT_SHADE
    db 22, FURY_SWIPES
    db 29, SPIDER_WEB
    db 33, AGILITY
    db 36, PIN_MISSILE
    db 40, PSYCHIC_M
	db 44, LEECH_LIFE
    db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
    db  1, POISON_STING
    db  1, STRING_SHOT
    db  1, CONSTRICT
    db  5, ABSORB
    db 12, SCARY_FACE
    db 15, NIGHT_SHADE
    db 23, FURY_SWIPES
    db 32, SPIDER_WEB
    db 37, AGILITY
    db 41, PIN_MISSILE
    db 46, PSYCHIC_M
	db 51, LEECH_LIFE
    db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
    db  1, ABSORB
    db  5, SUPERSONIC
    db 11, BITE
    db 13, WING_ATTACK
    db 17, CONFUSE_RAY
    db 24, SWIFT
    db 32, MEAN_LOOK
    db 35, LEECH_LIFE
    db 40, HAZE
    db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
    db  1, BUBBLE
    db  1, SUPERSONIC
    db  6, THUNDER_WAVE
    db 12, WATER_GUN
    db 17, CONFUSE_RAY
    db 20, BUBBLEBEAM
    db 23, SPARK
    db 31, FLAIL
    db 39, TAKE_DOWN
    db 45, HYDRO_PUMP
    db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
    db  1, BUBBLE
    db  1, SUPERSONIC
    db  6, THUNDER_WAVE
    db 12, WATER_GUN
    db 17, CONFUSE_RAY
    db 20, BUBBLEBEAM
    db 23, SPARK
    db 33, FLAIL
    db 43, TAKE_DOWN
    db 51, HYDRO_PUMP
    db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
    db  1, THUNDERSHOCK
    db  1, CHARM
    db  5, TAIL_WHIP
    db 10, SWEET_KISS
    db 18, THUNDER_WAVE
    db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
    db  1, POUND
    db  1, CHARM
    db  4, ENCORE
    db  7, SING
    db 10, SWEET_KISS
    db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
    db  1, SING
    db  1, CHARM
    db  3, DEFENSE_CURL
    db  5, POUND
    db  9, SWEET_KISS
    db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
    db  1, GROWL
    db  1, CHARM
    db  5, METRONOME
    db  9, SWEET_KISS
    db 17, ENCORE
    db 33, ANCIENTPOWER
    db 37, SAFEGUARD
    db 41, BATON_PASS
    db 45, DOUBLE_EDGE
    db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
    db  1, GROWL
    db  1, CHARM
    db  5, METRONOME
    db  9, SWEET_KISS
    db 17, ENCORE
    db 33, ANCIENTPOWER
    db 37, SAFEGUARD
    db 41, BATON_PASS
    db 45, DOUBLE_EDGE
    db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
    db  1, PECK
    db  1, LEER
    db  6, NIGHT_SHADE
    db  9, TELEPORT
    db 23, CONFUSE_RAY
    db 33, PSYCHIC_M
    db 44, FUTURE_SIGHT
    db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
    db  1, PECK
    db  1, LEER
    db  6, NIGHT_SHADE
    db  9, TELEPORT
    db 23, CONFUSE_RAY
    db 35, PSYCHIC_M
    db 49, FUTURE_SIGHT
    db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, GROWL
    db  4, THUNDER_WAVE
    db  8, THUNDERSHOCK
    db 11, COTTON_SPORE
    db 18, TAKE_DOWN
    db 25, CONFUSE_RAY
    db 43, LIGHT_SCREEN
    db 46, THUNDER
    db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, GROWL
    db  4, THUNDER_WAVE
    db  8, THUNDERSHOCK
    db 11, COTTON_SPORE
    db 20, TAKE_DOWN
    db 29, CONFUSE_RAY
    db 52, LIGHT_SCREEN
    db 56, THUNDER
    db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, GROWL
    db  4, THUNDER_WAVE
    db  8, THUNDERSHOCK
    db 11, COTTON_SPORE
    db 20, TAKE_DOWN
    db 29, CONFUSE_RAY
    db 57, LIGHT_SCREEN
    db 62, THUNDER
    db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
    db  1, ABSORB
    db  1, GROWTH
    db  1, SUNNY_DAY
    db  5, SWEET_SCENT
    db  9, ACID
    db 13, POISONPOWDER
    db 14, STUN_SPORE
    db 15, SLEEP_POWDER
    db 19, MEGA_DRAIN
    db 29, MOONLIGHT
    db 34, GIGA_DRAIN
    db 39, TOXIC
    db 59, PETAL_DANCE
    db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, WATER_GUN
    db  2, TAIL_WHIP
    db  7, BUBBLE
    db 10, DEFENSE_CURL
    db 10, ROLLOUT
    db 13, BUBBLEBEAM
    db 31, RAIN_DANCE
    db 37, DOUBLE_EDGE
    db 47, HYDRO_PUMP
    db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, WATER_GUN
    db  2, TAIL_WHIP
    db  7, BUBBLE
    db 10, DEFENSE_CURL
    db 10, ROLLOUT
    db 13, BUBBLEBEAM
    db 35, RAIN_DANCE
    db 42, DOUBLE_EDGE
    db 55, HYDRO_PUMP
    db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
    db  1, SLAM
    db  5, FLAIL
    db  8, LOW_KICK
    db 12, ROCK_THROW
    db 15, MIMIC
    db 19, FAINT_ATTACK
    db 33, ROCK_SLIDE
    db 36, COUNTER
    db 43, DOUBLE_EDGE
    db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
    db  1, HYPNOSIS
    db  1, PERISH_SONG
    db  1, WATER_GUN
    db  8, HYPNOSIS
    db 11, BUBBLE
    db 15, DOUBLESLAP
    db 18, RAIN_DANCE
    db 21, BODY_SLAM
    db 27, BUBBLEBEAM
    db 27, SWAGGER
    db 37, BELLY_DRUM
    db 48, HYDRO_PUMP
    db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
    db  1, ABSORB
    db  1, SPLASH
    db  4, SYNTHESIS
    db  6, TAIL_WHIP
    db  8, TACKLE
    db 12, POISONPOWDER
    db 14, STUN_SPORE
    db 16, SLEEP_POWDER
    db 22, LEECH_SEED
    db 25, MEGA_DRAIN
    db 34, COTTON_SPORE
    db 43, GIGA_DRAIN
    db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
    db  1, ABSORB
    db  1, SPLASH
    db  4, SYNTHESIS
    db  6, TAIL_WHIP
    db  8, TACKLE
    db 12, POISONPOWDER
    db 14, STUN_SPORE
    db 16, SLEEP_POWDER
    db 24, LEECH_SEED
    db 28, MEGA_DRAIN
    db 40, COTTON_SPORE
    db 52, GIGA_DRAIN
    db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
    db  1, ABSORB
    db  1, SPLASH
    db  4, SYNTHESIS
    db  6, TAIL_WHIP
    db  8, TACKLE
    db 12, POISONPOWDER
    db 14, STUN_SPORE
    db 16, SLEEP_POWDER
    db 24, LEECH_SEED
    db 29, MEGA_DRAIN
    db 44, COTTON_SPORE
    db 59, GIGA_DRAIN
    db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, TAIL_WHIP
    db  4, SAND_ATTACK
    db 11, BATON_PASS
    db 18, FURY_SWIPES
    db 22, SWIFT
    db 25, SCREECH
    db 29, AGILITY
    db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
    db  1, ABSORB
    db  1, GROWTH
    db 10, MEGA_DRAIN
    db 13, LEECH_SEED
    db 16, RAZOR_LEAF
    db 22, GIGA_DRAIN
    db 28, SYNTHESIS
    db 34, SOLARBEAM
    db 37, DOUBLE_EDGE
    db 40, SUNNY_DAY
    db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
    db  1, ABSORB
    db  1, POUND
    db  1, GROWTH
    db 10, MEGA_DRAIN
    db 13, LEECH_SEED
    db 16, RAZOR_LEAF
    db 22, GIGA_DRAIN
    db 28, PETAL_DANCE
    db 34, SOLARBEAM
    db 37, DOUBLE_EDGE
    db 40, SUNNY_DAY
    db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, FORESIGHT
    db  6, QUICK_ATTACK
    db 11, DOUBLE_TEAM
    db 14, SONICBOOM
    db 17, DETECT
    db 22, SUPERSONIC
    db 30, PURSUIT
    db 33, ANCIENTPOWER
    db 38, HYPNOSIS
    db 43, WING_ATTACK
    db 46, SCREECH
    db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
    db  1, WATER_GUN
    db  1, TAIL_WHIP
    db 15, SLAM
    db 23, AMNESIA
    db 33, EARTHQUAKE
    db 37, RAIN_DANCE
    db 43, MIST
    db 43, HAZE
    db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
    db  1, WATER_GUN
    db  1, TAIL_WHIP
    db 15, SLAM
    db 24, AMNESIA
    db 36, EARTHQUAKE
    db 41, RAIN_DANCE
    db 48, MIST
    db 48, HAZE
    db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
    db  1, CONFUSION
    db  1, TACKLE
    db  1, TAIL_WHIP
    db  5, SAND_ATTACK
    db 13, QUICK_ATTACK
    db 17, SWIFT
    db 20, PSYBEAM
    db 25, FUTURE_SIGHT
    db 29, PSYCH_UP
    db 33, MORNING_SUN
    db 37, PSYCHIC_M
    db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
    db  1, PURSUIT
    db  1, TACKLE
    db  1, TAIL_WHIP
    db  5, SAND_ATTACK
    db 13, QUICK_ATTACK
    db 17, CONFUSE_RAY
    db 20, FAINT_ATTACK
    db 29, SCREECH
    db 33, MOONLIGHT
    db 37, MEAN_LOOK
    db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
    db  1, PECK
    db  5, PURSUIT
    db 11, HAZE
    db 15, WING_ATTACK
    db 21, NIGHT_SHADE
    db 35, FAINT_ATTACK
    db 41, MEAN_LOOK
    db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
    db  1, CURSE
    db  1, TACKLE
    db  5, GROWL
    db  9, WATER_GUN
    db 14, CONFUSION
    db 19, DISABLE
    db 23, HEADBUTT
    db 41, SWAGGER
    db 45, PSYCHIC_M
    db 54, PSYCH_UP
    db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
    db  1, GROWL
    db  1, PSYWAVE
    db  5, SPITE
    db 14, CONFUSE_RAY
    db 19, MEAN_LOOK
    db 28, PSYBEAM
    db 32, PAIN_SPLIT
    db 41, SHADOW_BALL
    db 46, PERISH_SONG
    db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
    db  1, HIDDEN_POWER
    db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
    db  1, COUNTER
    db  1, MIRROR_COAT
    db  1, SAFEGUARD
    db  1, DESTINY_BOND
    db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, GROWL
    db  1, CONFUSION
    db 14, STOMP
    db 19, PSYBEAM
    db 23, AGILITY
    db 37, CRUNCH
    db 41, BATON_PASS
    db 50, PSYCHIC_M
    db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, PROTECT
    db  6, SELFDESTRUCT
    db 12, TAKE_DOWN
    db 17, RAPID_SPIN
    db 20, BIDE
    db 28, SPIKES
    db 34, EXPLOSION
    db 45, DOUBLE_EDGE
    db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, PROTECT
    db  6, SELFDESTRUCT
    db 12, TAKE_DOWN
    db 17, RAPID_SPIN
    db 20, BIDE
    db 28, SPIKES
    db 36, EXPLOSION
    db 50, DOUBLE_EDGE
    db 60, ZAP_CANNON
    db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
    db  1, RAGE
    db  1, DEFENSE_CURL
    db  3, ROLLOUT
    db  6, SPITE
    db  8, PURSUIT
    db 11, SCREECH
    db 13, MUD_SLAP
    db 18, ANCIENTPOWER
    db 21, BODY_SLAM
    db 28, TAKE_DOWN
    db 33, DIG
    db 36, GLARE
    db 38, DOUBLE_EDGE
    db 48, ENDURE
    db 51, FLAIL
    db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
    db  1, POISON_STING
    db  4, SAND_ATTACK
    db  7, HARDEN
    db 13, QUICK_ATTACK
    db 16, FURY_CUTTER
    db 19, FAINT_ATTACK
    db 27, SLASH
    db 35, SCREECH
    db 50, SWORDS_DANCE
    db 55, GUILLOTINE
    db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, HARDEN
    db  1, BIND
    db  4, CURSE
    db  7, ROCK_THROW
    db 13, RAGE
    db 25, DRAGONBREATH
    db 28, SLAM
    db 31, SCREECH
    db 34, ROCK_SLIDE
    db 37, CRUNCH
    db 40, IRON_TAIL
    db 43, DIG
    db 49, DOUBLE_EDGE
    db 52, SANDSTORM
    db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, SCARY_FACE
    db  1, TAIL_WHIP
    db  1, CHARM
    db  7, BITE
    db 13, LICK
    db 19, HEADBUTT
    db 25, ROAR
    db 31, RAGE
    db 49, CRUNCH
    db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, SCARY_FACE
    db  1, TAIL_WHIP
    db  1, CHARM
    db  7, BITE
    db 13, LICK
    db 19, HEADBUTT
    db 27, ROAR
    db 35, RAGE
    db 59, CRUNCH
    db 67, OUTRAGE
    db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
    db  1, WATER_GUN
    db  1, SPIKES
    db  1, TACKLE
    db  1, POISON_STING
    db  9, HARDEN
    db  9, MINIMIZE
    db 13, BUBBLE
    db 17, ROLLOUT
    db 37, PIN_MISSILE
    db 41, TAKE_DOWN
    db 53, DESTINY_BOND
    db 57, HYDRO_PUMP
    db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
    db  1, QUICK_ATTACK
    db  1, LEER
    db  5, FOCUS_ENERGY
    db  9, PURSUIT
    db 13, FALSE_SWIPE
    db 17, AGILITY
    db 21, METAL_CLAW
    db 25, FURY_CUTTER
    db 29, SLASH
    db 33, RAZOR_WIND
    db 57, SWORDS_DANCE
    db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
    db  1, WITHDRAW
    db  1, CONSTRICT
    db  1, BIDE
    db  1, ROLLOUT
    db  5, ENCORE
    db  9, WRAP
    db 16, SAFEGUARD
    db 20, REST
    db 23, ROCK_THROW
    db 38, ROCK_SLIDE
    db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, LEER
    db  1, HORN_ATTACK
    db  1, ENDURE
    db 19, COUNTER
    db 25, FURY_ATTACK
    db 31, PIN_MISSILE
    db 34, TAKE_DOWN
    db 37, MEGAHORN
    db 46, REVERSAL
    db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, LEER
    db  8, QUICK_ATTACK
    db 10, FAINT_ATTACK
    db 14, ICY_WIND
    db 16, FURY_SWIPES
    db 20, AGILITY
    db 22, METAL_CLAW
    db 28, BEAT_UP
    db 32, SCREECH
    db 35, SLASH
    db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, LICK
    db  8, FURY_SWIPES
    db 15, FAINT_ATTACK
    db 22, SWEET_SCENT
    db 29, SLASH
    db 36, CHARM
    db 43, REST
    db 43, SNORE
    db 50, THRASH
    db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
    db  1, SCRATCH
    db  1, LEER
    db  1, LICK
    db  8, FURY_SWIPES
    db 15, FAINT_ATTACK
    db 22, SWEET_SCENT
    db 29, SLASH
    db 38, SCARY_FACE
    db 47, REST
    db 49, SNORE
    db 58, THRASH
    db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
    db  1, SMOG
    db  6, EMBER
    db  8, ROCK_THROW
    db 13, HARDEN
    db 22, ANCIENTPOWER
    db 29, ROCK_SLIDE
    db 36, AMNESIA
    db 41, BODY_SLAM
    db 43, RECOVER
    db 48, FLAMETHROWER
    db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
    db  1, SMOG
    db  6, EMBER
    db  8, ROCK_THROW
    db 13, HARDEN
    db 22, ANCIENTPOWER
    db 29, ROCK_SLIDE
    db 36, AMNESIA
    db 43, BODY_SLAM
    db 47, RECOVER
    db 54, FLAMETHROWER
    db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
    db  1, TACKLE
    db  8, POWDER_SNOW
    db 11, MUD_SLAP
    db 14, ENDURE
    db 21, ICY_WIND
    db 28, TAKE_DOWN
    db 35, MIST
    db 37, EARTHQUAKE
    db 40, FLAIL
    db 44, BLIZZARD
    db 48, AMNESIA
    db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
    db  1, PECK
    db  8, POWDER_SNOW
    db 11, MUD_SLAP
    db 14, ENDURE
    db 21, ICY_WIND
    db 28, TAKE_DOWN
    db 37, MIST
    db 41, THRASH
    db 46, EARTHQUAKE
    db 52, BLIZZARD
    db 58, AMNESIA
    db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, HARDEN
    db  4, BUBBLE
    db  8, RECOVER
    db 10, BUBBLEBEAM
    db 17, ANCIENTPOWER
    db 20, SPIKE_CANNON
    db 35, ENDURE
    db 45, MIRROR_COAT
    db 50, FLAIL
    db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
    db  1, WATER_GUN
    db  6, LOCK_ON
    db 10, PSYBEAM
    db 14, AURORA_BEAM
    db 18, BUBBLEBEAM
    db 22, FOCUS_ENERGY
    db 34, ICE_BEAM
    db 42, HYDRO_PUMP
    db 46, HYPER_BEAM
    db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
    db  1, OCTAZOOKA
    db  1, WATER_GUN
    db  6, CONSTRICT
    db 10, PSYBEAM
    db 14, AURORA_BEAM
    db 18, BUBBLEBEAM
    db 22, FOCUS_ENERGY
    db 40, ICE_BEAM
    db 52, HYDRO_PUMP
    db 58, HYPER_BEAM
    db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
    db  1, PRESENT
    db 25, DRILL_PECK
    db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
    db  1, PSYBEAM
    db  1, TACKLE
    db  1, BUBBLE
    db  3, SUPERSONIC
    db  7, BUBBLEBEAM
    db 11, CONFUSE_RAY
    db 14, WING_ATTACK
    db 16, HEADBUTT
    db 27, TAKE_DOWN
    db 32, AGILITY
    db 49, HYDRO_PUMP
    db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
    db  1, LEER
    db  1, PECK
    db  6, SAND_ATTACK
    db  9, METAL_CLAW
    db 17, FURY_ATTACK
    db 23, SWIFT
    db 28, SPIKES
    db 31, AGILITY
    db 34, STEEL_WING
    db 39, SLASH
    db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
    db  1, LEER
    db  1, EMBER
    db  8, SMOG
    db 13, ROAR
    db 16, BITE
    db 25, BEAT_UP
    db 32, FAINT_ATTACK
    db 44, FLAMETHROWER
    db 49, CRUNCH
    db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
    db  1, LEER
    db  1, EMBER
    db  8, SMOG
    db 13, ROAR
    db 16, BITE
    db 26, BEAT_UP
    db 35, FAINT_ATTACK
    db 50, FLAMETHROWER
    db 56, CRUNCH
    db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
    db  1, WATER_GUN
    db  5, SMOKESCREEN
    db  9, LEER
    db 17, TWISTER
    db 21, BUBBLEBEAM
    db 26, FOCUS_ENERGY
    db 38, AGILITY
    db 60, HYDRO_PUMP
    db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, GROWL
    db  1, DEFENSE_CURL
    db  6, FLAIL
    db 10, ROLLOUT
    db 19, ENDURE
    db 24, SLAM
    db 28, TAKE_DOWN
    db 33, CHARM
    db 42, DOUBLE_EDGE
    db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
    db  1, HORN_ATTACK
    db  1, GROWL
    db  1, DEFENSE_CURL
    db  6, RAPID_SPIN
    db 10, ROLLOUT
    db 24, SLAM
    db 30, MAGNITUDE
    db 37, SCARY_FACE
    db 43, EARTHQUAKE
    db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
    db  1, CONVERSION2
    db  1, TACKLE
    db  1, CONVERSION
    db  1, DEFENSE_CURL
    db  7, PSYBEAM
    db 12, AGILITY
    db 18, RECOVER
    db 45, LOCK_ON
    db 50, TRI_ATTACK
    db 62, ZAP_CANNON
    db 67, HYPER_BEAM
    db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  3, LEER
    db 10, HYPNOSIS
    db 13, STOMP
    db 16, SAND_ATTACK
    db 21, TAKE_DOWN
    db 23, CONFUSE_RAY
    db 43, JUMP_KICK
    db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
    db  1, SKETCH
    db 11, SKETCH
    db 21, SKETCH
    db 31, SKETCH
    db 41, SKETCH
    db 51, SKETCH
    db 61, SKETCH
    db 71, SKETCH
    db 81, SKETCH
    db 91, SKETCH
    db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
    db  1, TACKLE
    db  1, FORESIGHT
    db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
    db  1, ROLLING_KICK
    db  6, FOCUS_ENERGY
    db 10, PURSUIT
    db 15, QUICK_ATTACK
    db 19, RAPID_SPIN
    db 28, COUNTER
    db 33, TRIPLE_KICK
    db 37, AGILITY
    db 50, DETECT
    db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
    db  1, POUND
    db  5, LICK
    db  8, SWEET_KISS
    db 11, POWDER_SNOW
    db 15, CONFUSION
    db 18, SING
    db 25, MEAN_LOOK
    db 38, PSYCHIC_M
    db 45, PERISH_SONG
    db 48, BLIZZARD
    db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
    db  1, QUICK_ATTACK
    db  1, LEER
    db  5, THUNDERSHOCK
    db  8, LOW_KICK
    db 12, SWIFT
    db 19, THUNDER_WAVE
    db 26, LIGHT_SCREEN
    db 29, THUNDERPUNCH
    db 36, SCREECH
    db 40, THUNDERBOLT
    db 43, THUNDER
    db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
    db  1, SMOG
    db  1, LEER
    db  5, EMBER
    db  8, SMOKESCREEN
    db 12, FAINT_ATTACK
    db 15, FIRE_SPIN
    db 26, CONFUSE_RAY
    db 29, FIRE_PUNCH
    db 36, SUNNY_DAY
    db 40, FLAMETHROWER
    db 43, FIRE_BLAST
    db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
    db  1, TACKLE
    db  3, GROWL
    db  5, DEFENSE_CURL
    db  8, STOMP
    db 11, MILK_DRINK
    db 15, BIDE
    db 19, ROLLOUT
    db 24, BODY_SLAM
    db 48, HEAL_BELL
    db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
    db  1, DEFENSE_CURL
    db  1, GROWL
    db  1, POUND
    db  5, TAIL_WHIP
    db 12, DOUBLESLAP
    db 16, SOFTBOILED
    db 23, MINIMIZE
    db 27, TAKE_DOWN
    db 31, SING
    db 44, EGG_BOMB
    db 50, LIGHT_SCREEN
    db 65, DOUBLE_EDGE
    db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
    db  1, BITE
    db  1, LEER
    db  8, THUNDERSHOCK
    db 15, ROAR
    db 22, QUICK_ATTACK
    db 29, SPARK
    db 36, REFLECT
    db 43, CRUNCH
    db 71, RAIN_DANCE
    db 85, THUNDER
    db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
    db  1, BITE
    db  1, LEER
    db  8, EMBER
    db 15, ROAR
    db 22, FIRE_SPIN
    db 29, STOMP
    db 36, FLAMETHROWER
    db 43, SWAGGER
    db 71, FIRE_BLAST
    db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
    db  1, BITE
    db  1, LEER
    db  8, BUBBLEBEAM
    db 15, RAIN_DANCE
    db 22, GUST
    db 29, AURORA_BEAM
    db 36, MIST
    db 43, MIRROR_COAT
    db 71, HYDRO_PUMP
    db 85, BLIZZARD
    db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
    db  1, BITE
    db  1, LEER
    db  5, SANDSTORM
    db 10, SCREECH
    db 19, ROCK_SLIDE
    db 23, SCARY_FACE
    db 28, THRASH
    db 41, CRUNCH
    db 46, EARTHQUAKE
    db 55, HYPER_BEAM
    db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
    db  1, BITE
    db  1, LEER
    db  5, SANDSTORM
    db 10, SCREECH
    db 19, ROCK_SLIDE
    db 23, SCARY_FACE
    db 28, THRASH
    db 47, CRUNCH
    db 54, EARTHQUAKE
    db 67, HYPER_BEAM
    db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
    db  1, BITE
    db  1, LEER
    db  5, SANDSTORM
    db 10, SCREECH
    db 19, ROCK_SLIDE
    db 23, SCARY_FACE
    db 28, THRASH
    db 47, CRUNCH
    db 54, EARTHQUAKE
    db 73, HYPER_BEAM
    db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
    db  1, WHIRLWIND
    db  9, GUST
    db 29, RAIN_DANCE
    db 37, HYDRO_PUMP
    db 43, AEROBLAST
    db 57, ANCIENTPOWER
    db 65, SAFEGUARD
    db 71, RECOVER
    db 79, FUTURE_SIGHT
    db 99, SKY_ATTACK
    db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
    db  1, WHIRLWIND
    db  9, GUST
    db 29, SUNNY_DAY
    db 37, FIRE_BLAST
    db 43, SACRED_FIRE
    db 57, ANCIENTPOWER
    db 65, SAFEGUARD
    db 71, RECOVER
    db 79, FUTURE_SIGHT
    db 99, SKY_ATTACK
    db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
    db  1, LEECH_SEED
    db  1, CONFUSION
    db  1, RECOVER
    db  1, HEAL_BELL
    db 10, SAFEGUARD
    db 28, ANCIENTPOWER
    db 37, BATON_PASS
    db 64, FUTURE_SIGHT
    db 91, PERISH_SONG
    db 0 ; no more level-up moves
