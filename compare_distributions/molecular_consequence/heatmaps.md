Heatmap of ASPR for all significant TSGs somatic vs germline (REPLACE DIRECTORY AND RENAME INTERMEDIATE DFs TO REUSE CODE)

```{r}
library(tidyverse)
library(pheatmap)

# import file with ASPRs:
Python_allTSGdf_significant_chicorrected_TMB <- read_excel("~/Library/CloudStorage/Box-Box/PhD_BCM/Lulla_Plon_Lab/High_priority_gene_list/GL_S_Pipeline_1st_pass_47TSGs_May2023/Python_allTSG_df_nospliceregion_TMBgt10_chifixed_noVUSLBB_forRStudio_clinvarupdateall_8-23-24_nopanorigimed4-2-25_ordered_4-4-25.xlsx")

# set row names as gene symbols:
Python_allTSGdf_significant_chicorrected_TMB<-Python_allTSGdf_significant_chicorrected_TMB %>% remove_rownames %>% column_to_rownames(var="Gene")


#from https://www.biostars.org/p/400381/, italicise gene symbols:
newnames <- lapply(
  rownames(Python_allTSGdf_significant_chicorrected_TMB),
  function(x) bquote(italic(.(x))))

# replace empty cells with 0 to calculate breaks for color key:
Python_allTSGdf_significant_chicorrected_TMB_fill0 <- Python_allTSGdf_significant_chicorrected_TMB %>% replace(is.na(.), 0)

# select colors:
mycustom_colors <- colorRampPalette(c("red", "white", "navy"))(50)

# set breaks:
myBreaks12225_chicorrected_TMB <- c(seq(min(Python_allTSGdf_significant_chicorrected_TMB_fill0), -0.000001, length.out=ceiling(50/2)),
                                    seq(-0.0000015, 0.0000015, length.out=1),
                                    seq(0.000001, -(min(Python_allTSGdf_significant_chicorrected_TMB_fill0)), length.out=floor(50/2)))

# construct heatmap:
pheatmap(Python_allTSGdf_significant_chicorrected_TMB, color = mycustom_colors, breaks = myBreaks12225_chicorrected_TMB,  cluster_rows=FALSE, cluster_cols=FALSE, show_rownames = TRUE, cex = 1, labels_row = as.expression(newnames))
```

Heatmap for tissue type distribution comparison (paper figure 5):

```{r}
# import file as above, then set row names:
s_g_svf_11_24_25_filtered<-s_g_svf_11_24_25_filtered %>% remove_rownames %>% column_to_rownames(var="Gene")

#from https://www.biostars.org/p/400381/, italicise gene symbols::
newnames <- lapply(
  rownames(s_g_svf_11_24_25_filtered),
  function(x) bquote(italic(.(x))))

# replace empty cells with 0 to calculate breaks for color key:
s_g_svf_11_24_25_filtered_fill0 <- s_g_svf_11_24_25_filtered %>% replace(is.na(.), 0)

# select colors:
mycustom_colors_svf <- colorRampPalette(c("purple", "white", "yellow"))(50)

# set breaks:
myBreaks_s_g_svf_11_24_25 <- c(seq(min(s_g_svf_11_24_25_filtered_fill0), -0.000001, length.out=ceiling(50/2)),
                               seq(-0.0000015, 0.0000015, length.out=1),
                               seq(0.000001, -(min(s_g_svf_11_24_25_filtered_fill0)), length.out=floor(50/2)))

# construct heatmap
pheatmap(s_g_svf_11_24_25_filtered, color = mycustom_colors_svf, breaks = myBreaks_s_g_svf_11_24_25,  cluster_rows=FALSE, cluster_cols=FALSE ,show_rownames = TRUE, cex = 1, labels_row = as.expression(newnames))
```
