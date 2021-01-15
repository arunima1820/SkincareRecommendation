#include 'file.txt'.

% #show true/0.

product(alpha_arbutin).
product(mandelic_acid).
product(lactic_acid).
product(mandelic_acid).
product(glycolic_acid).
product(caffeine).
product(hyaluronic_acid).
product(buffet_and_copper).
product(amino_acids).
product(niacinamide).
product(natural_moisturizing_factors).
product(salicylic_acid).
product(rose_hip_oil).
product(vitamin_c).

% CONCERNS TO REGIMENS

regimen(ageing) :-
ageing_concern(X).
ageing_concern(ageing):-
concern(ageing).
ageing_concern(wrinkles):-
concern(wrinkles).
ageing_concern(firming):-
concern(firming).

regimen(dullness) :-
dullness_concern(X).
dullness_concern(dullness):-
concern(dullness).
dullness_concern(tiredness):-
concern(tiredness).

regimen(hydration) :-
hydration_concern(X).
hydration_concern(flakiness):-
concern(flakiness).
hydration_concern(dehydration):-
concern(dehydration).
hydration_concern(itchiness):-
concern(itchiness).

regimen(texture) :-
texture_concern(X).
texture_concern(congestion):-
concern(congestion).
texture_concern(texture):-
concern(texture).
texture_concern(pores):-
concern(pores).
texture_concern(inflammation):-
concern(inflammation).

regimen(pigmentation) :-
pigmentation_concern(X).
pigmentation_concern(pigmentation):-
concern(pigmentation).
pigmentation_concern(sebum):-
concern(sebum).
pigmentation_concern(brightening):-
concern(brightening).

regimen(oily) :-
oily_concern(X).
oily_concern(oily):-
concern(oily).
oily_concern(blemishes):-
concern(blemishes).
oily_concern(whiteheads):-
concern(whiteheads).

%%% ------------- WATER BASED --------------------

%% PIGMENTATION

% alpha arbutin recommendation, dont recommend
% alpha arbutin is the safest yet least effective option.

recommendation(alpha_arbutin) :-
not dont_recommend(alpha_arbutin),
not recommendation(mandelic_acid),
not recommendation(lactic_acid),
not recommendation(glycolic_acid),
not recommendation(caffeine),
alpha_arbutin_regimen(X).

alpha_arbutin_regimen(pigmentation) :-
regimen(pigmentation).

alpha_arbutin_regimen(dullness) :-
regimen(dullness).

dont_recommend(alpha_arbutin) :-
not recommendation(alpha_arbutin),
recommendation(mandelic_acid),
recommendation(lactic_acid),
recommendation(glycolic_acid),
recommendation(caffeine).

% mandelic acid recommendation, dont recommend

recommendation(mandelic_acid) :-
not dont_recommend(mandelic_acid),
not recommendation(lactic_acid),
not recommendation(glycolic_acid),
sensitivity_level(high),
regimen(pigmentation),
not contraindication(mandelic_acid).

dont_recommend(mandelic_acid) :-
not recommendation(mandelic_acid),
contraindication(mandelic_acid),
recommendation(lactic_acid),
recommendation(glycolic_acid),
skin_type(combination).

contraindication(mandelic_acid) :-
recommendation(vitamin_c).
contraindication(mandelic_acid) :-
recommendation(niacinamide).

% lactic acid recommendation, dont recommend
recommendation(lactic_acid) :-
not dont_recommend(lactic_acid),
sensitivity_level(medium),
regimen(pigmentation),
not recommendation(glycolic_acid),
not contraindication(lactic_acid).

dont_recommend(lactic_acid) :-
not recommendation(lactic_acid),
contraindication(lactic_acid),
recommendation(glycolic_acid).

contraindication(lactic_acid) :-
recommendation(vitamin_c).
contraindication(lactic_acid) :-
recommendation(niacinamide).

% glycolic acid
recommendation(glycolic_acid) :-
not dont_recommend(glycolic_acid),
sensitivity_level(low),
skin_type(oily),
not contraindication(glycolic_acid).
glycolic_acid_regimen(X).

glycolic_acid_regimen(pigmentation) :-
regimen(pigmentation).

glycolic_acid_regimen(dullness) :-
regimen(dullness).

dont_recommend(glycolic_acid) :-
not recommendation(glycolic_acid),
contraindication(glycolic_acid),
skin_type(combination).

contraindication(glycolic_acid) :-
recommendation(vitamin_c).
contraindication(glycolic_acid) :-
recommendation(niacinamide).

%% DULLNESS
% CAFFEINE SAFEST OTHER THAN ARBUTIN

recommendation(caffeine) :-
not dont_recommend(caffeine),
not recommendation(glycolic_acid),
skin_type(combination),
regimen(dullness),
not sensitivity_level(high).

dont_recommend(caffeine) :-
not recommendation(caffeine),
skin_type(dry),
recommendation(glycolic_acid).

%% AGEING
recommendation(hyaluronic_acid) :- %HA
not dont_recommend(hyaluronic_acid),
not recommendation(buffet_and_copper),
not recommendation(amino_acids),
not recommendation(niacinamide),
ha_regimen(X).

ha_regimen(ageing) :-
regimen(ageing).
ha_regimen(hydration) :-
regimen(hydration).
ha_regimen(texture) :-
regimen(texture).

dont_recommend(hyaluronic_acid) :-
not recommendation(hyaluronic_acid),
recommendation(buffet_and_copper).

recommendation(buffet_and_copper) :- % buffet
not dont_recommend(buffet_and_copper),
not contraindication(buffet_and_copper).

dont_recommend(buffet_and_copper) :-
not recommendation(buffet_and_copper),
contraindication(buffet_and_copper).

contraindication(buffet_and_copper) :-
recommendation(vitamin_c).

%% HYDRATION
recommendation(amino_acids) :- % amino acids
not dont_recommend(amino_acids),
not sensitivity_level(high).

dont_recommend(amino_acids) :-
not recommendation(amino_acids).

%% TEXTURE

% niacinamide
recommendation(niacinamide) :-
not dont_recommend(niacinamide),
not sensitivity_level(low),
not recommendation(salicylic_acid),
not contraindication(niacinamide),
nia_regimen(X).

nia_regimen(texture) :-
regimen(texture).

nia_regimen(oily) :-
regimen(oily).

dont_recommend(niacinamide) :-
not recommendation(niacinamide),
contraindication(niacinamide),
sensitivity_level(low).

contraindication(niacinamide) :-
recommendation(vitamin_c).
contraindication(niacinamide) :-
recommendation(mandelic_acid).
contraindication(niacinamide) :-
recommendation(lactic_acid).
contraindication(niacinamide) :-
recommendation(glycolic_acid).

% OILY
% if all else fails - natural_moisturizing
recommendation(natural_moisturizing_factors) :-
not dont_recommend(natural_moisturizing_factors),
not recommendation(niacinamide),
not recommendation(salicylic_acid),
regimen(oily).

dont_recommend(natural_moisturizing_factors) :-
not recommendation(natural_moisturizing_factors),
recommendation(niacinamide),
recommendation(salicylic_acid).

% SALICYLIC ACID
recommendation(salicylic_acid) :- % buffet
not dont_recommend(salicylic_acid),
not skin_type(dry),
sensitivity_level(low),
not contraindication(salicylic_acid).

dont_recommend(salicylic_acid) :-
not recommendation(salicylic_acid),
contraindication(salicylic_acid).

contraindication(salicylic_acid) :-
recommendation(vitamin_c).
contraindication(salicylic_acid) :-
recommendation(mandelic_acid).
contraindication(salicylic_acid) :-
recommendation(lactic_acid).
contraindication(salicylic_acid) :-
recommendation(glycolic_acid).

%%% SUSPENSIONS!!

recommendation(rose_hip_oil) :-
not dont_recommend(rose_hip_oil),
not recommendation(vitamin_c),
rose_hip_regimen(X).

dont_recommend(rose_hip_oil) :-
not recommendation(rose_hip_oil),
recommendation(vitamin_c).

rose_hip_regimen(oily) :-
regimen(oily).

rose_hip_regimen(hydration) :-
regimen(hydration).

rose_hip_regimen(texture) :-
regimen(texture).

rose_hip_regimen(pigmentation) :-
regimen(pigmentation).

rose_hip_regimen(ageing) :-
regimen(ageing).

%% VITAMIN C
recommendation(vitamin_c) :-
not dont_recommend(vitamin_c),
not recommendation(rose_hip_oil),
not contraindication(vitamin_c),
vc_regimen(X).

vc_regimen(dullness) :-
regimen(dullness).

dont_recommend(vitamin_c) :-
not recommendation(vitamin_c),
contraindication(vitamin_c),
recommendation(rose_hip_oil).

contraindication(vitamin_c) :-
recommendation(rose_hip_oil).

?- product(X), recommendation(X).
