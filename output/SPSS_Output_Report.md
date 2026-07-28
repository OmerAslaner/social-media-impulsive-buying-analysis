# SPSS Analysis Outputs

This document contains the core statistical outputs generated from `en_son.sav` using IBM SPSS Statistics. 

## 1. Descriptive Statistics
| Variable | N | Minimum | Maximum | Mean | Std. Deviation |
| :--- | :--- | :--- | :--- | :--- | :--- |
| SMMKD_Score (Social Media Exposure) | 205 | 1.00 | 5.00 | 3.4234 | .86469 |
| EKD_Score (Interaction) | 205 | 1.00 | 5.00 | 2.3463 | .80226 |
| KYG_Score (User Review Trust) | 205 | 1.00 | 5.00 | 3.4859 | .85500 |
| IG_Score (Influencer Credibility) | 205 | 1.00 | 5.00 | 2.6951 | 1.05793 |
| ASA_Score (Impulsive Buying) | 205 | 1.00 | 5.00 | 2.2805 | 1.04141 |
| AEDD_Score (Perceived Impact) | 205 | 1.00 | 5.00 | 2.9356 | .88193 |

## 2. Reliability Analysis (Cronbach's Alpha)
| Scale | Cronbach’s Alpha | N of Items |
| :--- | :--- | :--- |
| Social Media Exposure | 0.78 | 5 |
| e-WOM | 0.81 | 5 |
| Influencer Credibility | 0.83 | 4 |
| Social Media Interaction | 0.80 | 3 |
| Purchase Intention | 0.85 | 5 |
| Impulsive Buying Behavior | 0.82 | 4 |

## 3. Correlation Matrix (H1 & H2)
| | | SMMKD_Score | IG_Score | ASA_Score |
| :--- | :--- | :--- | :--- | :--- |
| **SMMKD_Score** | Pearson Correlation | 1 | - | .397** |
| | Sig. (2-tailed) | | - | <.001 |
| **IG_Score** | Pearson Correlation | - | 1 | .421** |
| | Sig. (2-tailed) | - | | <.001 |
| **ASA_Score** | Pearson Correlation | .397** | .421** | 1 |
| | Sig. (2-tailed) | <.001 | <.001 | |
*(** Correlation is significant at the 0.01 level)*

## 4. Independent Samples t-Test (Gender Differences - H7 & H8)
| Variable | t | df | Sig. (2-tailed) | Mean Difference |
| :--- | :--- | :--- | :--- | :--- |
| SMMKD_Score | -1.982 | 203 | .049* | -.24537 |
| ASA_Score | -3.394 | 203 | <.001** | -.49716 |
*(Female participants reported significantly higher scores in both variables).*

## 5. Regression Analysis (H3 & H4)
### Model 1: Predicting ASA_Score from SMMKD_Score
* **R Square:** .157
* **F-value:** 37.88 (p < .001)
* **Beta (SMMKD_Score):** .397 (t = 6.155, p < .001)

### Model 2: Predicting ASA_Score from IG_Score
* **R Square:** .178
* **F-value:** 43.839 (p < .001)
* **Beta (IG_Score):** .421 (t = 6.621, p < .001)
