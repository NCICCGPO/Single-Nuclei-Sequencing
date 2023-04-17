#!/bin/bash
# put this bash file in LIHC (disease folder)

echo "run knit command !"

cd /TCGA/LIHC/A3I0
Rscript -e 'library(rmarkdown);Sys.setenv(RSTUDIO_PANDOC="/usr/lib64/R/library/pandoc/R/pandoc"); rmarkdown::render("LIHC_A3I0_00_Copykit_Basic_Analysis.Rmd")'
echo "knit command finished for LIHC sample A3I0" 

cd /TCGA/LIHC/A4XI
Rscript -e 'library(rmarkdown);Sys.setenv(RSTUDIO_PANDOC="/usr/lib64/R/library/pandoc/R/pandoc"); rmarkdown::render("LIHC_A4XI_00_Copykit_Basic_Analysis.Rmd")'
echo "knit command finished for LIHC sample A4XI" 

cd /TCGA/LIHC/A5NQ
Rscript -e 'library(rmarkdown);Sys.setenv(RSTUDIO_PANDOC="/usr/lib64/R/library/pandoc/R/pandoc"); rmarkdown::render("LIHC_A5NQ_00_Copykit_Basic_Analysis.Rmd")'
echo "knit command finished for LIHC sample A5NQ" 

cd /TCGA/LIHC/A5SJ
Rscript -e 'library(rmarkdown);Sys.setenv(RSTUDIO_PANDOC="/usr/lib64/R/library/pandoc/R/pandoc"); rmarkdown::render("LIHC_A5SJ_00_Copykit_Basic_Analysis.Rmd")'
echo "knit command finished for LIHC sample A5SJ" 

cd /TCGA/LIHC/A9QD
Rscript -e 'library(rmarkdown);Sys.setenv(RSTUDIO_PANDOC="/usr/lib64/R/library/pandoc/R/pandoc"); rmarkdown::render("LIHC_A9QD_00_Copykit_Basic_Analysis.Rmd")'
echo "knit command finished for LIHC sample A9QD" 

cd /TCGA/LIHC/A10Q
Rscript -e 'library(rmarkdown);Sys.setenv(RSTUDIO_PANDOC="/usr/lib64/R/library/pandoc/R/pandoc"); rmarkdown::render("LIHC_A10Q_00_Copykit_Basic_Analysis.Rmd")'
echo "knit command finished for LIHC sample A10Q" 

cd /TCGA/LIHC/A10R
Rscript -e 'library(rmarkdown);Sys.setenv(RSTUDIO_PANDOC="/usr/lib64/R/library/pandoc/R/pandoc"); rmarkdown::render("LIHC_A10R_00_Copykit_Basic_Analysis.Rmd")'
echo "knit command finished for LIHC sample A10R"

cd /TCGA/LIHC/A10U
Rscript -e 'library(rmarkdown);Sys.setenv(RSTUDIO_PANDOC="/usr/lib64/R/library/pandoc/R/pandoc"); rmarkdown::render("LIHC_A10U_00_Copykit_Basic_Analysis.Rmd")'
echo "knit command finished for LIHC sample A10U"

cd /TCGA/LIHC/A12J
Rscript -e 'library(rmarkdown);Sys.setenv(RSTUDIO_PANDOC="/usr/lib64/R/library/pandoc/R/pandoc"); rmarkdown::render("LIHC_A12J_00_Copykit_Basic_Analysis.Rmd")'
echo "knit command finished for LIHC sample A12J"

cd /TCGA/LIHC/A123
Rscript -e 'library(rmarkdown);Sys.setenv(RSTUDIO_PANDOC="/usr/lib64/R/library/pandoc/R/pandoc"); rmarkdown::render("LIHC_A123_00_Copykit_Basic_Analysis.Rmd")'
echo "knit command finished for LIHC sample A123"
