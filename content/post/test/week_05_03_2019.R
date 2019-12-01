##########################
# Tidytuesday 
# Week: 05/03/2019
# @ EdudinGonzalo
##########################


library(tidyverse)
library(gganimate)
library(gghighlight)
library(ggpubr)


earnings_female <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/earnings_female.csv") 



rank_data <- earnings_female %>%
  group_by(Year) %>%
  mutate(ordering = rank(percent)*1.0) %>%
  ungroup() 


rank_data$Year = as.Date(as.character(rank_data$Year), format = "%Y")



p<-ggplot(rank_data,
          aes(ordering, group = group ,color= group,fill= group)) +
  geom_tile(aes(y = percent/2, 
                height = percent,
                width = 0.9), alpha = 0.75) +
  geom_text(aes(y = percent, label = group), hjust = -0.4) +
  geom_text(aes(y = 0, label = group), hjust = 2) +
  coord_flip(clip = "off", expand = FALSE) +
  scale_color_viridis_d(option = "plasma" )+
  scale_fill_viridis_d(option = "plasma")+
  scale_y_continuous(breaks = c(0,25, 50, 75, 100), limits = c(0,105))+
  theme_minimal(14,"Avenir")+
  guides(color=F,fill=F)+
  labs(title =  "Earnings female workers per age group, 1979 - 2011",
       subtitle='Year {frame_time}',
       y = "Female salary percent of male salary (%)",
       x = "",
       caption =  "Source: NBER | @EdudinGonzalo") +
  theme(plot.title = element_text(hjust = 1, size = 22),
       axis.ticks.y = element_blank(),
      axis.text.y  = element_blank(), 
      panel.background  = element_blank(), 
      panel.grid = element_blank(),
      plot.background = element_blank(),
      legend.position="bottom") + 
  transition_time(Year)+
  ease_aes('cubic-in-out') +
  font("title", size = 22, color = "#c66eef", face = "bold") 


animate(p, nframes = 250, fps = 10, end_pause = 20, width = 1000)

anim_save(filename =  "week_05_03_2019/output/tidytuesday_womenearnings.gif", animation = p)





