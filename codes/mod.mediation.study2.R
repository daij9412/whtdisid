###########################################################
## Below is the code used for moderated mediation tests in#
## Study 2, with DV as intentions to support for racial  ##
## equity. Code can be used for replication along with   ##
## redacted datasets. Full datasets are not be released  ## 
## to public due to confidentiality concern. Researchers ##
## interested in the full datasets could contact the     ## 
## research team.                                        ##
## Note: data for open-ended reponse is not shared due to #
## confidentiality concern. Researchers interested in the #
## response could contact the research team.             ##
###########################################################

#####################

##load required packages
require(tidyverse); require(dplyr); require(readr); require(lavaan); require(processr)

###########load data#################

####################
##    Study 2     ##
####################

##########################
##  test using lavaan   ##
##########################

##Note: b1a3 = Index of moderated mediation, (a1b1+b1a3 -1) and (a1b1+b1a3 1) = conditional indirect effects 

#compute interaction terms
study2_contrast_mod <- study2_contrast %>% 
  mutate(condition_contrast = ifelse(condition_actual == "Actual threat", -1, 1)) %>% 
  mutate(WhtDis_comp_centered = scale(WhtDis_comp, scale=F)) %>% 
  mutate(LibCon_condition = LibCon_centered * condition_contrast,
         DisId_condition = WhtDis_comp_centered * condition_contrast)
#head(study2_contrast,5)
#tail(study2_contrast,5)


##Individual advocacy for racial equity (close-ended, open-access data available)

mod_IndivAct <- " #a path
WhtDis_comp_centered ~ 1 + a1 * LibCon_centered
WhtDis_comp_centered ~ a2 * condition_contrast
WhtDis_comp_centered ~ a3 * LibCon_condition

# b path
IndivAction ~ b1 * WhtDis_comp_centered

# c prime path
IndivAction ~ 1 + cp * LibCon_centered

# index of moderated mediation and conditional indirect effects
b1a3 := b1 * a3
actualss := a1 + a3 * -1
highss := a1 + a3 * 1
actual := a1 * b1 + b1a3 * -1
high := a1 * b1 + b1a3 * 1"

set.seed(1234)

sem.fit_IndivAct <- sem(mod_IndivAct, data = study2_contrast_mod, se = "bootstrap", bootstrap = 5000, likelihood = "wishart")

parameterestimates(sem.fit_IndivAct, boot.ci.type = "bca.simple", standardized = TRUE) 


##Support for policies designed to help racially minoritized groups (open-access data available)

#policy support
mod_PolicySupport <- " #a path
WhtDis_comp_centered ~ 1 + a1 * LibCon_centered
WhtDis_comp_centered ~ a2 * condition_contrast
WhtDis_comp_centered ~ a3 * LibCon_condition

# b path
PolicySupport ~ b1 * WhtDis_comp_centered

# c prime path
PolicySupport ~ 1 + cp * LibCon_centered

# index of moderated mediation and conditional indirect effects
b1a3 := b1 * a3
actualss := a1 + a3 * -1
highss := a1 + a3 * 1
actual := a1 * b1 + b1a3 * -1
high := a1 * b1 + b1a3 * 1"

set.seed(1234)

sem.fit_PolicySupport <- sem(mod_PolicySupport, data = study2_contrast_mod, se = "bootstrap", bootstrap = 5000, likelihood = "wishart")

parameterestimates(sem.fit_PolicySupport, boot.ci.type = "bca.simple", standardized = TRUE) 

#Open-ended Individual advocacy for racial equity (open-access data UNAVAILABLE)

mod_OpenIndiv <- " #a path
WhtDis_comp_centered ~ 1 + a1 * LibCon_centered
WhtDis_comp_centered ~ a2 * condition_contrast
WhtDis_comp_centered ~ a3 * LibCon_condition

# b path
IndivActionOpen ~ b1 * WhtDis_comp_centered

# c prime path
IndivActionOpen ~ 1 + cp * LibCon_centered

# index of moderated mediation and conditional indirect effects
b1a3 := b1 * a3
actualss := a1 + a3 * -1
highss := a1 + a3 * 1
actual := a1 * b1 + b1a3 * -1
high := a1 * b1 + b1a3 * 1"

set.seed(1234)

sem.fit_OpenIndiv <- sem(mod_OpenIndiv, data = study2_openInd, se = "bootstrap", bootstrap = 5000, likelihood = "wishart")

parameterestimates(sem.fit_OpenIndiv, boot.ci.type = "bca.simple", standardized = TRUE) 



#############################
###   cross-validating    ###
###    using processr     ###   
#############################

#Individual advocacy for racial equity

set.seed(1234)
mod7.Ind <- model7(iv="LibCon_centered", dv = "IndivAction", med = "WhtDis_comp_centered", mod = "condition_contrast", study2_contrast)
kable(mod7.Ind)

#Policy support
set.seed(1234)
mod7.Policy <- model7(iv="LibCon_centered", dv = "PolicySupport", med = "WhtDis_comp_centered", mod = "condition_contrast", study2_contrast)
kable(mod7.Policy)

#open-ended #Individual advocacy for racial equity
set.seed(1234)
mod7.openInd <- model7(iv="LibCon_centered", dv = "IndivActionOpen", med = "WhtDis_comp_centered", mod = "condition_contrast", study2_openInd)
kable(mod7.openInd)