
library(AnVIL)
library(dplyr)
library(cbioportalR)

set_cbioportal_db (db="public")
available_studies()
available.packages()

test_cbioportal_db()

all_studies <- available_studies()
all_studies

##importing all non-redundant studies (213, Table S3) ##5/5/23:
paac_jhu_2014_samples.all.1 <- available_samples("paac_jhu_2014") %>%
  select(sampleId, patientId, studyId)

mel_tsam_liang_2017_samples.all.2 <- available_samples("mel_tsam_liang_2017") %>%
  select(sampleId, patientId, studyId)
##executed till here for trial. Keep filling out the names now till all 213 complete and then execute all at once.
all_stjude_2016_samples.all.3 <- available_samples("all_stjude_2016") %>%
  select(sampleId, patientId, studyId)

aml_ohsu_2018_samples.all.4 <- available_samples("aml_ohsu_2018") %>%
  select(sampleId, patientId, studyId)

laml_tcga_pan_can_atlas_2018_samples.all.5 <- available_samples("laml_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

mnm_washu_2016_samples.all.6 <- available_samples("mnm_washu_2016") %>%
  select(sampleId, patientId, studyId)

acyc_fmi_2014_samples.all.7 <- available_samples("acyc_fmi_2014") %>%
  select(sampleId, patientId, studyId)

acyc_jhu_2016_samples.all.8 <- available_samples("acyc_jhu_2016") %>%
  select(sampleId, patientId, studyId)

acyc_mda_2015_samples.all.9 <- available_samples("acyc_mda_2015") %>%
  select(sampleId, patientId, studyId)

acyc_mskcc_2013_samples.all.10 <- available_samples("acyc_mskcc_2013") %>%
  select(sampleId, patientId, studyId)

acyc_sanger_2013_samples.all.11 <- available_samples("acyc_sanger_2013") %>%
  select(sampleId, patientId, studyId)

acc_2019_samples.all.12 <- available_samples("acc_2019") %>%
  select(sampleId, patientId, studyId)

acbc_mskcc_2015_samples.all.13 <- available_samples("acbc_mskcc_2015") %>%
  select(sampleId, patientId, studyId)

acc_tcga_pan_can_atlas_2018_samples.all.14 <- available_samples("acc_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

ampca_bcm_2016_samples.all.15 <- available_samples("ampca_bcm_2016") %>%
  select(sampleId, patientId, studyId)

bcc_unige_2016_samples.all.16 <- available_samples("bcc_unige_2016") %>%
  select(sampleId, patientId, studyId)

blca_mskcc_solit_2014_samples.all.17 <- available_samples("blca_mskcc_solit_2014") %>%
  select(sampleId, patientId, studyId)

blca_mskcc_solit_2012_samples.all.18 <- available_samples("blca_mskcc_solit_2012") %>%
  select(sampleId, patientId, studyId)

blca_bgi_samples.all.19 <- available_samples("blca_bgi") %>%
  select(sampleId, patientId, studyId)

blca_dfarber_mskcc_2014_samples.all.20 <- available_samples("blca_dfarber_mskcc_2014") %>%
  select(sampleId, patientId, studyId)

blca_tcga_pan_can_atlas_2018_samples.all.21 <- available_samples("blca_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

lgg_tcga_pan_can_atlas_2018_samples.all.22 <- available_samples("lgg_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

brca_hta9_htan_2022_samples.all.23 <- available_samples("brca_hta9_htan_2022") %>%
  select(sampleId, patientId, studyId)

brca_metabric_samples.all.24 <- available_samples("brca_metabric") %>%
  select(sampleId, patientId, studyId)

brca_mskcc_2019_samples.all.25 <- available_samples("brca_mskcc_2019") %>%
  select(sampleId, patientId, studyId)

brca_smc_2018_samples.all.26 <- available_samples("brca_smc_2018") %>%
  select(sampleId, patientId, studyId)

bfn_duke_nus_2015_samples.all.27 <- available_samples("bfn_duke_nus_2015") %>%
  select(sampleId, patientId, studyId)

brca_bccrc_samples.all.28 <- available_samples("brca_bccrc") %>%
  select(sampleId, patientId, studyId)

brca_broad_samples.all.29 <- available_samples("brca_broad") %>%
  select(sampleId, patientId, studyId)

brca_sanger_samples.all.30 <- available_samples("brca_sanger") %>%
  select(sampleId, patientId, studyId)

brca_tcga_pan_can_atlas_2018_samples.all.31 <- available_samples("brca_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

cesc_tcga_pan_can_atlas_2018_samples.all.32 <- available_samples("cesc_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

pan_origimed_2020_samples.all.33 <- available_samples("pan_origimed_2020") %>%
  select(sampleId, patientId, studyId)

chol_icgc_2017_samples.all.34 <- available_samples("chol_icgc_2017") %>%
  select(sampleId, patientId, studyId)

chol_nccs_2013_samples.all.35 <- available_samples("chol_nccs_2013") %>%
  select(sampleId, patientId, studyId)

chol_nus_2012_samples.all.36 <- available_samples("chol_nus_2012") %>%
  select(sampleId, patientId, studyId)

chol_tcga_pan_can_atlas_2018_samples.all.37 <- available_samples("chol_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

lcll_broad_2013_samples.all.38 <- available_samples("lcll_broad_2013") %>%
  select(sampleId, patientId, studyId)

cll_broad_2015_samples.all.39 <- available_samples("cll_broad_2015") %>%
  select(sampleId, patientId, studyId)

cll_iuopa_2015_samples.all.40 <- available_samples("cll_iuopa_2015") %>%
  select(sampleId, patientId, studyId)

cllsll_icgc_2011_samples.all.41 <- available_samples("cllsll_icgc_2011") %>%
  select(sampleId, patientId, studyId)

ccrcc_dfci_2019_samples.all.42 <- available_samples("ccrcc_dfci_2019") %>%
  select(sampleId, patientId, studyId)

coad_caseccc_2015_samples.all.43 <- available_samples("coad_caseccc_2015") %>%
  select(sampleId, patientId, studyId)

coad_cptac_2019_samples.all.44 <- available_samples("coad_cptac_2019") %>%
  select(sampleId, patientId, studyId)

coadread_dfci_2016_samples.all.45 <- available_samples("coadread_dfci_2016") %>%
  select(sampleId, patientId, studyId)

coadread_genentech_samples.all.46 <- available_samples("coadread_genentech") %>%
  select(sampleId, patientId, studyId)

coadread_tcga_pan_can_atlas_2018_samples.all.47 <- available_samples("coadread_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

coadread_mskcc_samples.all.48 <- available_samples("coadread_mskcc") %>%
  select(sampleId, patientId, studyId)

hccihch_pku_2019_samples.all.49 <- available_samples("hccihch_pku_2019") %>%
  select(sampleId, patientId, studyId)

cscc_dfarber_2015_samples.all.50 <- available_samples("cscc_dfarber_2015") %>%
  select(sampleId, patientId, studyId)

cscc_hgsc_bcm_2014_samples.all.51 <- available_samples("cscc_hgsc_bcm_2014") %>%
  select(sampleId, patientId, studyId)

cscc_ucsf_2021_samples.all.52 <- available_samples("cscc_ucsf_2021") %>%
  select(sampleId, patientId, studyId)

ctcl_columbia_2015_samples.all.53 <- available_samples("ctcl_columbia_2015") %>%
  select(sampleId, patientId, studyId)

pact_jhu_2011_samples.all.54 <- available_samples("pact_jhu_2011") %>%
  select(sampleId, patientId, studyId)

desm_broad_2015_samples.all.55 <- available_samples("desm_broad_2015") %>%
  select(sampleId, patientId, studyId)

difg_glass_2019_samples.all.56 <- available_samples("difg_glass_2019") %>%
  select(sampleId, patientId, studyId)

dlbcl_dfci_2018_samples.all.57 <- available_samples("dlbcl_dfci_2018") %>%
  select(sampleId, patientId, studyId)

dlbcl_duke_2017_samples.all.58 <- available_samples("dlbcl_duke_2017") %>%
  select(sampleId, patientId, studyId)

dlbc_tcga_pan_can_atlas_2018_samples.all.59 <- available_samples("dlbc_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

nhl_bcgsc_2013_samples.all.60 <- available_samples("nhl_bcgsc_2013") %>%
  select(sampleId, patientId, studyId)

crc_nigerian_2020_samples.all.61 <- available_samples("crc_nigerian_2020") %>%
  select(sampleId, patientId, studyId)

ucec_cptac_2020_samples.all.62 <- available_samples("ucec_cptac_2020") %>%
  select(sampleId, patientId, studyId)

ucec_ccr_msk_2022_samples.all.63 <- available_samples("ucec_ccr_msk_2022") %>%
  select(sampleId, patientId, studyId)

ucec_ccr_cfdna_msk_2022_samples.all.64 <- available_samples("ucec_ccr_cfdna_msk_2022") %>%
  select(sampleId, patientId, studyId)

esca_broad_samples.all.65 <- available_samples("esca_broad") %>%
  select(sampleId, patientId, studyId)

esca_tcga_pan_can_atlas_2018_samples.all.66 <- available_samples("esca_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

escc_icgc_samples.all.67 <- available_samples("escc_icgc") %>%
  select(sampleId, patientId, studyId)

escc_ucla_2014_samples.all.68 <- available_samples("escc_ucla_2014") %>%
  select(sampleId, patientId, studyId)

es_iocurie_2014_samples.all.69 <- available_samples("es_iocurie_2014") %>%
  select(sampleId, patientId, studyId)

gbc_shanghai_2014_samples.all.70 <- available_samples("gbc_shanghai_2014") %>%
  select(sampleId, patientId, studyId)

egc_tmucih_2015_samples.all.71 <- available_samples("egc_tmucih_2015") %>%
  select(sampleId, patientId, studyId)

stad_oncosg_2018_samples.all.72 <- available_samples("stad_oncosg_2018") %>%
  select(sampleId, patientId, studyId)

gbm_cptac_2021_samples.all.73 <- available_samples("gbm_cptac_2021") %>%
  select(sampleId, patientId, studyId)

gbm_columbia_2019_samples.all.74 <- available_samples("gbm_columbia_2019") %>%
  select(sampleId, patientId, studyId)

gbm_tcga_pan_can_atlas_2018_samples.all.75 <- available_samples("gbm_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

glioma_msk_2018_samples.all.76 <- available_samples("glioma_msk_2018") %>%
  select(sampleId, patientId, studyId)

hnsc_broad_samples.all.77 <- available_samples("hnsc_broad") %>%
  select(sampleId, patientId, studyId)

hnsc_jhu_samples.all.78 <- available_samples("hnsc_jhu") %>%
  select(sampleId, patientId, studyId)

hnsc_tcga_pan_can_atlas_2018_samples.all.79 <- available_samples("hnsc_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

liad_inserm_fr_2014_samples.all.80 <- available_samples("liad_inserm_fr_2014") %>%
  select(sampleId, patientId, studyId)

hcc_meric_2021_samples.all.81 <- available_samples("hcc_meric_2021") %>%
  select(sampleId, patientId, studyId)

hcc_inserm_fr_2015_samples.all.82 <- available_samples("hcc_inserm_fr_2015") %>%
  select(sampleId, patientId, studyId)

histiocytosis_cobi_msk_2019_samples.all.83 <- available_samples("histiocytosis_cobi_msk_2019") %>%
  select(sampleId, patientId, studyId)

panet_shanghai_2013_samples.all.84 <- available_samples("panet_shanghai_2013") %>%
  select(sampleId, patientId, studyId)

chol_jhu_2013_samples.all.85 <- available_samples("chol_jhu_2013") %>%
  select(sampleId, patientId, studyId)

ihch_ismms_2015_samples.all.86 <- available_samples("ihch_ismms_2015") %>%
  select(sampleId, patientId, studyId)

ihch_smmu_2014_samples.all.87 <- available_samples("ihch_smmu_2014") %>%
  select(sampleId, patientId, studyId)

kich_tcga_pan_can_atlas_2018_samples.all.88 <- available_samples("kich_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

kirc_bgi_samples.all.89 <- available_samples("kirc_bgi") %>%
  select(sampleId, patientId, studyId)

ccrcc_irc_2014_samples.all.90 <- available_samples("ccrcc_irc_2014") %>%
  select(sampleId, patientId, studyId)

kirc_tcga_pan_can_atlas_2018_samples.all.91 <- available_samples("kirc_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

kirp_tcga_pan_can_atlas_2018_samples.all.92 <- available_samples("kirp_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

hcc_msk_venturaa_2018_samples.all.93 <- available_samples("hcc_msk_venturaa_2018") %>%
  select(sampleId, patientId, studyId)

lihc_amc_prv_samples.all.94 <- available_samples("lihc_amc_prv") %>%
  select(sampleId, patientId, studyId)

lihc_riken_samples.all.95 <- available_samples("lihc_riken") %>%
  select(sampleId, patientId, studyId)

lihc_tcga_pan_can_atlas_2018_samples.all.96 <- available_samples("lihc_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

lgg_ucsf_2014_samples.all.97 <- available_samples("lgg_ucsf_2014") %>%
  select(sampleId, patientId, studyId)

lgsoc_mapk_msk_2022_samples.all.98 <- available_samples("lgsoc_mapk_msk_2022") %>%
  select(sampleId, patientId, studyId)

luad_broad_samples.all.99 <- available_samples("luad_broad") %>%
  select(sampleId, patientId, studyId)

luad_cptac_2020_samples.all.100 <- available_samples("luad_cptac_2020") %>%
  select(sampleId, patientId, studyId)

luad_oncosg_2020_samples.all.101 <- available_samples("luad_oncosg_2020") %>%
  select(sampleId, patientId, studyId)

luad_tcga_pan_can_atlas_2018_samples.all.102 <- available_samples("luad_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

luad_tsp_samples.all.103 <- available_samples("luad_tsp") %>%
  select(sampleId, patientId, studyId)

lung_smc_2016_samples.all.104 <- available_samples("lung_smc_2016") %>%
  select(sampleId, patientId, studyId)

lung_nci_2022_samples.all.105 <- available_samples("lung_nci_2022") %>%
  select(sampleId, patientId, studyId)

lusc_cptac_2021_samples.all.106 <- available_samples("lusc_cptac_2021") %>%
  select(sampleId, patientId, studyId)

lusc_tcga_pan_can_atlas_2018_samples.all.107 <- available_samples("lusc_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

msk_impact_2017_samples.all.108 <- available_samples("msk_impact_2017") %>%
  select(sampleId, patientId, studyId)

mixed_allen_2018_samples.all.109 <- available_samples("mixed_allen_2018") %>%
  select(sampleId, patientId, studyId)

mpnst_mskcc_samples.all.110 <- available_samples("mpnst_mskcc") %>%
  select(sampleId, patientId, studyId)

mcl_idibips_2013_samples.all.111 <- available_samples("mcl_idibips_2013") %>%
  select(sampleId, patientId, studyId)

mbl_broad_2012_samples.all.112 <- available_samples("mbl_broad_2012") %>%
  select(sampleId, patientId, studyId)

mbl_dkfz_2017_samples.all.113 <- available_samples("mbl_dkfz_2017") %>%
  select(sampleId, patientId, studyId)

mbl_pcgp_samples.all.114 <- available_samples("mbl_pcgp") %>%
  select(sampleId, patientId, studyId)

mbl_sickkids_2016_samples.all.115 <- available_samples("mbl_sickkids_2016") %>%
  select(sampleId, patientId, studyId)

skcm_mskcc_2014_samples.all.116 <- available_samples("skcm_mskcc_2014") %>%
  select(sampleId, patientId, studyId)

mng_utoronto_2021_samples.all.117 <- available_samples("mng_utoronto_2021") %>%
  select(sampleId, patientId, studyId)

meso_tcga_pan_can_atlas_2018_samples.all.118 <- available_samples("meso_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

biliary_tract_summit_2022_samples.all.119 <- available_samples("biliary_tract_summit_2022") %>%
  select(sampleId, patientId, studyId)

brca_igr_2015_samples.all.120 <- available_samples("brca_igr_2015") %>%
  select(sampleId, patientId, studyId)

mel_dfci_2019_samples.all.121 <- available_samples("mel_dfci_2019") %>%
  select(sampleId, patientId, studyId)

skcm_dfci_2015_samples.all.122 <- available_samples("skcm_dfci_2015") %>%
  select(sampleId, patientId, studyId)

skcm_vanderbilt_mskcc_2015_samples.all.123 <- available_samples("skcm_vanderbilt_mskcc_2015") %>%
  select(sampleId, patientId, studyId)

mel_ucla_2016_samples.all.124 <- available_samples("mel_ucla_2016") %>%
  select(sampleId, patientId, studyId)

prad_mich_samples.all.125 <- available_samples("prad_mich") %>%
  select(sampleId, patientId, studyId)

prad_su2c_2019_samples.all.126 <- available_samples("prad_su2c_2019") %>%
  select(sampleId, patientId, studyId)

metastatic_solid_tumors_mich_2017_samples.all.127 <- available_samples("metastatic_solid_tumors_mich_2017") %>%
  select(sampleId, patientId, studyId)

mixed_selpercatinib_2020_samples.all.128 <- available_samples("mixed_selpercatinib_2020") %>%
  select(sampleId, patientId, studyId)

mm_broad_samples.all.129 <- available_samples("mm_broad") %>%
  select(sampleId, patientId, studyId)

mds_tokyo_2011_samples.all.130 <- available_samples("mds_tokyo_2011") %>%
  select(sampleId, patientId, studyId)

mds_iwg_2022_samples.all.131 <- available_samples("mds_iwg_2022") %>%
  select(sampleId, patientId, studyId)

mpn_cimr_2013_samples.all.132 <- available_samples("mpn_cimr_2013") %>%
  select(sampleId, patientId, studyId)

npc_nusingapore_samples.all.133 <- available_samples("npc_nusingapore") %>%
  select(sampleId, patientId, studyId)

nbl_amc_2012_samples.all.134 <- available_samples("nbl_amc_2012") %>%
  select(sampleId, patientId, studyId)

nbl_ucologne_2015_samples.all.135 <- available_samples("nbl_ucologne_2015") %>%
  select(sampleId, patientId, studyId)

nepc_wcm_2016_samples.all.136 <- available_samples("nepc_wcm_2016") %>%
  select(sampleId, patientId, studyId)

nhl_bcgsc_2011_samples.all.137 <- available_samples("nhl_bcgsc_2011") %>%
  select(sampleId, patientId, studyId)

nsclc_mskcc_2018_samples.all.138 <- available_samples("nsclc_mskcc_2018") %>%
  select(sampleId, patientId, studyId)

nsclc_tracerx_2017_samples.all.139 <- available_samples("nsclc_tracerx_2017") %>%
  select(sampleId, patientId, studyId)

nsclc_unito_2016_samples.all.140 <- available_samples("nsclc_unito_2016") %>%
  select(sampleId, patientId, studyId)

hnsc_mdanderson_2013_samples.all.141 <- available_samples("hnsc_mdanderson_2013") %>%
  select(sampleId, patientId, studyId)

ov_tcga_pan_can_atlas_2018_samples.all.142 <- available_samples("ov_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

pog570_bcgsc_2020_samples.all.143 <- available_samples("pog570_bcgsc_2020") %>%
  select(sampleId, patientId, studyId)

pancan_pcawg_2020_samples.all.144 <- available_samples("pancan_pcawg_2020") %>%
  select(sampleId, patientId, studyId)

paad_qcmg_uq_2016_samples.all.145 <- available_samples("paad_qcmg_uq_2016") %>%
  select(sampleId, patientId, studyId)

paad_tcga_pan_can_atlas_2018_samples.all.146 <- available_samples("paad_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

paad_utsw_2015_samples.all.147 <- available_samples("paad_utsw_2015") %>%
  select(sampleId, patientId, studyId)

paad_cptac_2021_samples.all.148 <- available_samples("paad_cptac_2021") %>%
  select(sampleId, patientId, studyId)

panet_jhu_2011_samples.all.149 <- available_samples("panet_jhu_2011") %>%
  select(sampleId, patientId, studyId)

panet_arcnet_2017_samples.all.150 <- available_samples("panet_arcnet_2017") %>%
  select(sampleId, patientId, studyId)

all_phase2_target_2018_pub_samples.all.151 <- available_samples("all_phase2_target_2018_pub") %>%
  select(sampleId, patientId, studyId)

aml_target_2018_pub_samples.all.152 <- available_samples("aml_target_2018_pub") %>%
  select(sampleId, patientId, studyId)

brain_cptac_2020_samples.all.153 <- available_samples("brain_cptac_2020") %>%
  select(sampleId, patientId, studyId)

es_dfarber_broad_2014_samples.all.154 <- available_samples("es_dfarber_broad_2014") %>%
  select(sampleId, patientId, studyId)

nbl_target_2018_pub_samples.all.155 <- available_samples("nbl_target_2018_pub") %>%
  select(sampleId, patientId, studyId)

pediatric_dkfz_2017_samples.all.156 <- available_samples("pediatric_dkfz_2017") %>%
  select(sampleId, patientId, studyId)

mixed_pipseq_2017_samples.all.157 <- available_samples("mixed_pipseq_2017") %>%
  select(sampleId, patientId, studyId)

pptc_2019_samples.all.158 <- available_samples("pptc_2019") %>%
  select(sampleId, patientId, studyId)

rt_target_2018_pub_samples.all.159 <- available_samples("rt_target_2018_pub") %>%
  select(sampleId, patientId, studyId)

wt_target_2018_pub_samples.all.160 <- available_samples("wt_target_2018_pub") %>%
  select(sampleId, patientId, studyId)

pcpg_tcga_pan_can_atlas_2018_samples.all.161 <- available_samples("pcpg_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

plmeso_nyu_2015_samples.all.162 <- available_samples("plmeso_nyu_2015") %>%
  select(sampleId, patientId, studyId)

pcnsl_mayo_2015_samples.all.163 <- available_samples("pcnsl_mayo_2015") %>%
  select(sampleId, patientId, studyId)

prad_broad_samples.all.164 <- available_samples("prad_broad") %>%
  select(sampleId, patientId, studyId)

prad_fhcrc_samples.all.165 <- available_samples("prad_fhcrc") %>%
  select(sampleId, patientId, studyId)

prad_mskcc_samples.all.166 <- available_samples("prad_mskcc") %>%
  select(sampleId, patientId, studyId)

prad_eururol_2017_samples.all.167 <- available_samples("prad_eururol_2017") %>%
  select(sampleId, patientId, studyId)

prad_tcga_pan_can_atlas_2018_samples.all.168 <- available_samples("prad_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

prad_mskcc_cheny1_organoids_2014_samples.all.169 <- available_samples("prad_mskcc_cheny1_organoids_2014") %>%
  select(sampleId, patientId, studyId)

prostate_dkfz_2018_samples.all.170 <- available_samples("prostate_dkfz_2018") %>%
  select(sampleId, patientId, studyId)

prad_msk_2019_samples.all.171 <- available_samples("prad_msk_2019") %>%
  select(sampleId, patientId, studyId)

prostate_pcbm_swiss_2019_samples.all.172 <- available_samples("prostate_pcbm_swiss_2019") %>%
  select(sampleId, patientId, studyId)

brca_cptac_2020_samples.all.173 <- available_samples("brca_cptac_2020") %>%
  select(sampleId, patientId, studyId)

ccrcc_utokyo_2013_samples.all.174 <- available_samples("ccrcc_utokyo_2013") %>%
  select(sampleId, patientId, studyId)

nccrcc_genentech_2014_samples.all.175 <- available_samples("nccrcc_genentech_2014") %>%
  select(sampleId, patientId, studyId)

mrt_bcgsc_2016_samples.all.176 <- available_samples("mrt_bcgsc_2016") %>%
  select(sampleId, patientId, studyId)

rms_nih_2014_samples.all.177 <- available_samples("rms_nih_2014") %>%
  select(sampleId, patientId, studyId)

summit_2018_samples.all.178 <- available_samples("summit_2018") %>%
  select(sampleId, patientId, studyId)

sarc_mskcc_samples.all.179 <- available_samples("sarc_mskcc") %>%
  select(sampleId, patientId, studyId)

sarc_tcga_pan_can_atlas_2018_samples.all.180 <- available_samples("sarc_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

skcm_broad_samples.all.181 <- available_samples("skcm_broad") %>%
  select(sampleId, patientId, studyId)

skcm_tcga_pan_can_atlas_2018_samples.all.182 <- available_samples("skcm_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

skcm_yale_samples.all.183 <- available_samples("skcm_yale") %>%
  select(sampleId, patientId, studyId)

skcm_broad_brafresist_2012_samples.all.184 <- available_samples("skcm_broad_brafresist_2012") %>%
  select(sampleId, patientId, studyId)

scco_mskcc_samples.all.185 <- available_samples("scco_mskcc") %>%
  select(sampleId, patientId, studyId)

sclc_jhu_samples.all.186 <- available_samples("sclc_jhu") %>%
  select(sampleId, patientId, studyId)

sclc_ucologne_2015_samples.all.187 <- available_samples("sclc_ucologne_2015") %>%
  select(sampleId, patientId, studyId)

sclc_cancercell_gardner_2017_samples.all.188 <- available_samples("sclc_cancercell_gardner_2017") %>%
  select(sampleId, patientId, studyId)

vsc_cuk_2018_samples.all.189 <- available_samples("vsc_cuk_2018") %>%
  select(sampleId, patientId, studyId)

stad_pfizer_uhongkong_samples.all.190 <- available_samples("stad_pfizer_uhongkong") %>%
  select(sampleId, patientId, studyId)

stad_tcga_pan_can_atlas_2018_samples.all.191 <- available_samples("stad_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

stad_utokyo_samples.all.192 <- available_samples("stad_utokyo") %>%
  select(sampleId, patientId, studyId)

tgct_tcga_pan_can_atlas_2018_samples.all.193 <- available_samples("tgct_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

angs_painter_2020_samples.all.194 <- available_samples("angs_painter_2020") %>%
  select(sampleId, patientId, studyId)

angs_project_painter_2018_samples.all.195 <- available_samples("angs_project_painter_2018") %>%
  select(sampleId, patientId, studyId)

brca_mbcproject_wagle_2017_samples.all.196 <- available_samples("brca_mbcproject_wagle_2017") %>%
  select(sampleId, patientId, studyId)

mpcproject_broad_2021_samples.all.197 <- available_samples("mpcproject_broad_2021") %>%
  select(sampleId, patientId, studyId)

tet_nci_2014_samples.all.198 <- available_samples("tet_nci_2014") %>%
  select(sampleId, patientId, studyId)

thym_tcga_pan_can_atlas_2018_samples.all.199 <- available_samples("thym_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

thca_tcga_pan_can_atlas_2018_samples.all.200 <- available_samples("thca_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

urcc_mskcc_2016_samples.all.201 <- available_samples("urcc_mskcc_2016") %>%
  select(sampleId, patientId, studyId)

utuc_mskcc_2015_samples.all.202 <- available_samples("utuc_mskcc_2015") %>%
  select(sampleId, patientId, studyId)

utuc_cornell_baylor_mdacc_2019_samples.all.203 <- available_samples("utuc_cornell_baylor_mdacc_2019") %>%
  select(sampleId, patientId, studyId)

utuc_igbmc_2021_samples.all.204 <- available_samples("utuc_igbmc_2021") %>%
  select(sampleId, patientId, studyId)

utuc_msk_2019_samples.all.205 <- available_samples("utuc_msk_2019") %>%
  select(sampleId, patientId, studyId)

blca_bcan_hcrn_2022_samples.all.206 <- available_samples("blca_bcan_hcrn_2022") %>%
  select(sampleId, patientId, studyId)

blca_cornell_2016_samples.all.207 <- available_samples("blca_cornell_2016") %>%
  select(sampleId, patientId, studyId)

ucs_jhu_2014_samples.all.208 <- available_samples("ucs_jhu_2014") %>%
  select(sampleId, patientId, studyId)

ucs_tcga_pan_can_atlas_2018_samples.all.209 <- available_samples("ucs_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

uccc_nih_2017_samples.all.210 <- available_samples("uccc_nih_2017") %>%
  select(sampleId, patientId, studyId)

ucec_tcga_pan_can_atlas_2018_samples.all.211 <- available_samples("ucec_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

um_qimr_2016_samples.all.212 <- available_samples("um_qimr_2016") %>%
  select(sampleId, patientId, studyId)

uvm_tcga_pan_can_atlas_2018_samples.all.213 <- available_samples("uvm_tcga_pan_can_atlas_2018") %>%
  select(sampleId, patientId, studyId)

##binding all rows:

df_nonredundant_5_5_23 <- bind_rows(paac_jhu_2014_samples.all.1, mel_tsam_liang_2017_samples.all.2, all_stjude_2016_samples.all.3, aml_ohsu_2018_samples.all.4, laml_tcga_pan_can_atlas_2018_samples.all.5, mnm_washu_2016_samples.all.6, acyc_fmi_2014_samples.all.7, acyc_jhu_2016_samples.all.8, acyc_mda_2015_samples.all.9, acyc_mskcc_2013_samples.all.10, acyc_sanger_2013_samples.all.11, acc_2019_samples.all.12, acbc_mskcc_2015_samples.all.13, acc_tcga_pan_can_atlas_2018_samples.all.14, ampca_bcm_2016_samples.all.15, bcc_unige_2016_samples.all.16, blca_mskcc_solit_2014_samples.all.17, blca_mskcc_solit_2012_samples.all.18, blca_bgi_samples.all.19, blca_dfarber_mskcc_2014_samples.all.20, blca_tcga_pan_can_atlas_2018_samples.all.21, lgg_tcga_pan_can_atlas_2018_samples.all.22, brca_hta9_htan_2022_samples.all.23, brca_metabric_samples.all.24, brca_mskcc_2019_samples.all.25, brca_smc_2018_samples.all.26, bfn_duke_nus_2015_samples.all.27, brca_bccrc_samples.all.28, brca_broad_samples.all.29, brca_sanger_samples.all.30, brca_tcga_pan_can_atlas_2018_samples.all.31, cesc_tcga_pan_can_atlas_2018_samples.all.32, pan_origimed_2020_samples.all.33, chol_icgc_2017_samples.all.34, chol_nccs_2013_samples.all.35, chol_nus_2012_samples.all.36, chol_tcga_pan_can_atlas_2018_samples.all.37, lcll_broad_2013_samples.all.38, cll_broad_2015_samples.all.39, cll_iuopa_2015_samples.all.40, cllsll_icgc_2011_samples.all.41, ccrcc_dfci_2019_samples.all.42, coad_caseccc_2015_samples.all.43, coad_cptac_2019_samples.all.44, coadread_dfci_2016_samples.all.45, coadread_genentech_samples.all.46, coadread_tcga_pan_can_atlas_2018_samples.all.47, coadread_mskcc_samples.all.48, hccihch_pku_2019_samples.all.49, cscc_dfarber_2015_samples.all.50, cscc_hgsc_bcm_2014_samples.all.51, cscc_ucsf_2021_samples.all.52, ctcl_columbia_2015_samples.all.53, pact_jhu_2011_samples.all.54, desm_broad_2015_samples.all.55, difg_glass_2019_samples.all.56, dlbcl_dfci_2018_samples.all.57, dlbcl_duke_2017_samples.all.58, dlbc_tcga_pan_can_atlas_2018_samples.all.59, nhl_bcgsc_2013_samples.all.60, crc_nigerian_2020_samples.all.61, ucec_cptac_2020_samples.all.62, ucec_ccr_msk_2022_samples.all.63, ucec_ccr_cfdna_msk_2022_samples.all.64, esca_broad_samples.all.65, esca_tcga_pan_can_atlas_2018_samples.all.66, escc_icgc_samples.all.67, escc_ucla_2014_samples.all.68, es_iocurie_2014_samples.all.69, gbc_shanghai_2014_samples.all.70, egc_tmucih_2015_samples.all.71, stad_oncosg_2018_samples.all.72, gbm_cptac_2021_samples.all.73, gbm_columbia_2019_samples.all.74, gbm_tcga_pan_can_atlas_2018_samples.all.75, glioma_msk_2018_samples.all.76, hnsc_broad_samples.all.77, hnsc_jhu_samples.all.78, hnsc_tcga_pan_can_atlas_2018_samples.all.79, liad_inserm_fr_2014_samples.all.80, hcc_meric_2021_samples.all.81, hcc_inserm_fr_2015_samples.all.82, histiocytosis_cobi_msk_2019_samples.all.83, panet_shanghai_2013_samples.all.84, chol_jhu_2013_samples.all.85, ihch_ismms_2015_samples.all.86, ihch_smmu_2014_samples.all.87, kich_tcga_pan_can_atlas_2018_samples.all.88, kirc_bgi_samples.all.89, ccrcc_irc_2014_samples.all.90, kirc_tcga_pan_can_atlas_2018_samples.all.91, kirp_tcga_pan_can_atlas_2018_samples.all.92, hcc_msk_venturaa_2018_samples.all.93, lihc_amc_prv_samples.all.94, lihc_riken_samples.all.95, lihc_tcga_pan_can_atlas_2018_samples.all.96, lgg_ucsf_2014_samples.all.97, lgsoc_mapk_msk_2022_samples.all.98, luad_broad_samples.all.99, luad_cptac_2020_samples.all.100, luad_oncosg_2020_samples.all.101, luad_tcga_pan_can_atlas_2018_samples.all.102, luad_tsp_samples.all.103, lung_smc_2016_samples.all.104, lung_nci_2022_samples.all.105, lusc_cptac_2021_samples.all.106, lusc_tcga_pan_can_atlas_2018_samples.all.107, msk_impact_2017_samples.all.108, mixed_allen_2018_samples.all.109, mpnst_mskcc_samples.all.110, mcl_idibips_2013_samples.all.111, mbl_broad_2012_samples.all.112, mbl_dkfz_2017_samples.all.113, mbl_pcgp_samples.all.114, mbl_sickkids_2016_samples.all.115, skcm_mskcc_2014_samples.all.116, mng_utoronto_2021_samples.all.117, meso_tcga_pan_can_atlas_2018_samples.all.118, biliary_tract_summit_2022_samples.all.119, brca_igr_2015_samples.all.120, mel_dfci_2019_samples.all.121, skcm_dfci_2015_samples.all.122, skcm_vanderbilt_mskcc_2015_samples.all.123, mel_ucla_2016_samples.all.124, prad_mich_samples.all.125, prad_su2c_2019_samples.all.126, metastatic_solid_tumors_mich_2017_samples.all.127, mixed_selpercatinib_2020_samples.all.128, mm_broad_samples.all.129, mds_tokyo_2011_samples.all.130, mds_iwg_2022_samples.all.131, mpn_cimr_2013_samples.all.132, npc_nusingapore_samples.all.133, nbl_amc_2012_samples.all.134, nbl_ucologne_2015_samples.all.135, nepc_wcm_2016_samples.all.136, nhl_bcgsc_2011_samples.all.137, nsclc_mskcc_2018_samples.all.138, nsclc_tracerx_2017_samples.all.139, nsclc_unito_2016_samples.all.140, hnsc_mdanderson_2013_samples.all.141, ov_tcga_pan_can_atlas_2018_samples.all.142, pog570_bcgsc_2020_samples.all.143, pancan_pcawg_2020_samples.all.144, paad_qcmg_uq_2016_samples.all.145, paad_tcga_pan_can_atlas_2018_samples.all.146, paad_utsw_2015_samples.all.147, paad_cptac_2021_samples.all.148, panet_jhu_2011_samples.all.149, panet_arcnet_2017_samples.all.150, all_phase2_target_2018_pub_samples.all.151, aml_target_2018_pub_samples.all.152, brain_cptac_2020_samples.all.153, es_dfarber_broad_2014_samples.all.154, nbl_target_2018_pub_samples.all.155, pediatric_dkfz_2017_samples.all.156, mixed_pipseq_2017_samples.all.157, pptc_2019_samples.all.158, rt_target_2018_pub_samples.all.159, wt_target_2018_pub_samples.all.160, pcpg_tcga_pan_can_atlas_2018_samples.all.161, plmeso_nyu_2015_samples.all.162, pcnsl_mayo_2015_samples.all.163, prad_broad_samples.all.164, prad_fhcrc_samples.all.165, prad_mskcc_samples.all.166, prad_eururol_2017_samples.all.167, prad_tcga_pan_can_atlas_2018_samples.all.168, prad_mskcc_cheny1_organoids_2014_samples.all.169, prostate_dkfz_2018_samples.all.170, prad_msk_2019_samples.all.171, prostate_pcbm_swiss_2019_samples.all.172, brca_cptac_2020_samples.all.173, ccrcc_utokyo_2013_samples.all.174, nccrcc_genentech_2014_samples.all.175, mrt_bcgsc_2016_samples.all.176, rms_nih_2014_samples.all.177, summit_2018_samples.all.178, sarc_mskcc_samples.all.179, sarc_tcga_pan_can_atlas_2018_samples.all.180, skcm_broad_samples.all.181, skcm_tcga_pan_can_atlas_2018_samples.all.182, skcm_yale_samples.all.183, skcm_broad_brafresist_2012_samples.all.184, scco_mskcc_samples.all.185, sclc_jhu_samples.all.186, sclc_ucologne_2015_samples.all.187, sclc_cancercell_gardner_2017_samples.all.188, vsc_cuk_2018_samples.all.189, stad_pfizer_uhongkong_samples.all.190, stad_tcga_pan_can_atlas_2018_samples.all.191, stad_utokyo_samples.all.192, tgct_tcga_pan_can_atlas_2018_samples.all.193, angs_painter_2020_samples.all.194, angs_project_painter_2018_samples.all.195, brca_mbcproject_wagle_2017_samples.all.196, mpcproject_broad_2021_samples.all.197, tet_nci_2014_samples.all.198, thym_tcga_pan_can_atlas_2018_samples.all.199, thca_tcga_pan_can_atlas_2018_samples.all.200, urcc_mskcc_2016_samples.all.201, utuc_mskcc_2015_samples.all.202, utuc_cornell_baylor_mdacc_2019_samples.all.203, utuc_igbmc_2021_samples.all.204, utuc_msk_2019_samples.all.205, blca_bcan_hcrn_2022_samples.all.206, blca_cornell_2016_samples.all.207, ucs_jhu_2014_samples.all.208, ucs_tcga_pan_can_atlas_2018_samples.all.209, uccc_nih_2017_samples.all.210, ucec_tcga_pan_can_atlas_2018_samples.all.211, um_qimr_2016_samples.all.212, uvm_tcga_pan_can_atlas_2018_samples.all.213) %>%
  select(-patientId)

df1_50_nonredundant_5_5_23 <- bind_rows(paac_jhu_2014_samples.all.1, mel_tsam_liang_2017_samples.all.2, all_stjude_2016_samples.all.3, aml_ohsu_2018_samples.all.4, laml_tcga_pan_can_atlas_2018_samples.all.5, mnm_washu_2016_samples.all.6, acyc_fmi_2014_samples.all.7, acyc_jhu_2016_samples.all.8, acyc_mda_2015_samples.all.9, acyc_mskcc_2013_samples.all.10, acyc_sanger_2013_samples.all.11, acc_2019_samples.all.12, acbc_mskcc_2015_samples.all.13, acc_tcga_pan_can_atlas_2018_samples.all.14, ampca_bcm_2016_samples.all.15, bcc_unige_2016_samples.all.16, blca_mskcc_solit_2014_samples.all.17, blca_mskcc_solit_2012_samples.all.18, blca_bgi_samples.all.19, blca_dfarber_mskcc_2014_samples.all.20, blca_tcga_pan_can_atlas_2018_samples.all.21, lgg_tcga_pan_can_atlas_2018_samples.all.22, brca_hta9_htan_2022_samples.all.23, brca_metabric_samples.all.24, brca_mskcc_2019_samples.all.25, brca_smc_2018_samples.all.26, bfn_duke_nus_2015_samples.all.27, brca_bccrc_samples.all.28, brca_broad_samples.all.29, brca_sanger_samples.all.30, brca_tcga_pan_can_atlas_2018_samples.all.31, cesc_tcga_pan_can_atlas_2018_samples.all.32, pan_origimed_2020_samples.all.33, chol_icgc_2017_samples.all.34, chol_nccs_2013_samples.all.35, chol_nus_2012_samples.all.36, chol_tcga_pan_can_atlas_2018_samples.all.37, lcll_broad_2013_samples.all.38, cll_broad_2015_samples.all.39, cll_iuopa_2015_samples.all.40, cllsll_icgc_2011_samples.all.41, ccrcc_dfci_2019_samples.all.42, coad_caseccc_2015_samples.all.43, coad_cptac_2019_samples.all.44, coadread_dfci_2016_samples.all.45, coadread_genentech_samples.all.46, coadread_tcga_pan_can_atlas_2018_samples.all.47, coadread_mskcc_samples.all.48, hccihch_pku_2019_samples.all.49, cscc_dfarber_2015_samples.all.50) %>%
  select(-patientId)


df51_150_nonredundant_5_5_23 <- bind_rows(cscc_hgsc_bcm_2014_samples.all.51, cscc_ucsf_2021_samples.all.52, ctcl_columbia_2015_samples.all.53, pact_jhu_2011_samples.all.54, desm_broad_2015_samples.all.55, difg_glass_2019_samples.all.56, dlbcl_dfci_2018_samples.all.57, dlbcl_duke_2017_samples.all.58, dlbc_tcga_pan_can_atlas_2018_samples.all.59, nhl_bcgsc_2013_samples.all.60, crc_nigerian_2020_samples.all.61, ucec_cptac_2020_samples.all.62, ucec_ccr_msk_2022_samples.all.63, ucec_ccr_cfdna_msk_2022_samples.all.64, esca_broad_samples.all.65, esca_tcga_pan_can_atlas_2018_samples.all.66, escc_icgc_samples.all.67, escc_ucla_2014_samples.all.68, es_iocurie_2014_samples.all.69, gbc_shanghai_2014_samples.all.70, egc_tmucih_2015_samples.all.71, stad_oncosg_2018_samples.all.72, gbm_cptac_2021_samples.all.73, gbm_columbia_2019_samples.all.74, gbm_tcga_pan_can_atlas_2018_samples.all.75, glioma_msk_2018_samples.all.76, hnsc_broad_samples.all.77, hnsc_jhu_samples.all.78, hnsc_tcga_pan_can_atlas_2018_samples.all.79, liad_inserm_fr_2014_samples.all.80, hcc_meric_2021_samples.all.81, hcc_inserm_fr_2015_samples.all.82, histiocytosis_cobi_msk_2019_samples.all.83, panet_shanghai_2013_samples.all.84, chol_jhu_2013_samples.all.85, ihch_ismms_2015_samples.all.86, ihch_smmu_2014_samples.all.87, kich_tcga_pan_can_atlas_2018_samples.all.88, kirc_bgi_samples.all.89, ccrcc_irc_2014_samples.all.90, kirc_tcga_pan_can_atlas_2018_samples.all.91, kirp_tcga_pan_can_atlas_2018_samples.all.92, hcc_msk_venturaa_2018_samples.all.93, lihc_amc_prv_samples.all.94, lihc_riken_samples.all.95, lihc_tcga_pan_can_atlas_2018_samples.all.96, lgg_ucsf_2014_samples.all.97, lgsoc_mapk_msk_2022_samples.all.98, luad_broad_samples.all.99, luad_cptac_2020_samples.all.100, luad_oncosg_2020_samples.all.101, luad_tcga_pan_can_atlas_2018_samples.all.102, luad_tsp_samples.all.103, lung_smc_2016_samples.all.104, lung_nci_2022_samples.all.105, lusc_cptac_2021_samples.all.106, lusc_tcga_pan_can_atlas_2018_samples.all.107, msk_impact_2017_samples.all.108, mixed_allen_2018_samples.all.109, mpnst_mskcc_samples.all.110, mcl_idibips_2013_samples.all.111, mbl_broad_2012_samples.all.112, mbl_dkfz_2017_samples.all.113, mbl_pcgp_samples.all.114, mbl_sickkids_2016_samples.all.115, skcm_mskcc_2014_samples.all.116, mng_utoronto_2021_samples.all.117, meso_tcga_pan_can_atlas_2018_samples.all.118, biliary_tract_summit_2022_samples.all.119, brca_igr_2015_samples.all.120, mel_dfci_2019_samples.all.121, skcm_dfci_2015_samples.all.122, skcm_vanderbilt_mskcc_2015_samples.all.123, mel_ucla_2016_samples.all.124, prad_mich_samples.all.125, prad_su2c_2019_samples.all.126, metastatic_solid_tumors_mich_2017_samples.all.127, mixed_selpercatinib_2020_samples.all.128, mm_broad_samples.all.129, mds_tokyo_2011_samples.all.130, mds_iwg_2022_samples.all.131, mpn_cimr_2013_samples.all.132, npc_nusingapore_samples.all.133, nbl_amc_2012_samples.all.134, nbl_ucologne_2015_samples.all.135, nepc_wcm_2016_samples.all.136, nhl_bcgsc_2011_samples.all.137, nsclc_mskcc_2018_samples.all.138, nsclc_tracerx_2017_samples.all.139, nsclc_unito_2016_samples.all.140, hnsc_mdanderson_2013_samples.all.141, ov_tcga_pan_can_atlas_2018_samples.all.142, pog570_bcgsc_2020_samples.all.143, pancan_pcawg_2020_samples.all.144, paad_qcmg_uq_2016_samples.all.145, paad_tcga_pan_can_atlas_2018_samples.all.146, paad_utsw_2015_samples.all.147, paad_cptac_2021_samples.all.148, panet_jhu_2011_samples.all.149, panet_arcnet_2017_samples.all.150) %>% 
  select(-patientId)

df151_213_nonredundant_5_5_23 <- bind_rows(all_phase2_target_2018_pub_samples.all.151, aml_target_2018_pub_samples.all.152, brain_cptac_2020_samples.all.153, es_dfarber_broad_2014_samples.all.154, nbl_target_2018_pub_samples.all.155, pediatric_dkfz_2017_samples.all.156, mixed_pipseq_2017_samples.all.157, pptc_2019_samples.all.158, rt_target_2018_pub_samples.all.159, wt_target_2018_pub_samples.all.160, pcpg_tcga_pan_can_atlas_2018_samples.all.161, plmeso_nyu_2015_samples.all.162, pcnsl_mayo_2015_samples.all.163, prad_broad_samples.all.164, prad_fhcrc_samples.all.165, prad_mskcc_samples.all.166, prad_eururol_2017_samples.all.167, prad_tcga_pan_can_atlas_2018_samples.all.168, prad_mskcc_cheny1_organoids_2014_samples.all.169, prostate_dkfz_2018_samples.all.170, prad_msk_2019_samples.all.171, prostate_pcbm_swiss_2019_samples.all.172, brca_cptac_2020_samples.all.173, ccrcc_utokyo_2013_samples.all.174, nccrcc_genentech_2014_samples.all.175, mrt_bcgsc_2016_samples.all.176, rms_nih_2014_samples.all.177, summit_2018_samples.all.178, sarc_mskcc_samples.all.179, sarc_tcga_pan_can_atlas_2018_samples.all.180, skcm_broad_samples.all.181, skcm_tcga_pan_can_atlas_2018_samples.all.182, skcm_yale_samples.all.183, skcm_broad_brafresist_2012_samples.all.184, scco_mskcc_samples.all.185, sclc_jhu_samples.all.186, sclc_ucologne_2015_samples.all.187, sclc_cancercell_gardner_2017_samples.all.188, vsc_cuk_2018_samples.all.189, stad_pfizer_uhongkong_samples.all.190, stad_tcga_pan_can_atlas_2018_samples.all.191, stad_utokyo_samples.all.192, tgct_tcga_pan_can_atlas_2018_samples.all.193, angs_painter_2020_samples.all.194, angs_project_painter_2018_samples.all.195, brca_mbcproject_wagle_2017_samples.all.196, mpcproject_broad_2021_samples.all.197, tet_nci_2014_samples.all.198, thym_tcga_pan_can_atlas_2018_samples.all.199, thca_tcga_pan_can_atlas_2018_samples.all.200, urcc_mskcc_2016_samples.all.201, utuc_mskcc_2015_samples.all.202, utuc_cornell_baylor_mdacc_2019_samples.all.203, utuc_igbmc_2021_samples.all.204, utuc_msk_2019_samples.all.205, blca_bcan_hcrn_2022_samples.all.206, blca_cornell_2016_samples.all.207, ucs_jhu_2014_samples.all.208, ucs_tcga_pan_can_atlas_2018_samples.all.209, uccc_nih_2017_samples.all.210, ucec_tcga_pan_can_atlas_2018_samples.all.211, um_qimr_2016_samples.all.212, uvm_tcga_pan_can_atlas_2018_samples.all.213) %>%
  select(-patientId)

df1_213_nonredundant_5_5_23 <- bind_rows(df1_50_nonredundant_5_5_23, df51_150_nonredundant_5_5_23, df151_213_nonredundant_5_5_23)

df1_213_nonredundant_5_5_23 <- df1_213_nonredundant_5_5_23 %>%
  rename("sample_id" = sampleId, "study_id" = studyId)


##extracting data from 40 TSGs for samples in 213 studies
cBio_pipeline_DICER1_5_8_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "DICER1")
head(cBio_pipeline_DICER1_5_8_23)

write.table(cBio_pipeline_DICER1_5_23_23, file="cBio_DICER1_fromRStudio_5-23-23.txt", sep='\t')

cBio_pipeline_RB1_5_23_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "RB1")
head(cBio_pipeline_RB1_5_23_23)

write.table(cBio_pipeline_RB1_5_23_23, file="cBio_RB1_fromRStudio_5-23-23.txt", sep='\t')

cBio_pipeline_APC_5_27_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "APC")
head(cBio_pipeline_APC_5_27_23)

write.table(cBio_pipeline_APC_5_27_23, file="cBio_APC_fromRStudio_5-27-23.txt", sep='\t')

cBio_pipeline_ATM_5_30_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "ATM")
head(cBio_pipeline_ATM_5_30_23)

write.table(cBio_pipeline_ATM_5_30_23, file="cBio_ATM_fromRStudio_5-30-23.txt", sep='\t')

cBio_pipeline_AXIN2_5_31_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "AXIN2")
head(cBio_pipeline_AXIN2_5_31_23)

write.table(cBio_pipeline_AXIN2_5_31_23, file="cBio_AXIN2_fromRStudio_5-31-23.txt", sep='\t')

cBio_pipeline_BRCA1_1_6_3_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "BRCA1")
head(cBio_pipeline_BRCA1_1_6_3_23)

write.table(cBio_pipeline_BRCA1_1_6_3_23, file="cBio_BRCA1_fromRStudio_6-3-23.txt", sep='\t')

cBio_pipeline_BRCA2_6_3_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "BRCA2")
head(cBio_pipeline_BRCA2_6_3_23)

write.table(cBio_pipeline_BRCA2_6_3_23, file="cBio_BRCA2_fromRStudio_6-3-23.txt", sep='\t')

cBio_pipeline_MSH2_6_3_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "MSH2")
head(cBio_pipeline_MSH2_6_3_23)

write.table(cBio_pipeline_MSH2_6_3_23, file="cBio_MSH2_fromRStudio_6-3-23.txt", sep='\t')

cBio_pipeline_TP53_6_4_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "TP53")
head(cBio_pipeline_TP53_6_4_23)

write.table(cBio_pipeline_TP53_6_4_23, file="cBio_TP53_fromRStudio_6-4-23.txt", sep='\t')

cBio_pipeline_MSH6_6_4_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "MSH6")
head(cBio_pipeline_MSH6_6_4_23)

write.table(cBio_pipeline_MSH6_6_4_23, file="cBio_MSH6_fromRStudio_6-4-23.txt", sep='\t')

cBio_pipeline_CEBPA_6_4_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "CEBPA")
head(cBio_pipeline_CEBPA_6_4_23)

write.table(cBio_pipeline_CEBPA_6_4_23, file="cBio_CEBPA_fromRStudio_6-4-23.txt", sep='\t')

cBio_pipeline_MLH1_6_4_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "MLH1")
head(cBio_pipeline_MLH1_6_4_23)

write.table(cBio_pipeline_MLH1_6_4_23, file="cBio_MLH1_fromRStudio_6-4-23.txt", sep='\t')

##6/6/23
cBio_pipeline_BAP1_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "BAP1")
head(cBio_pipeline_BAP1_6_6_23)

write.table(cBio_pipeline_BAP1_6_6_23, file="cBio_BAP1_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_BARD1_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "BARD1")
head(cBio_pipeline_BARD1_6_6_23)

write.table(cBio_pipeline_BARD1_6_6_23, file="cBio_BARD1_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_BMPR1A_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "BMPR1A")
head(cBio_pipeline_BMPR1A_6_6_23)

write.table(cBio_pipeline_BMPR1A_6_6_23, file="cBio_BMPR1A_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_CDC73_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "CDC73")
head(cBio_pipeline_CDC73_6_6_23)

write.table(cBio_pipeline_CDC73_6_6_23, file="cBio_CDC73_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_CDH1_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "CDH1")
head(cBio_pipeline_CDH1_6_6_23)

write.table(cBio_pipeline_CDH1_6_6_23, file="cBio_CDH1_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_CDKN1B_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "CDKN1B")
head(cBio_pipeline_CDKN1B_6_6_23)

write.table(cBio_pipeline_CDKN1B_6_6_23, file="cBio_CDKN1B_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_CDKN2A_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "CDKN2A")
head(cBio_pipeline_CDKN2A_6_6_23)

write.table(cBio_pipeline_CDKN2A_6_6_23, file="cBio_CDKN2A_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_CHEK2_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "CHEK2")
head(cBio_pipeline_CHEK2_6_6_23)

write.table(cBio_pipeline_CHEK2_6_6_23, file="cBio_CHEK2_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_CYLD_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "CYLD")
head(cBio_pipeline_CYLD_6_6_23)

write.table(cBio_pipeline_CYLD_6_6_23, file="cBio_CYLD_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_FH_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "FH")
head(cBio_pipeline_FH_6_6_23)

write.table(cBio_pipeline_FH_6_6_23, file="cBio_FH_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_FLCN_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "FLCN")
head(cBio_pipeline_FLCN_6_6_23)

write.table(cBio_pipeline_FLCN_6_6_23, file="cBio_FLCN_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_MAX_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "MAX")
head(cBio_pipeline_MAX_6_6_23)

write.table(cBio_pipeline_MAX_6_6_23, file="cBio_MAX_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_MEN1_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "MEN1")
head(cBio_pipeline_MEN1_6_6_23)

write.table(cBio_pipeline_MEN1_6_6_23, file="cBio_MEN1_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_NF1_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "NF1")
head(cBio_pipeline_NF1_6_6_23)

write.table(cBio_pipeline_NF1_6_6_23, file="cBio_NF1_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_NF2_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "NF2")
head(cBio_pipeline_NF2_6_6_23)

write.table(cBio_pipeline_NF2_6_6_23, file="cBio_NF2_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_PALB2_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "PALB2")
head(cBio_pipeline_PALB2_6_6_23)

write.table(cBio_pipeline_PALB2_6_6_23, file="cBio_PALB2_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_PTCH1_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "PTCH1")
head(cBio_pipeline_PTCH1_6_6_23)

write.table(cBio_pipeline_PTCH1_6_6_23, file="cBio_PTCH1_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_PTEN_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "PTEN")
head(cBio_pipeline_PTEN_6_6_23)

write.table(cBio_pipeline_PTEN_6_6_23, file="cBio_PTEN_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_SDHA_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "SDHA")
head(cBio_pipeline_SDHA_6_6_23)

write.table(cBio_pipeline_SDHA_6_6_23, file="cBio_SDHA_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_SMAD4_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "SMAD4")
head(cBio_pipeline_SMAD4_6_6_23)

write.table(cBio_pipeline_SMAD4_6_6_23, file="cBio_SMAD4_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_SMARCB1_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "SMARCB1")
head(cBio_pipeline_SMARCB1_6_6_23)

write.table(cBio_pipeline_SMARCB1_6_6_23, file="cBio_SMARCB1_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_STK11_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "STK11")
head(cBio_pipeline_STK11_6_6_23)

write.table(cBio_pipeline_STK11_6_6_23, file="cBio_STK11_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_SUFU_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "SUFU")
head(cBio_pipeline_SUFU_6_6_23)

write.table(cBio_pipeline_SUFU_6_6_23, file="cBio_SUFU_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_TSC1_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "TSC1")
head(cBio_pipeline_TSC1_6_6_23)

write.table(cBio_pipeline_TSC1_6_6_23, file="cBio_TSC1_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_TSC2_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "TSC2")
head(cBio_pipeline_TSC2_6_6_23)

write.table(cBio_pipeline_TSC2_6_6_23, file="cBio_TSC2_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_VHL_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "VHL")
head(cBio_pipeline_VHL_6_6_23)

write.table(cBio_pipeline_VHL_6_6_23, file="cBio_VHL_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_WT1_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "WT1")
head(cBio_pipeline_WT1_6_6_23)

write.table(cBio_pipeline_WT1_6_6_23, file="cBio_WT1_fromRStudio_6-6-23.txt", sep='\t')

cBio_pipeline_SMARCA4_6_6_23 <- get_mutations_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23, genes = "SMARCA4")
head(cBio_pipeline_SMARCA4_6_6_23)

write.table(cBio_pipeline_SMARCA4_6_6_23, file="cBio_SMARCA4_fromRStudio_6-6-23.txt", sep='\t')


## clinical data such as OncoTree code, tumor mutation burden (TMB) for all samples in 213 studies

all_clinical <- get_clinical_by_sample(sample_study_pairs = df1_213_nonredundant_5_5_23)

write.table(all_clinical, file="cBio_all_clinical_fromRStudio_6-14-23.txt", sep='\t')


##9-18-23 exporting list of samples used to extract cbio data to remove from COSMIC data:

write.table(df1_213_nonredundant_5_5_23, file="df1_213_nonredundant_5_5_23.txt", sep='\t')


