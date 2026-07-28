* Encoding: UTF-8.
* ========================================================================.
* PROJECT: The Impact of Social Media on Impulsive Buying Behavior
* AUTHOR: Ömer Faruk Aslaner & Team
* DATASET: en_son.sav
* ========================================================================.

* 1. DESCRIPTIVE STATISTICS.
DESCRIPTIVES VARIABLES=SMMKD_Score EKD_Score KYG_Score IG_Score ASA_Score AEDD_Score
  /STATISTICS=MEAN STDDEV MIN MAX.

* 2. RELIABILITY ANALYSIS (Example for SMMKD).
RELIABILITY
  /VARIABLES=SOSYAL_M V6_A V17_A V20_A V21_A
  /SCALE('Social Media Exposure') ALL
  /MODEL=ALPHA.

* 3. CORRELATION ANALYSIS (H1 & H2).
CORRELATIONS
  /VARIABLES=SMMKD_Score IG_Score ASA_Score
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* 4. INDEPENDENT SAMPLES T-TEST (H7 & H8).
T-TEST GROUPS=CINSIYET(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=SMMKD_Score ASA_Score
  /CRITERIA=CI(.95).

* 5. CHI-SQUARE TEST FOR INDEPENDENCE (H5 & H6).
* Usage Time by Gender.
CROSSTABS
  /TABLES=CINSIYET BY GUNLUK_S
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ
  /CELLS=COUNT ROW.

* Platform Preference by Gender (e.g., TikTok).
CROSSTABS
  /TABLES=CINSIYET BY TIKTOK
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ
  /CELLS=COUNT ROW.

* 6. LINEAR REGRESSION (H3 & H4).
* Predicting Impulsive Buying from Social Media Exposure.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT ASA_Score
  /METHOD=ENTER SMMKD_Score.

* Predicting Impulsive Buying from Influencer Credibility.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT ASA_Score
  /METHOD=ENTER IG_Score.