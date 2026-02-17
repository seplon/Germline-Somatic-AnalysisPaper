Dot plot representing proportion of somatic OLO data in a gene per parent tumor tissue of origin

```{r}
library(readxl)
library(dplyr)
library(reshape2)
library(ggplot2)


# Manually calculated proportions in excel spreadsheet and ordered gene and tissue type names alphabetically (from .csv file of combined cbio and cosmic OLO data in 40 TSGs)

somaticconcat_OT_sprops_ordered_1_16_26 <- read_excel("Library/CloudStorage/Box-Box/PhD_BCM/Lulla_Plon_Lab/High_priority_gene_list/GL_S_Pipeline_1st_pass_47TSGs_May2023/somaticconcat_OT_sprops_ordered_1-16-26.xlsx")
View(somaticconcat_OT_sprops_ordered_1_16_26)

sprops_1_16_26_long <- melt(somaticconcat_OT_sprops_ordered_1_16_26, id.vars = "parent_tissue_code", variable.name = "Gene", value.name = "sprops")

ggplot(sprops_1_16_26_long, aes(x= (Gene) , y = (parent_tissue_code)))+
  geom_tile(fill = "white", color = "black")+
  geom_point(aes(color= "red3", size= sprops, alpha = sprops==0))+scale_alpha_manual(values=c(1,0))

# Figure S6 Panel B
```
