
###########################################################
## Below is the code used for main analyses. Code can be ##
## used for replication along with redacted datasets.    ##
## Full datasets are not be released to public due to    ##
## confidentiality concern. Researchers interested in the #
## full datasets could contact the research team.        ##
###########################################################

#####################
##Note:for all commands using kable function, run only if using rmarkdown to print table

##load required packages
require(tidyverse); require(ggplot2); require(dplyr); require(multicon); require(pander); require(readr)
require(knitr); require(lavaan); require(xtable); require(emmeans); require(mctest); require(httr)

###########load data#################

####################
##    Study 1a    ##
####################

##MLR: condition moderates the relation between political orientation and White disidentification 

###Main moderation MLR models

study1a_clean$condition <- as.factor(study1a_clean$condition)
levels(study1a_clean$condition) <- c("Control", "Actual threat", "High threat") #rename levels of condition


study1a_relevel <- study1a_clean %>% 
  rename(condition_control = condition) %>% #for consistency
  mutate(condition_actual = factor(condition_control, levels=c("Actual threat", "Control", "High threat"))) %>%  #add a condition variable with actual threat condition as the reference level
  mutate(LibCon_centered = scale(LibCon, scale=F)) #mean-center political orientation so that intercept becomes meaningful


##regression model 1 with control as the reference
study1a_lm_control <- lm(WhtDis_comp~LibCon_centered + condition_control + LibCon_centered*condition_control, data=study1a_relevel)

#kable(xtable(study1a_lm_control), caption="Control Condition as the Reference Level (Study 1a)") 

##regression model 2 with actual threat as the reference
study1a_lm_actual <- lm(WhtDis_comp~LibCon_centered + condition_actual + LibCon_centered*condition_actual, data=study1a_relevel)

#kable(xtable(study1a_lm_actual), caption="Actual Threat Condition as the Reference Level (Study 1a)") 

##Simple slopes for political orientation by condition
emtrends(study1a_lm_control, ~ condition_control, var ="LibCon_centered")


###Relatively liberal Whites compared to relatively conservative Whites
#Note:see if the main effect on the high threat dummy condition is significant. If  significant, indicate relatively liberal/conservative pp responded differently to high vs. the other condition

##end-point analysis
study1a_relevel$LibCon_above <- study1a_relevel$LibCon_centered - sd(study1a_relevel$LibCon_centered) #center 1SD above the mean, relatively liberal 

study1a_relevel$LibCon_below <- study1a_relevel$LibCon_centered + sd(study1a_relevel$LibCon_centered) #center 1SD below the mean, relatively conservative 

##end-point using model 1
study1a_lm_control_above <- lm(WhtDis_comp~LibCon_above + condition_control + LibCon_above*condition_control, data=study1a_relevel) #among relatively liberal participants 

#kable(xtable(study1a_lm_control_above), caption="Control Condition as the Reference Level among Relatively Liberal Participants (Study 1a)")

study1a_lm_control_below <- lm(WhtDis_comp~LibCon_below + condition_control + LibCon_below*condition_control, data=study1a_relevel) #among relatively conservative participants 

#kable(xtable(study1a_lm_control_below), caption="Control Condition as the Reference Level among Relatively Conservative Participants (Study 1a)")

##end-point using model 2
study1a_lm_actual_above <- lm(WhtDis_comp~LibCon_above + condition_actual + LibCon_above*condition_actual, data=study1a_relevel) #among relatively liberal participants

#kable(xtable(study1a_lm_actual_above), caption="Actual Condition as the Reference Level among Relatively Liberal Participants (Study 1a)")

study1a_lm_actual_below <- lm(WhtDis_comp~LibCon_below + condition_actual + LibCon_below*condition_actual, data=study1a_relevel) #among relatively conservative participants

#kable(xtable(study1a_lm_actual_below), caption="Actual Condition as the Reference Level among Relatively Conservative Participants (Study 1a)")


##Plot of Political Orientaion Interacting with Condition on White Disidentification
# regression graph
ggplot(study1a_relevel, aes(x=LibCon, y=WhtDis_comp, group=condition_control)) +
  theme_bw() +
  geom_smooth(method=lm, aes(col=condition_control, linetype=condition_control, fill=condition_control), alpha=0.2) +
  scale_fill_manual(values = c("#E69F00","#009E73", "#56B4E9"), labels = c("Control condition", "Actual threat\ncondition", "High threat\ncondition")) +
  scale_color_manual(values = c("#E69F00","#009E73", "#56B4E9"), labels = c("Control condition", "Actual threat\ncondition", "High threat\ncondition")) +
  scale_linetype_manual(values=c("dashed", "dotted", "solid"), labels = c("Control condition", "Actual threat\ncondition", "High threat\ncondition")) + 
  theme(legend.title = element_blank())+
  scale_x_continuous(breaks=c(1,2,3,4,5,6,7,8), limits=c(1, 8)) + 
  scale_y_continuous(breaks=c(1,2,3,4,5,6,7),limits=c(1, 7)) + 
  geom_vline(xintercept = 2.830357, linetype = "dashed", size = .5) +  #1SD below mean
  geom_vline(xintercept = 7.098513, linetype = "dashed", size = .5) +  #1SD above mean
  annotate("text", x = 6.5, y = 4.8, label = "*", size = 6) + #annotate significance
  annotate("text", x = 6.5, y = 3.4, label = "*", size = 6) +
  annotate("text", x = 6.5, y = 4.1, label = "*", size = 6) +
  annotate("text", x = 1.3, y = 1, label = "extremely\nconservative", size = 3)+
  annotate("text", x = 7.9, y = 1, label = "extremely\nliberal", size = 3)+
  theme(text=element_text(size=12), legend.text=element_text(size=10)) +
  xlab("Political orientation") + ylab("Disidentification from the White racial group") +
  labs(title = "Relationship Between Racial Disidentification and \nPolitical Orientaion by Condition (Study 1a)")


####################
##    Study 1b    ##
####################

###Replication of Study 1a (MLR Model Testing)
##Main moderation MLR testing

study1b_relevel <- study1b_clean %>% 
  mutate(condition_actual = factor(condition, levels=c("Actual threat", "High threat"))) %>%  #add a condition with actual threat condition as the reference level
  mutate(LibCon_centered = scale(LibCon, scale=F)) #center political orientation

##manipulation check 
t.test(TrumpProto ~ condition, data = study1b_relevel) #whether condition affected participants' perceived Trump's representativeness of Whites


##regression model
study1b_lm_actual <- lm(WhtDis_comp~ LibCon_centered + condition_actual + LibCon_centered*condition_actual, data=study1b_relevel)

#kable(xtable(study1b_lm_actual), caption="Actual Condition as the Reference Level (Study 1b)")

##Simple slopes for political orientation by condition
emtrends(study1b_lm_actual, ~ condition_actual, var ="LibCon_centered")


##Relatively liberal Whites compared to relatively conservative Whites
#end-point analysis

study1b_relevel$LibCon_above <- study1b_relevel$LibCon_centered - sd(study1b_relevel$LibCon_centered) #center 1SD above the mean, leaning liberal

study1b_relevel$LibCon_below <- study1b_relevel$LibCon_centered + sd(study1b_relevel$LibCon_centered) #center 1SD below the mean, leaning conservative

study1b_lm_actual_above <- lm(WhtDis_comp~ LibCon_above + condition_actual + LibCon_above*condition_actual, data=study1b_relevel) #among relatively liberal participants

#kable(xtable(study1b_lm_actual_above), caption="Actual Condition as the Reference Level among Relatively Liberal Participants (Study 1b)")

study1b_lm_actual_below <- lm(WhtDis_comp~ LibCon_below + condition_actual + LibCon_below*condition_actual, data=study1b_relevel) #among relatively conservative participants

#kable(xtable(study1b_lm_actual_below), caption = "Actual Condition as the Reference Level among Relatively Conservative Participants (Study 1b)")


##Plot of Political Orientaion Interacting with Condition on White Disidentification
ggplot(study1b_relevel, aes(x=LibCon, y=WhtDis_comp, group=condition)) +
  theme_bw() +
  geom_smooth(method=lm, aes(col=condition, linetype=condition, fill=condition), alpha=0.2) +
  scale_fill_manual(values = c("#009E73", "#56B4E9"), labels = c("High threat\ncondition", "Actual threat\ncondition")) +
  scale_color_manual(values = c("#009E73", "#56B4E9"), labels = c("High threat\ncondition", "Actual threat\ncondition")) +
  scale_linetype_manual(values=c("dotted", "solid"), labels = c("High threat\ncondition", "Actual threat\ncondition")) + 
  theme(legend.title = element_blank())+
  scale_x_continuous(breaks=c(1,2,3,4,5,6,7,8), limits=c(1, 8)) + 
  scale_y_continuous(breaks=c(1,2,3,4,5,6,7),limits=c(1, 7)) + 
  geom_vline(xintercept = 2.657667, linetype = "dashed", size = .5) + 
  geom_vline(xintercept = 7.133378, linetype = "dashed", size = .5) + 
  annotate("text", x = 6.5, y = 5.4, label = "*", size = 6) +
  annotate("text", x = 6.5, y = 3.1, label = "*", size = 6) +
  annotate("text", x = 1.3, y = 1, label = "extremely\nconservative", size = 3)+
  annotate("text", x = 7.9, y = 1, label = "extremely\nliberal", size = 3)+
  theme(text=element_text(size=12), legend.text=element_text(size=10)) +
  xlab("Political orientation") + ylab("Disidentification from the White racial group") +
  labs(title = "Relationship Between Racial Disidentification and \nPolitical Orientaion by Condition (Study 1b)")

## Liberal Identification as Covariate (Alternative Explanation Testing)
study1b_lm_alternative <- lm(WhtDis_comp ~ LibID + LibCon_centered + condition_actual + LibCon_centered*condition_actual, data=study1b_relevel) #covariate liberal identity

#kable(xtable(study1b_lm_alternative), caption = "Effect of Political Orientation and Condition Above and Beyond Liberal Identification")

#test for multicollnearity
library(mctest)
omcdiag(study1b_relevel[,c(1,5)], study1b_relevel$WhtDis_comp)

imcdiag(study1b_relevel[,c(1,5)], study1b_relevel$WhtDis_comp)



####################
##    Study 2    ##
####################

##Replication of Study 1a (MLR Model Testing)
study2_clean$condition <- as.factor(study2_clean$condition)
study2_clean$condition <- factor(study2_clean$condition, levels = c("Control", "Actual threat","High threat")) #reordering level 

study2_relevel <- study2_clean %>% 
  rename(condition_control = condition) %>% 
  mutate(condition_actual = factor(condition_control, levels=c("Actual threat", "Control", "High threat"))) %>%  #add a condition with actual threat condition as the reference level
  mutate(LibCon_centered = scale(LibCon, scale=F)) #center LibCon

##manipulation check 
MPcheck_2 <- aov(TrumpProto ~ condition_control, data = study2_relevel)
summary(MPcheck_2)
TukeyHSD(MPcheck_2, "condition_control", ordered = TRUE) #whether actual vs. high threat conditions affected participants' perceived Trump's representativeness of Whites


##regression model 1 with control as the reference
study2_lm_control <- lm(WhtDis_comp~LibCon_centered + condition_control + LibCon_centered*condition_control, data=study2_relevel)

#kable(xtable(study2_lm_control), caption = "Control Condition as the Reference Level (Study 2)")

##regression model 2 with actual threat as the reference
study2_lm_actual <- lm(WhtDis_comp~LibCon_centered + condition_actual + LibCon_centered*condition_actual, data=study2_relevel)

#kable(xtable(study2_lm_actual), caption = "Actual Threat Condition as the Reference Level (Study 2)")

##Simple slopes for political orientation by condition
emtrends(study2_lm_control, ~ condition_control, var ="LibCon_centered")


##Relatively liberal Whites compared to relatively conservative Whites
#end-point analysis

study2_relevel$LibCon_above <- study2_relevel$LibCon_centered - sd(study2_relevel$LibCon_centered) #center 1SD above the mean, leaning liberal

study2_relevel$LibCon_below <- study2_relevel$LibCon_centered + sd(study2_relevel$LibCon_centered) #center 1SD below the mean, leaning conservative 

#model 1
study2_lm_control_above <- lm(WhtDis_comp~LibCon_above + condition_control + LibCon_above*condition_control, data=study2_relevel) #among relatively liberal participants 

#kable(xtable(study2_lm_control_above), caption="Control Condition as the Reference Level among Relatively Liberal Participants (Study 2)")

study2_lm_control_below <- lm(WhtDis_comp~LibCon_below + condition_control + LibCon_below*condition_control, data=study2_relevel) #among relatively conservative participants

#kable(xtable(study2_lm_control_below), caption="Control Condition as the Reference Level among Relatively Conservative Participants (Study 2)")

#model 2
study2_lm_actual_above <- lm(WhtDis_comp~LibCon_above + condition_actual + LibCon_above*condition_actual, data=study2_relevel) #among relatively liberal participants

#kable(xtable(study2_lm_actual_above), caption="Actual Condition as the Reference Level among Relatively Liberal Participants (Study 2)")

study2_lm_actual_below <- lm(WhtDis_comp~LibCon_below + condition_actual + LibCon_below*condition_actual, data=study2_relevel) #among relatively conservative participants

#kable(xtable(study2_lm_actual_below),  caption="Actual Condition as the Reference Level among Relatively Conservative Participants")


##Plot of Political Orientaion Interacting with Condition on White Disidentification
ggplot(study2_relevel, aes(x=LibCon, y=WhtDis_comp, group=condition_control)) +
  theme_bw() +
  geom_smooth(method=lm, aes(col=condition_control, linetype=condition_control, fill=condition_control), alpha=0.2) +
  scale_fill_manual(values = c("#E69F00","#009E73", "#56B4E9"), labels = c("Control condition", "Actual threat\ncondition", "High threat\ncondition")) +
  scale_color_manual(values = c("#E69F00","#009E73", "#56B4E9"), labels = c("Control condition", "Actual threat\ncondition", "High threat\ncondition")) +
  scale_linetype_manual(values=c("dashed", "dotted", "solid"), labels = c("Control condition", "Actual threat\ncondition", "High threat\ncondition")) + 
  theme(legend.title = element_blank())+
  scale_x_continuous(breaks=c(1,2,3,4,5,6,7,8), limits=c(1, 8)) + 
  scale_y_continuous(breaks=c(1,2,3,4,5,6,7),limits=c(1, 7)) + 
  geom_vline(xintercept = 2.830357, linetype = "dashed", size = .5) + 
  geom_vline(xintercept = 7.098513, linetype = "dashed", size = .5) + 
  annotate("text", x = 6.5, y = 4.8, label = "*", size = 6) +
  annotate("text", x = 6.5, y = 3.4, label = "*", size = 6) +
  annotate("text", x = 6.5, y = 4.1, label = "*", size = 6) +
  annotate("text", x = 1.3, y = 1, label = "extremely\nconservative", size = 3)+
  annotate("text", x = 7.9, y = 1, label = "extremely\nliberal", size = 3)+
  theme(text=element_text(size=12), legend.text=element_text(size=10)) +
  xlab("Political orientation") + ylab("Disidentification from the White racial group") +
  labs(title = "Relationship Between Racial Disidentification and \nPolitical Orientaion by Condition (Study 2)")


###Implications of Racial Disidentification for Racial Equity

#compute interaction terms
study2_contrast <- study2_relevel %>% 
  filter(condition_actual == "Actual threat" | condition_actual == "High threat") %>% 
  mutate(condition_contrast = ifelse(condition_actual == "Actual threat", -1, 1)) %>% #contrast code
  mutate(WhtDis_comp_centered = scale(WhtDis_comp, scale=F)) %>% 
  mutate(LibCon_condition = LibCon_centered * condition_contrast,
         DisId_condition = WhtDis_comp_centered * condition_contrast) #compute interaction terms
#head(study2_contrast,5)
#tail(study2_contrast,5)

#Note: b1a3 = Index of moderated mediation, (a1b1+b1a3 -1) and (a1b1+b1a3 1) = conditional indirect effects 
#individual support
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

sem.fit_IndivAct <- sem(mod_IndivAct, data = study2_contrast, se = "bootstrap", bootstrap = 5000, likelihood = "wishart")

para_IndivAct <- parameterestimates(sem.fit_IndivAct, boot.ci.type = "bca.simple", standardized = TRUE) 

#kable(xtable(para_IndivAct), caption = "Moderated Mediation with DV as Individual Action") #print results


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

sem.fit_PolicySupport <- sem(mod_PolicySupport, data = study2_contrast, se = "bootstrap", bootstrap = 5000, likelihood = "wishart")

para_policy <- parameterestimates(sem.fit_PolicySupport, boot.ci.type = "bca.simple", standardized = TRUE) 

kable(xtable(para_policy), caption="Moderated Mediation with DV as Policy Support") #print results
