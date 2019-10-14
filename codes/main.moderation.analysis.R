
###########################################################
## Below is the code used for main analyses. Code can be ##
## used for replication along with redacted datasets.    ##
## Full datasets are not be released to public due to    ##
## confidentiality concern. Researchers interested in the #
## full datasets could contact the research team.        ##
###########################################################

#####################

##load required packages
require(tidyverse); require(ggplot2); require(dplyr); require(multicon);require(readr)
require(knitr); require(emmeans); require(mctest); require(ggpirate)


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
summary(study1a_lm_control)

##regression model 2 with actual threat as the reference
study1a_lm_actual <- lm(WhtDis_comp~LibCon_centered + condition_actual + LibCon_centered*condition_actual, data=study1a_relevel)
summary(study1a_lm_actual)

##Simple slopes for political orientation by condition
emtrends(study1a_lm_control, ~ condition_control, var ="LibCon_centered")


###Relatively liberal Whites compared to relatively conservative Whites
#Note:see if the main effect on the high threat dummy condition is significant. If  significant, indicate relatively liberal/conservative pp responded differently to high vs. the other condition

##end-point analysis
study1a_relevel$LibCon_above <- study1a_relevel$LibCon_centered - sd(study1a_relevel$LibCon_centered) #center 1SD above the mean, relatively liberal 

study1a_relevel$LibCon_below <- study1a_relevel$LibCon_centered + sd(study1a_relevel$LibCon_centered) #center 1SD below the mean, relatively conservative 

##relatively liberal
study1a_lm_control_above <- lm(WhtDis_comp~LibCon_above + condition_control + LibCon_above*condition_control, data=study1a_relevel) #among relatively liberal participants 
summary(study1a_lm_control_above)

study1a_lm_actual_above <- lm(WhtDis_comp~LibCon_above + condition_actual + LibCon_above*condition_actual, data=study1a_relevel) #among relatively liberal participants
summary(study1a_lm_actual_above)

##relatively conservative

study1a_lm_actual_below <- lm(WhtDis_comp~LibCon_below + condition_actual + LibCon_below*condition_actual, data=study1a_relevel) #among relatively conservative participants
summary(study1a_lm_actual_below)

study1a_lm_control_below <- lm(WhtDis_comp~LibCon_below + condition_control + LibCon_below*condition_control, data=study1a_relevel) #among relatively conservative participants 
summary(study1a_lm_control_below)


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
  labs(title = "Relationship Between Racial Disidentification and \nPolitical Orientaion by Condition (Study 1a)", subtitle = "Note: Around each slope, 95% confidence bands are depicted. \n* denotes a statistically significant slope, p < .001. \nThe horizontal dashed lines refer to ±1SD from the mean of political belief orientation.")


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

ggplot(study1b_relevel, aes(x=condition, y=TrumpProto))+
  theme_bw() +
  geom_pirate(aes(col=condition, fill=condition))+
  scale_x_discrete(labels=c("Actual threat condition", "High threat condition")) +
  scale_y_continuous(breaks=c(1,2,3,4,5,6,7),limits=c(1, 7)) + 
  ylab("Trump's Perceived Representativeness of Whites") + xlab("Condition") +
  labs(title = "Ratings of Trump's Perceived Representativeness of \nWhites by Condition (Study 2b)", subtitle="Note: Points represent the jittered raw data.\nBars represent central tendencies.\nBoxes represent 95% confidence interval.") +
  annotate("text", x = 1.5, y = 6.5, label = "*", size = 6) +
  annotate("text", x = 1.5, y = 6.2, label = "italic(p) < .001", size = 4, parse=T)


##regression model
study1b_lm_actual <- lm(WhtDis_comp~ LibCon_centered + condition_actual + LibCon_centered*condition_actual, data=study1b_relevel)
summary(study1b_lm_actual)

##Simple slopes for political orientation by condition
emtrends(study1b_lm_actual, ~ condition_actual, var ="LibCon_centered")


##Relatively liberal Whites compared to relatively conservative Whites
#end-point analysis

study1b_relevel$LibCon_above <- study1b_relevel$LibCon_centered - sd(study1b_relevel$LibCon_centered) #center 1SD above the mean, leaning liberal

study1b_relevel$LibCon_below <- study1b_relevel$LibCon_centered + sd(study1b_relevel$LibCon_centered) #center 1SD below the mean, leaning conservative

study1b_lm_actual_above <- lm(WhtDis_comp~ LibCon_above + condition_actual + LibCon_above*condition_actual, data=study1b_relevel) #among relatively liberal participants
summary(study1b_lm_actual_above)


study1b_lm_actual_below <- lm(WhtDis_comp~ LibCon_below + condition_actual + LibCon_below*condition_actual, data=study1b_relevel) #among relatively conservative participants
summary(study1b_lm_actual_below)


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
  labs(title = "Relationship Between Racial Disidentification and \nPolitical Orientaion by Condition (Study 1b)", subtitle = "Note: Around each slope, 95% confidence bands are depicted. \n* denotes a statistically significant slope, p < .001. \nThe horizontal dashed lines refer to ±1SD from the mean of political belief orientation.")


## Liberal Identification as Covariate (Alternative Explanation Testing)
study1b_lm_alternative <- lm(WhtDis_comp ~ LibID + LibCon_centered + condition_actual + LibCon_centered*condition_actual, data=study1b_relevel) #covariate liberal identity
summary(study1b_lm_alternative)

#test for multicollnearity
library(mctest)
omcdiag(study1b_relevel[,c(1,5)], study1b_relevel$WhtDis_comp)
imcdiag(study1b_relevel[,c(1,5)], study1b_relevel$WhtDis_comp)



####################
##    Study 2    ##
####################

##Replication of Study 1a (MLR Model Testing)
study2_clean$condition <- as.factor(study2_clean$condition)
study2_clean$condition <- factor(study2_clean$condition, levels = c("Control", "Actual threat","High threat"))

study2_relevel <- study2_clean %>% 
  rename(condition_control = condition) %>% 
  mutate(condition_actual = factor(condition_control, levels=c("Actual threat", "Control", "High threat"))) %>%  #add a condition with actual threat condition as the reference level
  mutate(LibCon_centered = scale(LibCon, scale=F))

##manipulation check
study2_contrast <- study2_relevel %>% 
  filter(condition_actual == "Actual threat" | condition_actual == "High threat")

t.test(TrumpProto ~ condition_actual, data = study2_contrast)

ggplot(study2_contrast, aes(x=condition_actual, y=TrumpProto))+
  theme_bw() +
  geom_pirate(aes(col=condition_actual, fill=condition_actual))+
  scale_x_discrete(labels=c("Actual threat condition", "High threat condition")) +
  scale_y_continuous(breaks=c(1,2,3,4,5,6,7),limits=c(1, 7)) + 
  ylab("Trump's Perceived Representativeness of Whites") + xlab("Condition") +
  labs(title = "Ratings of Trump's Perceived Representativeness of \nWhites by Condition (Study 2)", subtitle="Note: Points represent the jittered raw data.\nBars represent central tendencies.\nBoxes represent 95% confidence interval.")+
  annotate("text", x = 1.5, y = 6.5, label = "*", size = 6) +
  annotate("text", x = 1.5, y = 6.2, label = "italic(p) < .001", size = 4, parse=T)

##regression model 1 with control as the reference
study2_lm_control <- lm(WhtDis_comp~LibCon_centered + condition_control + LibCon_centered*condition_control, data=study2_relevel)
summary(study2_lm_control)

##regression model 2 with actual threat as the reference
study2_lm_actual <- lm(WhtDis_comp~LibCon_centered + condition_actual + LibCon_centered*condition_actual, data=study2_relevel)
summary(study2_lm_actual)

##Simple slopes for political orientation by condition
emtrends(study2_lm_control, ~ condition_control, var ="LibCon_centered")


##Relatively liberal Whites compared to relatively conservative Whites
#end-point analysis

study2_relevel$LibCon_above <- study2_relevel$LibCon_centered - sd(study2_relevel$LibCon_centered) #center 1SD above the mean, leaning liberal

study2_relevel$LibCon_below <- study2_relevel$LibCon_centered + sd(study2_relevel$LibCon_centered) #center 1SD below the mean, leaning conservative 


#Relatively liberal Whites
study2_lm_control_above <- lm(WhtDis_comp~LibCon_above + condition_control + LibCon_above*condition_control, data=study2_relevel) #among relatively liberal participants 
summary(study2_lm_control_above)

study2_lm_actual_above <- lm(WhtDis_comp~LibCon_above + condition_actual + LibCon_above*condition_actual, data=study2_relevel) #among relatively liberal participants
summary(study2_lm_actual_above)

#Relatively Conservative Participants (Study 2)")

study2_lm_control_below <- lm(WhtDis_comp~LibCon_below + condition_control + LibCon_below*condition_control, data=study2_relevel) #among relatively conservative participants
summary(study2_lm_control_below)

study2_lm_actual_below <- lm(WhtDis_comp~LibCon_below + condition_actual + LibCon_below*condition_actual, data=study2_relevel) #among relatively conservative participants
summary(study2_lm_actual_below )


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
  annotate("text", x = 6.5, y = 3.3, label = "*", size = 6) +
  annotate("text", x = 6.5, y = 4.2, label = "*", size = 6) +
  annotate("text", x = 1.3, y = 1, label = "extremely\nconservative", size = 3)+
  annotate("text", x = 7.9, y = 1, label = "extremely\nliberal", size = 3)+
  theme(text=element_text(size=12), legend.text=element_text(size=10)) +
  xlab("Political orientation") + ylab("Disidentification from the White racial group") +
  labs(title = "Relationship Between Racial Disidentification and \nPolitical Orientaion by Condition (Study 2)", subtitle = "Note: Around each slope, 95% confidence bands are depicted. \n* denotes a statistically significant slope, p < .001. \nThe horizontal dashed lines refer to ±1SD from the mean of political belief orientation.")
