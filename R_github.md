WhtDisID\_Github
================
doris dai
10/9/2019

-   [Project Overview](#project-overview)
    -   [Materials and Measures](#materials-and-measures)
        -   [Example of manipulation](#example-of-manipulation)
        -   [Dependent variables and measures](#dependent-variables-and-measures)
-   [Study 1a](#study-1a)
    -   [Condition moderates the relation between political orientation and White disidentification](#condition-moderates-the-relation-between-political-orientation-and-white-disidentification)
        -   [Main moderation MLR models](#main-moderation-mlr-models)
        -   [Relatively liberal Whites *vs.* relatively conservative Whites](#relatively-liberal-whites-vs.-relatively-conservative-whites)
    -   [Plot of political orientaion interacting with condition on White disidentification](#plot-of-political-orientaion-interacting-with-condition-on-white-disidentification)
-   [Study 1b](#study-1b)
    -   [Replication of Study 1a (MLR Model Testing)](#replication-of-study-1a-mlr-model-testing)
        -   [Manipulation check](#manipulation-check)
        -   [Main moderation MLR testing](#main-moderation-mlr-testing)
        -   [Relatively liberal Whites *vs.* relatively conservative Whites](#relatively-liberal-whites-vs.-relatively-conservative-whites-1)
        -   [Plot of Political Orientaion Interacting with Condition on White Disidentification](#plot-of-political-orientaion-interacting-with-condition-on-white-disidentification-1)
    -   [Liberal Identification as Covariate (Alternative Explanation Testing)](#liberal-identification-as-covariate-alternative-explanation-testing)
-   [Study 2](#study-2)
    -   [Replication of Study 1a (MLR Model Testing)](#replication-of-study-1a-mlr-model-testing-1)
        -   [Manipulation check](#manipulation-check-1)
        -   [Main moderation MLR testing](#main-moderation-mlr-testing-1)
        -   [Relatively liberal Whites *vs.* relatively conservative Whites](#relatively-liberal-whites-vs.-relatively-conservative-whites-2)
        -   [Plot of Political Orientaion Interacting with Condition on White Disidentification](#plot-of-political-orientaion-interacting-with-condition-on-white-disidentification-2)
    -   [Implications of Racial Disidentification for Racial Equity](#implications-of-racial-disidentification-for-racial-equity)

Project Overview
================

Secured votes from 54% of White Americans——comprising 88% of his voter base——Trump’s 2016 presidential win has created a (mis)perception: Trump represents the majority of White Americans, and his statments represents the viewpoints of the majority of White Americans. This (mis)perceived representativeness of Trump linked White Americans as a group to discriminatory ideologies, via Trump’s sexist, racist, and xenophobic statements regarding marginalized group during and after his campaign. This public image of the White racial group arguably creates psychological tension for liberal-leaning Whites, whose personal ideologies tend to be pro-egalitarian and antithetical to the discriminatory ideologies (e.g., racism, xenophobia, White supremacy and sexism) associated with their racial ingroup. In this project, we explored how liberal-leaning Whites Americans contend with the current public image of their racial ingroup through negotiating their racial identity. We conceptualize this tension as a form of *group-image threat* (i.e., a threat to one’s self-concept that arises when faced with negative attributes of one’s ingroup), and hypothesized that this threat leads liberal-leaning (but not conservative-leaning) Whites to *disidentify* from their racial ingroup (**H1**), and such racial disidentification will be coupled with increased *intentions to advocate for racial equality* (**H2**).

To test these two hypotheses, we conducted 3 studies, with a total sample of 2,481 White Americans via Amazon Mechanical Turk across a one-year span (from 5/23/2018 to 4/17/2019). Studies 1a, 1b and 2 tested **H1**, and study 2 tested **H2**.

Below you can find the results. Refer to *WhtDisId\_analysis.R* for codes used, which can be used for replication along with the redacted datasets.

Materials and Measures
----------------------

### Example of manipulation

The following is an example of the materials that participants received in the actual threat and the high threat condition. Participants in the control condition received no information. ![](R_github_files/figure-markdown_github/unnamed-chunk-1-1.png)![](R_github_files/figure-markdown_github/unnamed-chunk-1-2.png)

### Dependent variables and measures

<table>
<colgroup>
<col width="3%" />
<col width="20%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">No.</th>
<th align="left">VariableNames</th>
<th align="left">ShortdiscriptionofMeasurement</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">1</td>
<td align="left">Political orientation</td>
<td align="left">Participants' personal political beliefs (1 = extremely conservative to 8 = extremely liberal)</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="left">White disidentification</td>
<td align="left">Participants' tendency to distance themselves from the White racial group (1 = Strongly disagree to 7 = Strongly agree)</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="left">Trump’s perceived representativeness</td>
<td align="left">Agreement with the idea that Trump's comments represent viewpoints of the White racial group (1 = Strongly disagree to 7 = Strongly agree)</td>
</tr>
<tr class="even">
<td align="left">4</td>
<td align="left">Liberal group identification</td>
<td align="left">Participants' tendency to view belonging to the liberal group as central to self-concepts (1 = Strongly disagree to 7 = Strongly agree)</td>
</tr>
<tr class="odd">
<td align="left">5</td>
<td align="left">Individual Advocacy</td>
<td align="left">The likelihood that participants would put in personal effort to push for racial equality (1 = Strongly disagree to 7 = Strongly agree)</td>
</tr>
<tr class="even">
<td align="left">6</td>
<td align="left">Policy Support</td>
<td align="left">Participants' support for policies designed to help racial minorities (1 = Strongly disagree to 7 = Strongly agree)</td>
</tr>
</tbody>
</table>

Study 1a
========

Condition moderates the relation between political orientation and White disidentification
------------------------------------------------------------------------------------------

### Main moderation MLR models

Was the association between (liberal) and White disidentification stronger in the high threat condition than that in the actual threat condition?

|                                                      | Estimate | Std. Error | t value |  Pr(&gt; |
|:----------------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                    **(Intercept)**                   |    3.4   |    0.092   |    37   | 2.7e-143 |
|                 **LibCon\_centered**                 |   0.25   |    0.045   |   5.6   |  4.4e-08 |
|          **condition\_controlActual threat**         |   0.079  |    0.13    |   0.61  |   0.54   |
|           **condition\_controlHigh threat**          |   0.31   |    0.13    |   2.4   |   0.017  |
| **LibCon\_centered:condition\_controlActual threat** |  -0.002  |    0.061   |  -0.033 |   0.97   |
|  **LibCon\_centered:condition\_controlHigh threat**  |   0.18   |    0.062   |   2.8   |  0.0046  |

|                                               |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|-----------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                   |      3.52|        0.09|    39.29|         0.00|
| LibCon\_centered                              |      0.25|        0.04|     6.07|         0.00|
| condition\_actualControl                      |     -0.08|        0.13|    -0.61|         0.54|
| condition\_actualHigh threat                  |      0.23|        0.13|     1.81|         0.07|
| LibCon\_centered:condition\_actualControl     |      0.00|        0.06|     0.03|         0.97|
| LibCon\_centered:condition\_actualHigh threat |      0.18|        0.06|     3.02|         0.00|

**Simple slopes for political orientation by condition**

    ##  condition_control LibCon_centered.trend     SE  df lower.CL upper.CL
    ##  Control                           0.252 0.0452 471    0.163    0.341
    ##  Actual threat                     0.250 0.0411 471    0.169    0.331
    ##  High threat                       0.427 0.0419 471    0.345    0.509
    ## 
    ## Confidence level used: 0.95

**Findings**: Although liberal political orientation was associated with racial disidentification in all three conditions, the association between liberal political orientation and racial disidentification was the strongest when participants received information suggesting that Trump’s discriminatory comments represented the majority (vs minority or no information) of Whites.

### Relatively liberal Whites *vs.* relatively conservative Whites

Did relatively liberal participants and relatively conservative participants reacted differently to information suggesting Trump represents White Americans?

**Relatively liberal participants**

|                                               |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|-----------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                   |      3.98|        0.14|    28.70|         0.00|
| LibCon\_above                                 |      0.25|        0.05|     5.57|         0.00|
| condition\_controlActual threat               |      0.07|        0.19|     0.40|         0.69|
| condition\_controlHigh threat                 |      0.68|        0.19|     3.69|         0.00|
| LibCon\_above:condition\_controlActual threat |      0.00|        0.06|    -0.03|         0.97|
| LibCon\_above:condition\_controlHigh threat   |      0.18|        0.06|     2.84|         0.00|

|                                            |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|--------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                |      4.06|        0.13|    32.36|         0.00|
| LibCon\_above                              |      0.25|        0.04|     6.07|         0.00|
| condition\_actualControl                   |     -0.07|        0.19|    -0.40|         0.69|
| condition\_actualHigh threat               |      0.61|        0.18|     3.48|         0.00|
| LibCon\_above:condition\_actualControl     |      0.00|        0.06|     0.03|         0.97|
| LibCon\_above:condition\_actualHigh threat |      0.18|        0.06|     3.02|         0.00|

**Relatively conservative participants**

|                                               |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|-----------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                   |      2.91|        0.13|    22.78|         0.00|
| LibCon\_below                                 |      0.25|        0.05|     5.57|         0.00|
| condition\_controlActual threat               |      0.08|        0.18|     0.46|         0.64|
| condition\_controlHigh threat                 |     -0.06|        0.18|    -0.35|         0.73|
| LibCon\_below:condition\_controlActual threat |      0.00|        0.06|    -0.03|         0.97|
| LibCon\_below:condition\_controlHigh threat   |      0.18|        0.06|     2.84|         0.00|

|                                            |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|--------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                |      2.99|        0.13|    23.80|         0.00|
| LibCon\_below                              |      0.25|        0.04|     6.07|         0.00|
| condition\_actualControl                   |     -0.08|        0.18|    -0.46|         0.64|
| condition\_actualHigh threat               |     -0.15|        0.18|    -0.80|         0.42|
| LibCon\_below:condition\_actualControl     |      0.00|        0.06|     0.03|         0.97|
| LibCon\_below:condition\_actualHigh threat |      0.18|        0.06|     3.02|         0.00|

**Findings**: Information suggesting that Trump’s discriminatory comments represents the majority (vs. minority) of White Americans led liberal-leaning Whites to disidentify from their racial group, while conservative-leaning Whites’ racial identities were not affected by information suggesting Trump’s representativeness

Plot of political orientaion interacting with condition on White disidentification
----------------------------------------------------------------------------------

    ## Warning: Removed 1 rows containing non-finite values (stat_smooth).

![](R_github_files/figure-markdown_github/unnamed-chunk-6-1.png)

Study 1b
========

Replication of Study 1a (MLR Model Testing)
-------------------------------------------

### Manipulation check

The purpose of manipulation check is to check whether the high threat condition increased the extent to which participants perceived Trump to be representative of Whites, compared to the actual threat condition

    ## Warning: Removed 2 rows containing missing values (geom_col_pirate).

![](R_github_files/figure-markdown_github/study%201b-1.png)

### Main moderation MLR testing

Was the association between (liberal) and White disidentification stronger in the high threat condition than that in the actual threat condition?

|                                               |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|-----------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                   |      3.15|        0.05|    65.34|            0|
| LibCon\_centered                              |      0.26|        0.02|    12.41|            0|
| condition\_actualHigh threat                  |      1.02|        0.07|    14.66|            0|
| LibCon\_centered:condition\_actualHigh threat |      0.28|        0.03|     8.96|            0|

**Simple slopes for political orientation by condition**

    ##  condition_actual LibCon_centered.trend     SE   df lower.CL upper.CL
    ##  Actual threat                    0.265 0.0214 1001    0.223    0.307
    ##  High threat                      0.544 0.0227 1001    0.500    0.589
    ## 
    ## Confidence level used: 0.95

**Findings**: Consistent with Study 1a, the effect of liberal political orientation on racial disidentification was stronger when participants received information suggesting that Trump’s discriminatory comments represented the majority (vs. minority) of Whites.

### Relatively liberal Whites *vs.* relatively conservative Whites

Did relatively liberal participants and relatively conservative participants reacted differently to information suggesting Trump represents White Americans?

**Relatively liberal participants**

|                                            |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|--------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                |      3.74|        0.07|    55.02|            0|
| LibCon\_above                              |      0.26|        0.02|    12.41|            0|
| condition\_actualHigh threat               |      1.65|        0.10|    16.71|            0|
| LibCon\_above:condition\_actualHigh threat |      0.28|        0.03|     8.96|            0|

**Relatively conservative participants**

|                                            |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|--------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                |      2.55|        0.07|    37.71|            0|
| LibCon\_below                              |      0.26|        0.02|    12.41|            0|
| condition\_actualHigh threat               |      0.40|        0.10|     4.02|            0|
| LibCon\_below:condition\_actualHigh threat |      0.28|        0.03|     8.96|            0|

**Findings**: Consistent with Study 1a, compared to conservative-leaning participants, liberal-leaning participants’ racial identities were affected more strongly by the information that Trump represented the majority (vs. minority) of White Americans.

### Plot of Political Orientaion Interacting with Condition on White Disidentification

![](R_github_files/figure-markdown_github/unnamed-chunk-11-1.png)

Liberal Identification as Covariate (Alternative Explanation Testing)
---------------------------------------------------------------------

|                                               |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|-----------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                   |      3.74|        0.12|    31.09|            0|
| LibID                                         |     -0.16|        0.03|    -5.35|            0|
| LibCon\_centered                              |      0.37|        0.03|    12.77|            0|
| condition\_actualHigh threat                  |      0.99|        0.07|    14.36|            0|
| LibCon\_centered:condition\_actualHigh threat |      0.28|        0.03|     9.13|            0|

**Findings**: The effect of group-image threat on racial disidentification occurred above and beyond liberal group identification. However, these results should be considered with caution because political orientation and liberal identification are correlated.

Study 2
=======

Replication of Study 1a (MLR Model Testing)
-------------------------------------------

### Manipulation check

The purpose of manipulation check is to check whether the high threat condition increased the extent to which participants perceived Trump to be representative of Whites, compared to the actual threat condition

    ## Warning: Removed 2 rows containing missing values (geom_col_pirate).

![](R_github_files/figure-markdown_github/study%202-1.png)

### Main moderation MLR testing

Was the association between (liberal) and White disidentification stronger in the high threat condition than that in the actual threat condition?

|                                                  |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|--------------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                      |      3.26|        0.06|    51.52|         0.00|
| LibCon\_centered                                 |      0.35|        0.03|    11.58|         0.00|
| condition\_controlActual threat                  |     -0.01|        0.09|    -0.08|         0.93|
| condition\_controlHigh threat                    |      0.27|        0.09|     3.00|         0.00|
| LibCon\_centered:condition\_controlActual threat |     -0.08|        0.04|    -1.75|         0.08|
| LibCon\_centered:condition\_controlHigh threat   |      0.04|        0.04|     0.89|         0.37|

|                                               |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|-----------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                   |      3.25|        0.07|    48.28|         0.00|
| LibCon\_centered                              |      0.28|        0.03|     8.69|         0.00|
| condition\_actualControl                      |      0.01|        0.09|     0.08|         0.93|
| condition\_actualHigh threat                  |      0.28|        0.09|     2.99|         0.00|
| LibCon\_centered:condition\_actualControl     |      0.08|        0.04|     1.75|         0.08|
| LibCon\_centered:condition\_actualHigh threat |      0.12|        0.04|     2.64|         0.01|

**Simple slopes for political orientation by condition**

    ##  condition_control LibCon_centered.trend     SE  df lower.CL upper.CL
    ##  Control                           0.353 0.0305 842    0.294    0.413
    ##  Actual threat                     0.276 0.0318 842    0.214    0.339
    ##  High threat                       0.391 0.0297 842    0.333    0.450
    ## 
    ## Confidence level used: 0.95

**Findings**: Consistent with Studies 1a and 1b, the effect of liberal political orientation on racial disidentification was stronger when participants received information suggesting that Trump’s discriminatory comments represented the majority of Whites than when receiving information suggesting that Trump’s comments only represented the minority of Whites.

### Relatively liberal Whites *vs.* relatively conservative Whites

Did relatively liberal participants and relatively conservative participants reacted differently to information suggesting Trump represents White Americans?

**Relatively liberal participants**

|                                               |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|-----------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                   |      4.01|        0.09|    44.36|         0.00|
| LibCon\_above                                 |      0.35|        0.03|    11.58|         0.00|
| condition\_controlActual threat               |     -0.17|        0.13|    -1.30|         0.20|
| condition\_controlHigh threat                 |      0.35|        0.13|     2.77|         0.01|
| LibCon\_above:condition\_controlActual threat |     -0.08|        0.04|    -1.75|         0.08|
| LibCon\_above:condition\_controlHigh threat   |      0.04|        0.04|     0.89|         0.37|

|                                            |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|--------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                |      3.84|        0.10|    39.57|         0.00|
| LibCon\_above                              |      0.28|        0.03|     8.69|         0.00|
| condition\_actualControl                   |      0.17|        0.13|     1.30|         0.20|
| condition\_actualHigh threat               |      0.52|        0.13|     3.97|         0.00|
| LibCon\_above:condition\_actualControl     |      0.08|        0.04|     1.75|         0.08|
| LibCon\_above:condition\_actualHigh threat |      0.12|        0.04|     2.64|         0.01|

**Relatively conservative participants**

|                                               |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|-----------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                   |      2.51|        0.09|    27.60|         0.00|
| LibCon\_below                                 |      0.35|        0.03|    11.58|         0.00|
| condition\_controlActual threat               |      0.16|        0.13|     1.20|         0.23|
| condition\_controlHigh threat                 |      0.19|        0.13|     1.48|         0.14|
| LibCon\_below:condition\_controlActual threat |     -0.08|        0.04|    -1.75|         0.08|
| LibCon\_below:condition\_controlHigh threat   |      0.04|        0.04|     0.89|         0.37|

|                                            |  Estimate|  Std. Error|  t value|  Pr(&gt;|t|)|
|--------------------------------------------|---------:|-----------:|--------:|------------:|
| (Intercept)                                |      2.66|        0.09|    28.39|         0.00|
| LibCon\_below                              |      0.28|        0.03|     8.69|         0.00|
| condition\_actualControl                   |     -0.16|        0.13|    -1.20|         0.23|
| condition\_actualHigh threat               |      0.04|        0.13|     0.27|         0.79|
| LibCon\_below:condition\_actualControl     |      0.08|        0.04|     1.75|         0.08|
| LibCon\_below:condition\_actualHigh threat |      0.12|        0.04|     2.64|         0.01|

**Findings**: Consistent with Studies 1a and 1b, receiving information suggesting that Trump’s discriminatory comments represented the majority (vs. minority) of White Americans led liberal-leaning Whites to disidentify from their racial group, while conservative-leaning Whites’ racial identities were not affected by information suggesting Trump’s representativeness.

### Plot of Political Orientaion Interacting with Condition on White Disidentification

    ## Warning: Removed 1 rows containing non-finite values (stat_smooth).

![](R_github_files/figure-markdown_github/unnamed-chunk-17-1.png)

Implications of Racial Disidentification for Racial Equity
----------------------------------------------------------

Note: b1a3 = Index of moderated mediation, (a1b1+b1a3 -1) and (a1b1+b1a3 1) = conditional indirect effects

**Findings**: Among participants who learned that Trump’s comments represented the majority (vs. minority) of Whites, liberal political orientation had a stronger effect on racial disidentification, which further had a stronger effect on intentions to advocate for racial equality through individual advocacy and policy support.
