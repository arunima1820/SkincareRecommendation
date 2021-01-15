# SkincareRecommendation
## What it does:
Our recommendation engine will provide The Ordinary product recommendations based on a skincare profile (the user can input their concerns and optionally their skin type and skin sensitivity levels to better optimize the product recommendation) ensuring that all product conflicts (contraindications) and potential adverse reactions are avoided. The engine is built so that the most efficient/most targeted product possible is recommended over any other products - we have limited one type of product (as of now, we have water-based and moisturizer) to one specific concern for ease of use. 


## Files:
* database.pl:
Justifies the logic behind the 'rules' and defaults/constraints/order of precedence based on knowledge regarding the efficiency of products. Our program 'ranks' certain products in order of efficiency and will only recommend a lower efficiency product in the case that all products of higher efficiency are unable to be recommended because of constraints or if they pose any contraindications with other recommendations.

* recommendation.pl
 A series of rules which allow for conditions for recommendation(), don'trecommend() and contraindications(). These rules were built using the database.pl constraints/hierarchy of efficiency as a reference, which used The Ordinary's product information.
 
* sampleinput.txt
How the sample input file will be provided by the user.

Note every products output will have at least one water based product and one moisturizer (rose hip oil or vitamin c, depending on constraints).

* sample_products.txt:
 How the program outputs the recommendations.

* sample_products_and_models.txt:
 How the program outputs the recommendations with models.
