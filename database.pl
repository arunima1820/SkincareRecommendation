:- discontiguous([ waterbased/2, moisturizer/2]).
%%% WATER BASED RECOMMENDATIONS
%% Ranked from least weighted to most weighted Fewest conflicts/sensitivity issues to the most effective
% pigmentation
waterbased(pigmentation, alpha_arbutin). %all else fails
waterbased(pigmentation, mandelic_acid). %sensitivity high, no contraindications
waterbased(pigmentation, lactic_acid). %sensitivity medium, no contraindications
waterbased(pigmentation, glycolic_acid). %sensitivity low, no contraindications, oily

%dullness
waterbased(dullness, alpha_arbutin). %all else fails
waterbased(dullness, caffeine). %needs combination skin, not low sensitivity
waterbased(dullness, glycolic_acid).  %sensitivity low, no contraindications, oily

%ageing
waterbased(ageing, hyaluronic_acid). %all else fails
waterbased(ageing, buffet_and_copper). %no contraindications

%hydration
waterbased(hydration, hyaluronic_acid). % all else fails
waterbased(hydration, amino_acids). % needs sensitive skin NOT high

%texture
waterbased(texture, hyaluronic_acid).%all else fails
waterbased(texture, niacinamide).%contraindications, sensitive skin(medium, high)


%oily
waterbased(oily, natural_moisturizing_factors) %all else fails
waterbased(oily, niacinamide).%contraindications, sensitive skin(medium, high)
waterbased(oily, salicylic_acid). %not dry skin, low sensitivity

%%% MOISTURIZER RECOMMENDATIONS
%% Ranked from least weighted to most weighted

moisturizer(dullness, vitamin_c).
moisturizer(ageing, rose_hip_oil).
moisturizer(pigmentation, rose_hip_oil).
moisturizer(oily, rose_hip_oil).
moisturizer(hydration, rose_hip_oil).
moisturizer(texture, rose_hip_oil).




