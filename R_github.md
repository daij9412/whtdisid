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

The following is an example of the materials that participants received in the actual threat and the high threat condition. Participants in the control condition received no information. ![](https://github.com/daij9412/whtdisid/blob/master/actual_image.png)![](R_github_files/figure-markdown_github/unnamed-chunk-1-2.png)

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

**Control Condition as the Reference Level**

|                                                      | Estimate | Std. Error | t value |  Pr(&gt; |
|:----------------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                    **(Intercept)**                   |    3.4   |    0.092   |    37   | 2.7e-143 |
|                 **LibCon\_centered**                 |   0.25   |    0.045   |   5.6   |  4.4e-08 |
|          **condition\_controlActual threat**         |   0.079  |    0.13    |   0.61  |   0.54   |
|           **condition\_controlHigh threat**          |   0.31   |    0.13    |   2.4   |   0.017  |
| **LibCon\_centered:condition\_controlActual threat** |  -0.002  |    0.061   |  -0.033 |   0.97   |
|  **LibCon\_centered:condition\_controlHigh threat**  |   0.18   |    0.062   |   2.8   |  0.0046  |

**Actual Threat Condition as the Reference Level (Study 1a)**

|                                                   | Estimate | Std. Error | t value |  Pr(&gt; |
|:-------------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                  **(Intercept)**                  |    3.5   |    0.09    |    39   | 9.7e-151 |
|                **LibCon\_centered**               |   0.25   |    0.041   |   6.1   |  2.6e-09 |
|            **condition\_actualControl**           |  -0.079  |    0.13    |  -0.61  |   0.54   |
|          **condition\_actualHigh threat**         |   0.23   |    0.13    |   1.8   |   0.071  |
|   **LibCon\_centered:condition\_actualControl**   |   0.002  |    0.061   |  0.033  |   0.97   |
| **LibCon\_centered:condition\_actualHigh threat** |   0.18   |    0.059   |    3    |  0.0027  |

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

|                                                   | Estimate | Std. Error | t value |  Pr(&gt; |
|:-------------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                  **(Intercept)**                  |     4    |    0.14    |    29   | 1.8e-105 |
|                 **LibCon\_above**                 |   0.25   |    0.045   |   5.6   |  4.4e-08 |
|        **condition\_controlActual threat**        |   0.075  |    0.19    |   0.4   |   0.69   |
|         **condition\_controlHigh threat**         |   0.68   |    0.19    |   3.7   |  0.00025 |
| **LibCon\_above:condition\_controlActual threat** |  -0.002  |    0.061   |  -0.033 |   0.97   |
|  **LibCon\_above:condition\_controlHigh threat**  |   0.18   |    0.062   |   2.8   |  0.0046  |

|                                                | Estimate | Std. Error | t value |  Pr(&gt; |
|:----------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                 **(Intercept)**                |    4.1   |    0.13    |    32   | 8.9e-122 |
|                **LibCon\_above**               |   0.25   |    0.041   |   6.1   |  2.6e-09 |
|          **condition\_actualControl**          |  -0.075  |    0.19    |   -0.4  |   0.69   |
|        **condition\_actualHigh threat**        |   0.61   |    0.18    |   3.5   |  0.00056 |
|   **LibCon\_above:condition\_actualControl**   |   0.002  |    0.061   |  0.033  |   0.97   |
| **LibCon\_above:condition\_actualHigh threat** |   0.18   |    0.059   |    3    |  0.0027  |

**Relatively conservative participants**

|                                                   | Estimate | Std. Error | t value | Pr(&gt; |
|:-------------------------------------------------:|:--------:|:----------:|:-------:|:-------:|
|                  **(Intercept)**                  |    2.9   |    0.13    |    23   | 5.5e-78 |
|                 **LibCon\_below**                 |   0.25   |    0.045   |   5.6   | 4.4e-08 |
|        **condition\_controlActual threat**        |   0.083  |    0.18    |   0.46  |   0.64  |
|         **condition\_controlHigh threat**         |  -0.064  |    0.18    |  -0.35  |   0.73  |
| **LibCon\_below:condition\_controlActual threat** |  -0.002  |    0.061   |  -0.033 |   0.97  |
|  **LibCon\_below:condition\_controlHigh threat**  |   0.18   |    0.062   |   2.8   |  0.0046 |

|                                                | Estimate | Std. Error | t value | Pr(&gt; |
|:----------------------------------------------:|:--------:|:----------:|:-------:|:-------:|
|                 **(Intercept)**                |     3    |    0.13    |    24   | 8.2e-83 |
|                **LibCon\_below**               |   0.25   |    0.041   |   6.1   | 2.6e-09 |
|          **condition\_actualControl**          |  -0.083  |    0.18    |  -0.46  |   0.64  |
|        **condition\_actualHigh threat**        |   -0.15  |    0.18    |   -0.8  |   0.42  |
|   **LibCon\_below:condition\_actualControl**   |   0.002  |    0.061   |  0.033  |   0.97  |
| **LibCon\_below:condition\_actualHigh threat** |   0.18   |    0.059   |    3    |  0.0027 |

**Findings**: Information suggesting that Trump’s discriminatory comments represents the majority (vs. minority) of White Americans led liberal-leaning Whites to disidentify from their racial group, while conservative-leaning Whites’ racial identities were not affected by information suggesting Trump’s representativeness

Plot of political orientaion interacting with condition on White disidentification
----------------------------------------------------------------------------------

    ## Warning: Removed 1 rows containing non-finite values (stat_smooth).

![](R_github_files/figure-markdown_github/unnamed-chunk-8-1.png)

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

**Actual Condition as the Reference Level**

|                                                   | Estimate | Std. Error | t value | Pr(&gt; |
|:-------------------------------------------------:|:--------:|:----------:|:-------:|:-------:|
|                  **(Intercept)**                  |    3.1   |    0.048   |    65   |    0    |
|                **LibCon\_centered**               |   0.26   |    0.021   |    12   | 5.5e-33 |
|          **condition\_actualHigh threat**         |     1    |    0.07    |    15   | 3.1e-44 |
| **LibCon\_centered:condition\_actualHigh threat** |   0.28   |    0.031   |    9    | 1.5e-18 |

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

|                                                | Estimate | Std. Error | t value |  Pr(&gt; |
|:----------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                 **(Intercept)**                |    3.7   |    0.068   |    55   | 6.3e-305 |
|                **LibCon\_above**               |   0.26   |    0.021   |    12   |  5.5e-33 |
|        **condition\_actualHigh threat**        |    1.6   |    0.099   |    17   |  1.9e-55 |
| **LibCon\_above:condition\_actualHigh threat** |   0.28   |    0.031   |    9    |  1.5e-18 |

**Relatively conservative participants**

|                                                | Estimate | Std. Error | t value |  Pr(&gt; |
|:----------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                 **(Intercept)**                |    2.6   |    0.068   |    38   | 2.2e-194 |
|                **LibCon\_below**               |   0.26   |    0.021   |    12   |  5.5e-33 |
|        **condition\_actualHigh threat**        |    0.4   |    0.099   |    4    |  6.3e-05 |
| **LibCon\_below:condition\_actualHigh threat** |   0.28   |    0.031   |    9    |  1.5e-18 |

**Findings**: Consistent with Study 1a, compared to conservative-leaning participants, liberal-leaning participants’ racial identities were affected more strongly by the information that Trump represented the majority (vs. minority) of White Americans.

### Plot of Political Orientaion Interacting with Condition on White Disidentification

![](R_github_files/figure-markdown_github/unnamed-chunk-13-1.png)

Liberal Identification as Covariate (Alternative Explanation Testing)
---------------------------------------------------------------------

|                                                   | Estimate | Std. Error | t value |  Pr(&gt; |
|:-------------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                  **(Intercept)**                  |    3.7   |    0.12    |    31   | 4.9e-149 |
|                     **LibID**                     |   -0.16  |    0.03    |   -5.3  |  1.1e-07 |
|                **LibCon\_centered**               |   0.37   |    0.029   |    13   |  1.1e-34 |
|          **condition\_actualHigh threat**         |   0.99   |    0.069   |    14   |  1.2e-42 |
| **LibCon\_centered:condition\_actualHigh threat** |   0.28   |    0.031   |   9.1   |  3.6e-19 |

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

**Control Condition as the Reference Level**

|                                                      | Estimate | Std. Error | t value |  Pr(&gt; |
|:----------------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                    **(Intercept)**                   |    3.3   |    0.063   |    52   | 1.5e-262 |
|                 **LibCon\_centered**                 |   0.35   |    0.031   |    12   |  6.9e-29 |
|          **condition\_controlActual threat**         |  -0.0078 |    0.092   |  -0.084 |   0.93   |
|           **condition\_controlHigh threat**          |   0.27   |    0.091   |    3    |  0.0028  |
| **LibCon\_centered:condition\_controlActual threat** |  -0.077  |    0.044   |   -1.8  |   0.08   |
|  **LibCon\_centered:condition\_controlHigh threat**  |   0.038  |    0.043   |   0.89  |   0.37   |

**Actual Threat Condition as the Reference Level**

|                                                   | Estimate | Std. Error | t value |  Pr(&gt; |
|:-------------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                  **(Intercept)**                  |    3.2   |    0.067   |    48   | 8.5e-245 |
|                **LibCon\_centered**               |   0.28   |    0.032   |   8.7   |  1.9e-17 |
|            **condition\_actualControl**           |  0.0078  |    0.092   |  0.084  |   0.93   |
|          **condition\_actualHigh threat**         |   0.28   |    0.094   |    3    |  0.0029  |
|   **LibCon\_centered:condition\_actualControl**   |   0.077  |    0.044   |   1.8   |   0.08   |
| **LibCon\_centered:condition\_actualHigh threat** |   0.12   |    0.044   |   2.6   |  0.0084  |

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

|                                                   | Estimate | Std. Error | t value |  Pr(&gt; |
|:-------------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                  **(Intercept)**                  |     4    |    0.09    |    44   | 1.6e-222 |
|                 **LibCon\_above**                 |   0.35   |    0.031   |    12   |  6.9e-29 |
|        **condition\_controlActual threat**        |   -0.17  |    0.13    |   -1.3  |    0.2   |
|         **condition\_controlHigh threat**         |   0.35   |    0.13    |   2.8   |  0.0057  |
| **LibCon\_above:condition\_controlActual threat** |  -0.077  |    0.044   |   -1.8  |   0.08   |
|  **LibCon\_above:condition\_controlHigh threat**  |   0.038  |    0.043   |   0.89  |   0.37   |

|                                                | Estimate | Std. Error | t value |  Pr(&gt; |
|:----------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                 **(Intercept)**                |    3.8   |    0.097   |    40   | 2.5e-194 |
|                **LibCon\_above**               |   0.28   |    0.032   |   8.7   |  1.9e-17 |
|          **condition\_actualControl**          |   0.17   |    0.13    |   1.3   |    0.2   |
|        **condition\_actualHigh threat**        |   0.52   |    0.13    |    4    |  7.7e-05 |
|   **LibCon\_above:condition\_actualControl**   |   0.077  |    0.044   |   1.8   |   0.08   |
| **LibCon\_above:condition\_actualHigh threat** |   0.12   |    0.044   |   2.6   |  0.0084  |

**Relatively conservative participants**

|                                                   | Estimate | Std. Error | t value |  Pr(&gt; |
|:-------------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                  **(Intercept)**                  |    2.5   |    0.091   |    28   | 6.3e-120 |
|                 **LibCon\_below**                 |   0.35   |    0.031   |    12   |  6.9e-29 |
|        **condition\_controlActual threat**        |   0.16   |    0.13    |   1.2   |   0.23   |
|         **condition\_controlHigh threat**         |   0.19   |    0.13    |   1.5   |   0.14   |
| **LibCon\_below:condition\_controlActual threat** |  -0.077  |    0.044   |   -1.8  |   0.08   |
|  **LibCon\_below:condition\_controlHigh threat**  |   0.038  |    0.043   |   0.89  |   0.37   |

|                                                | Estimate | Std. Error | t value |  Pr(&gt; |
|:----------------------------------------------:|:--------:|:----------:|:-------:|:--------:|
|                 **(Intercept)**                |    2.7   |    0.094   |    28   | 6.8e-125 |
|                **LibCon\_below**               |   0.28   |    0.032   |   8.7   |  1.9e-17 |
|          **condition\_actualControl**          |   -0.16  |    0.13    |   -1.2  |   0.23   |
|        **condition\_actualHigh threat**        |   0.035  |    0.13    |   0.27  |   0.79   |
|   **LibCon\_below:condition\_actualControl**   |   0.077  |    0.044   |   1.8   |   0.08   |
| **LibCon\_below:condition\_actualHigh threat** |   0.12   |    0.044   |   2.6   |  0.0084  |

**Findings**: Consistent with Studies 1a and 1b, receiving information suggesting that Trump’s discriminatory comments represented the majority (vs. minority) of White Americans led liberal-leaning Whites to disidentify from their racial group, while conservative-leaning Whites’ racial identities were not affected by information suggesting Trump’s representativeness.

### Plot of Political Orientaion Interacting with Condition on White Disidentification

    ## Warning: Removed 1 rows containing non-finite values (stat_smooth).

![](R_github_files/figure-markdown_github/unnamed-chunk-20-1.png)

Implications of Racial Disidentification for Racial Equity
----------------------------------------------------------

Note: b1a3 = Index of moderated mediation, (a1b1+b1a3 -1) and (a1b1+b1a3 1) = conditional indirect effects

**Individual advocacy for racial equity**

<table style="width:100%;">
<colgroup>
<col width="15%" />
<col width="3%" />
<col width="15%" />
<col width="7%" />
<col width="6%" />
<col width="5%" />
<col width="5%" />
<col width="6%" />
<col width="7%" />
<col width="7%" />
<col width="6%" />
<col width="6%" />
<col width="6%" />
</colgroup>
<thead>
<tr class="header">
<th align="center">lhs</th>
<th align="center">op</th>
<th align="center">rhs</th>
<th align="center">label</th>
<th align="center">est</th>
<th align="center">se</th>
<th align="center">z</th>
<th align="center">pvalue</th>
<th align="center">ci.lower</th>
<th align="center">ci.upper</th>
<th align="center">std.lv</th>
<th align="center">std.all</th>
<th align="center">std.nox</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="center">WhtDis_comp_centered</td>
<td align="center">~1</td>
<td align="center"></td>
<td align="center"></td>
<td align="center">-0.0071</td>
<td align="center">0.048</td>
<td align="center">-0.15</td>
<td align="center">0.88</td>
<td align="center">-0.1</td>
<td align="center">0.088</td>
<td align="center">-0.0071</td>
<td align="center">-0.0053</td>
<td align="center">-0.0053</td>
</tr>
<tr class="even">
<td align="center">WhtDis_comp_centered</td>
<td align="center">~</td>
<td align="center">LibCon_centered</td>
<td align="center">a1</td>
<td align="center">0.33</td>
<td align="center">0.023</td>
<td align="center">14</td>
<td align="center">0</td>
<td align="center">0.29</td>
<td align="center">0.38</td>
<td align="center">0.33</td>
<td align="center">0.53</td>
<td align="center">0.25</td>
</tr>
<tr class="odd">
<td align="center">WhtDis_comp_centered</td>
<td align="center">~</td>
<td align="center">condition_contrast</td>
<td align="center">a2</td>
<td align="center">0.14</td>
<td align="center">0.049</td>
<td align="center">2.9</td>
<td align="center">0.004</td>
<td align="center">0.045</td>
<td align="center">0.23</td>
<td align="center">0.14</td>
<td align="center">0.1</td>
<td align="center">0.1</td>
</tr>
<tr class="even">
<td align="center">WhtDis_comp_centered</td>
<td align="center">~</td>
<td align="center">LibCon_condition</td>
<td align="center">a3</td>
<td align="center">0.058</td>
<td align="center">0.023</td>
<td align="center">2.5</td>
<td align="center">0.013</td>
<td align="center">0.011</td>
<td align="center">0.1</td>
<td align="center">0.058</td>
<td align="center">0.092</td>
<td align="center">0.043</td>
</tr>
<tr class="odd">
<td align="center">IndivAction</td>
<td align="center">~</td>
<td align="center">WhtDis_comp_centered</td>
<td align="center">b1</td>
<td align="center">0.17</td>
<td align="center">0.044</td>
<td align="center">3.9</td>
<td align="center">8.9e-05</td>
<td align="center">0.083</td>
<td align="center">0.26</td>
<td align="center">0.17</td>
<td align="center">0.18</td>
<td align="center">0.18</td>
</tr>
<tr class="even">
<td align="center">IndivAction</td>
<td align="center">~1</td>
<td align="center"></td>
<td align="center"></td>
<td align="center">4.7</td>
<td align="center">0.049</td>
<td align="center">96</td>
<td align="center">0</td>
<td align="center">4.6</td>
<td align="center">4.8</td>
<td align="center">4.7</td>
<td align="center">3.5</td>
<td align="center">3.5</td>
</tr>
<tr class="odd">
<td align="center">IndivAction</td>
<td align="center">~</td>
<td align="center">LibCon_centered</td>
<td align="center">cp</td>
<td align="center">0.24</td>
<td align="center">0.027</td>
<td align="center">8.9</td>
<td align="center">0</td>
<td align="center">0.19</td>
<td align="center">0.29</td>
<td align="center">0.24</td>
<td align="center">0.39</td>
<td align="center">0.18</td>
</tr>
<tr class="even">
<td align="center">WhtDis_comp_centered</td>
<td align="center">~~</td>
<td align="center">WhtDis_comp_centered</td>
<td align="center"></td>
<td align="center">1.3</td>
<td align="center">0.076</td>
<td align="center">17</td>
<td align="center">0</td>
<td align="center">1.1</td>
<td align="center">1.4</td>
<td align="center">1.3</td>
<td align="center">0.69</td>
<td align="center">0.69</td>
</tr>
<tr class="odd">
<td align="center">IndivAction</td>
<td align="center">~~</td>
<td align="center">IndivAction</td>
<td align="center"></td>
<td align="center">1.3</td>
<td align="center">0.085</td>
<td align="center">15</td>
<td align="center">0</td>
<td align="center">1.2</td>
<td align="center">1.5</td>
<td align="center">1.3</td>
<td align="center">0.74</td>
<td align="center">0.74</td>
</tr>
<tr class="even">
<td align="center">LibCon_centered</td>
<td align="center">~~</td>
<td align="center">LibCon_centered</td>
<td align="center"></td>
<td align="center">4.7</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">4.7</td>
<td align="center">4.7</td>
<td align="center">4.7</td>
<td align="center">1</td>
<td align="center">4.7</td>
</tr>
<tr class="odd">
<td align="center">LibCon_centered</td>
<td align="center">~~</td>
<td align="center">condition_contrast</td>
<td align="center"></td>
<td align="center">0.065</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">0.065</td>
<td align="center">0.065</td>
<td align="center">0.065</td>
<td align="center">0.03</td>
<td align="center">0.065</td>
</tr>
<tr class="even">
<td align="center">LibCon_centered</td>
<td align="center">~~</td>
<td align="center">LibCon_condition</td>
<td align="center"></td>
<td align="center">0.31</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">0.31</td>
<td align="center">0.31</td>
<td align="center">0.31</td>
<td align="center">0.067</td>
<td align="center">0.31</td>
</tr>
<tr class="odd">
<td align="center">condition_contrast</td>
<td align="center">~~</td>
<td align="center">condition_contrast</td>
<td align="center"></td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
</tr>
<tr class="even">
<td align="center">condition_contrast</td>
<td align="center">~~</td>
<td align="center">LibCon_condition</td>
<td align="center"></td>
<td align="center">-0.0057</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">-0.0057</td>
<td align="center">-0.0057</td>
<td align="center">-0.0057</td>
<td align="center">-0.0027</td>
<td align="center">-0.0057</td>
</tr>
<tr class="odd">
<td align="center">LibCon_condition</td>
<td align="center">~~</td>
<td align="center">LibCon_condition</td>
<td align="center"></td>
<td align="center">4.6</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">4.6</td>
<td align="center">4.6</td>
<td align="center">4.6</td>
<td align="center">1</td>
<td align="center">4.6</td>
</tr>
<tr class="even">
<td align="center">LibCon_centered</td>
<td align="center">~1</td>
<td align="center"></td>
<td align="center"></td>
<td align="center">-0.0036</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">-0.0036</td>
<td align="center">-0.0036</td>
<td align="center">-0.0036</td>
<td align="center">-0.0017</td>
<td align="center">-0.0036</td>
</tr>
<tr class="odd">
<td align="center">condition_contrast</td>
<td align="center">~1</td>
<td align="center"></td>
<td align="center"></td>
<td align="center">0.033</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">0.033</td>
<td align="center">0.033</td>
<td align="center">0.033</td>
<td align="center">0.033</td>
<td align="center">0.033</td>
</tr>
<tr class="even">
<td align="center">LibCon_condition</td>
<td align="center">~1</td>
<td align="center"></td>
<td align="center"></td>
<td align="center">0.064</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">0.064</td>
<td align="center">0.064</td>
<td align="center">0.064</td>
<td align="center">0.03</td>
<td align="center">0.064</td>
</tr>
<tr class="odd">
<td align="center">b1a3</td>
<td align="center">:=</td>
<td align="center">b1*a3</td>
<td align="center">b1a3</td>
<td align="center">0.0099</td>
<td align="center">0.0044</td>
<td align="center">2.3</td>
<td align="center">0.023</td>
<td align="center">0.0027</td>
<td align="center">0.02</td>
<td align="center">0.0099</td>
<td align="center">0.016</td>
<td align="center">0.0075</td>
</tr>
<tr class="even">
<td align="center">actualss</td>
<td align="center">:=</td>
<td align="center">a1+a3*-1</td>
<td align="center">actualss</td>
<td align="center">0.28</td>
<td align="center">0.035</td>
<td align="center">7.8</td>
<td align="center">4.7e-15</td>
<td align="center">0.21</td>
<td align="center">0.35</td>
<td align="center">0.28</td>
<td align="center">0.44</td>
<td align="center">0.2</td>
</tr>
<tr class="odd">
<td align="center">highss</td>
<td align="center">:=</td>
<td align="center">a1+a3*1</td>
<td align="center">highss</td>
<td align="center">0.39</td>
<td align="center">0.03</td>
<td align="center">13</td>
<td align="center">0</td>
<td align="center">0.33</td>
<td align="center">0.45</td>
<td align="center">0.39</td>
<td align="center">0.62</td>
<td align="center">0.29</td>
</tr>
<tr class="even">
<td align="center">actual</td>
<td align="center">:=</td>
<td align="center">a1<em>b1+b1a3</em>-1</td>
<td align="center">actual</td>
<td align="center">0.048</td>
<td align="center">0.015</td>
<td align="center">3.2</td>
<td align="center">0.0016</td>
<td align="center">0.022</td>
<td align="center">0.081</td>
<td align="center">0.048</td>
<td align="center">0.077</td>
<td align="center">0.036</td>
</tr>
<tr class="odd">
<td align="center">high</td>
<td align="center">:=</td>
<td align="center">a1<em>b1+b1a3</em>1</td>
<td align="center">high</td>
<td align="center">0.068</td>
<td align="center">0.018</td>
<td align="center">3.8</td>
<td align="center">0.00017</td>
<td align="center">0.033</td>
<td align="center">0.1</td>
<td align="center">0.068</td>
<td align="center">0.11</td>
<td align="center">0.051</td>
</tr>
</tbody>
</table>

**Support for policies designed to help racially minoritized groups**

<table style="width:100%;">
<colgroup>
<col width="15%" />
<col width="3%" />
<col width="15%" />
<col width="7%" />
<col width="6%" />
<col width="5%" />
<col width="5%" />
<col width="6%" />
<col width="7%" />
<col width="7%" />
<col width="6%" />
<col width="6%" />
<col width="6%" />
</colgroup>
<thead>
<tr class="header">
<th align="center">lhs</th>
<th align="center">op</th>
<th align="center">rhs</th>
<th align="center">label</th>
<th align="center">est</th>
<th align="center">se</th>
<th align="center">z</th>
<th align="center">pvalue</th>
<th align="center">ci.lower</th>
<th align="center">ci.upper</th>
<th align="center">std.lv</th>
<th align="center">std.all</th>
<th align="center">std.nox</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="center">WhtDis_comp_centered</td>
<td align="center">~1</td>
<td align="center"></td>
<td align="center"></td>
<td align="center">-0.0071</td>
<td align="center">0.048</td>
<td align="center">-0.15</td>
<td align="center">0.88</td>
<td align="center">-0.1</td>
<td align="center">0.088</td>
<td align="center">-0.0071</td>
<td align="center">-0.0053</td>
<td align="center">-0.0053</td>
</tr>
<tr class="even">
<td align="center">WhtDis_comp_centered</td>
<td align="center">~</td>
<td align="center">LibCon_centered</td>
<td align="center">a1</td>
<td align="center">0.33</td>
<td align="center">0.023</td>
<td align="center">14</td>
<td align="center">0</td>
<td align="center">0.29</td>
<td align="center">0.38</td>
<td align="center">0.33</td>
<td align="center">0.53</td>
<td align="center">0.25</td>
</tr>
<tr class="odd">
<td align="center">WhtDis_comp_centered</td>
<td align="center">~</td>
<td align="center">condition_contrast</td>
<td align="center">a2</td>
<td align="center">0.14</td>
<td align="center">0.049</td>
<td align="center">2.9</td>
<td align="center">0.004</td>
<td align="center">0.045</td>
<td align="center">0.23</td>
<td align="center">0.14</td>
<td align="center">0.1</td>
<td align="center">0.1</td>
</tr>
<tr class="even">
<td align="center">WhtDis_comp_centered</td>
<td align="center">~</td>
<td align="center">LibCon_condition</td>
<td align="center">a3</td>
<td align="center">0.058</td>
<td align="center">0.023</td>
<td align="center">2.5</td>
<td align="center">0.013</td>
<td align="center">0.011</td>
<td align="center">0.1</td>
<td align="center">0.058</td>
<td align="center">0.092</td>
<td align="center">0.043</td>
</tr>
<tr class="odd">
<td align="center">PolicySupport</td>
<td align="center">~</td>
<td align="center">WhtDis_comp_centered</td>
<td align="center">b1</td>
<td align="center">0.33</td>
<td align="center">0.051</td>
<td align="center">6.4</td>
<td align="center">1.9e-10</td>
<td align="center">0.23</td>
<td align="center">0.43</td>
<td align="center">0.33</td>
<td align="center">0.26</td>
<td align="center">0.26</td>
</tr>
<tr class="even">
<td align="center">PolicySupport</td>
<td align="center">~1</td>
<td align="center"></td>
<td align="center"></td>
<td align="center">4.2</td>
<td align="center">0.053</td>
<td align="center">78</td>
<td align="center">0</td>
<td align="center">4.1</td>
<td align="center">4.3</td>
<td align="center">4.2</td>
<td align="center">2.5</td>
<td align="center">2.5</td>
</tr>
<tr class="odd">
<td align="center">PolicySupport</td>
<td align="center">~</td>
<td align="center">LibCon_centered</td>
<td align="center">cp</td>
<td align="center">0.39</td>
<td align="center">0.033</td>
<td align="center">12</td>
<td align="center">0</td>
<td align="center">0.32</td>
<td align="center">0.46</td>
<td align="center">0.39</td>
<td align="center">0.5</td>
<td align="center">0.23</td>
</tr>
<tr class="even">
<td align="center">WhtDis_comp_centered</td>
<td align="center">~~</td>
<td align="center">WhtDis_comp_centered</td>
<td align="center"></td>
<td align="center">1.3</td>
<td align="center">0.076</td>
<td align="center">17</td>
<td align="center">0</td>
<td align="center">1.1</td>
<td align="center">1.4</td>
<td align="center">1.3</td>
<td align="center">0.69</td>
<td align="center">0.69</td>
</tr>
<tr class="odd">
<td align="center">PolicySupport</td>
<td align="center">~~</td>
<td align="center">PolicySupport</td>
<td align="center"></td>
<td align="center">1.5</td>
<td align="center">0.1</td>
<td align="center">14</td>
<td align="center">0</td>
<td align="center">1.3</td>
<td align="center">1.7</td>
<td align="center">1.5</td>
<td align="center">0.53</td>
<td align="center">0.53</td>
</tr>
<tr class="even">
<td align="center">LibCon_centered</td>
<td align="center">~~</td>
<td align="center">LibCon_centered</td>
<td align="center"></td>
<td align="center">4.7</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">4.7</td>
<td align="center">4.7</td>
<td align="center">4.7</td>
<td align="center">1</td>
<td align="center">4.7</td>
</tr>
<tr class="odd">
<td align="center">LibCon_centered</td>
<td align="center">~~</td>
<td align="center">condition_contrast</td>
<td align="center"></td>
<td align="center">0.065</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">0.065</td>
<td align="center">0.065</td>
<td align="center">0.065</td>
<td align="center">0.03</td>
<td align="center">0.065</td>
</tr>
<tr class="even">
<td align="center">LibCon_centered</td>
<td align="center">~~</td>
<td align="center">LibCon_condition</td>
<td align="center"></td>
<td align="center">0.31</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">0.31</td>
<td align="center">0.31</td>
<td align="center">0.31</td>
<td align="center">0.067</td>
<td align="center">0.31</td>
</tr>
<tr class="odd">
<td align="center">condition_contrast</td>
<td align="center">~~</td>
<td align="center">condition_contrast</td>
<td align="center"></td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
</tr>
<tr class="even">
<td align="center">condition_contrast</td>
<td align="center">~~</td>
<td align="center">LibCon_condition</td>
<td align="center"></td>
<td align="center">-0.0057</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">-0.0057</td>
<td align="center">-0.0057</td>
<td align="center">-0.0057</td>
<td align="center">-0.0027</td>
<td align="center">-0.0057</td>
</tr>
<tr class="odd">
<td align="center">LibCon_condition</td>
<td align="center">~~</td>
<td align="center">LibCon_condition</td>
<td align="center"></td>
<td align="center">4.6</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">4.6</td>
<td align="center">4.6</td>
<td align="center">4.6</td>
<td align="center">1</td>
<td align="center">4.6</td>
</tr>
<tr class="even">
<td align="center">LibCon_centered</td>
<td align="center">~1</td>
<td align="center"></td>
<td align="center"></td>
<td align="center">-0.0036</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">-0.0036</td>
<td align="center">-0.0036</td>
<td align="center">-0.0036</td>
<td align="center">-0.0017</td>
<td align="center">-0.0036</td>
</tr>
<tr class="odd">
<td align="center">condition_contrast</td>
<td align="center">~1</td>
<td align="center"></td>
<td align="center"></td>
<td align="center">0.033</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">0.033</td>
<td align="center">0.033</td>
<td align="center">0.033</td>
<td align="center">0.033</td>
<td align="center">0.033</td>
</tr>
<tr class="even">
<td align="center">LibCon_condition</td>
<td align="center">~1</td>
<td align="center"></td>
<td align="center"></td>
<td align="center">0.064</td>
<td align="center">0</td>
<td align="center">NA</td>
<td align="center">NA</td>
<td align="center">0.064</td>
<td align="center">0.064</td>
<td align="center">0.064</td>
<td align="center">0.03</td>
<td align="center">0.064</td>
</tr>
<tr class="odd">
<td align="center">b1a3</td>
<td align="center">:=</td>
<td align="center">b1*a3</td>
<td align="center">b1a3</td>
<td align="center">0.019</td>
<td align="center">0.0078</td>
<td align="center">2.4</td>
<td align="center">0.015</td>
<td align="center">0.0044</td>
<td align="center">0.035</td>
<td align="center">0.019</td>
<td align="center">0.024</td>
<td align="center">0.011</td>
</tr>
<tr class="even">
<td align="center">actualss</td>
<td align="center">:=</td>
<td align="center">a1+a3*-1</td>
<td align="center">actualss</td>
<td align="center">0.28</td>
<td align="center">0.035</td>
<td align="center">7.8</td>
<td align="center">4.7e-15</td>
<td align="center">0.21</td>
<td align="center">0.35</td>
<td align="center">0.28</td>
<td align="center">0.44</td>
<td align="center">0.2</td>
</tr>
<tr class="odd">
<td align="center">highss</td>
<td align="center">:=</td>
<td align="center">a1+a3*1</td>
<td align="center">highss</td>
<td align="center">0.39</td>
<td align="center">0.03</td>
<td align="center">13</td>
<td align="center">0</td>
<td align="center">0.33</td>
<td align="center">0.45</td>
<td align="center">0.39</td>
<td align="center">0.62</td>
<td align="center">0.29</td>
</tr>
<tr class="even">
<td align="center">actual</td>
<td align="center">:=</td>
<td align="center">a1<em>b1+b1a3</em>-1</td>
<td align="center">actual</td>
<td align="center">0.091</td>
<td align="center">0.02</td>
<td align="center">4.5</td>
<td align="center">8.3e-06</td>
<td align="center">0.056</td>
<td align="center">0.13</td>
<td align="center">0.091</td>
<td align="center">0.12</td>
<td align="center">0.054</td>
</tr>
<tr class="odd">
<td align="center">high</td>
<td align="center">:=</td>
<td align="center">a1<em>b1+b1a3</em>1</td>
<td align="center">high</td>
<td align="center">0.13</td>
<td align="center">0.022</td>
<td align="center">5.7</td>
<td align="center">1e-08</td>
<td align="center">0.088</td>
<td align="center">0.17</td>
<td align="center">0.13</td>
<td align="center">0.17</td>
<td align="center">0.077</td>
</tr>
</tbody>
</table>

**Findings**: Among participants who learned that Trump’s comments represented the majority (vs. minority) of Whites, liberal political orientation had a stronger effect on racial disidentification, which further had a stronger effect on intentions to advocate for racial equality through individual advocacy and policy support.
