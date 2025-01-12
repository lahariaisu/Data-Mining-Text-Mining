%tmc_doc_score(import=&em_score_output,export=work._newexport,
termds=termloc.TextFilter7_filtterms, configds=termloc.TextCluster13_tmconfig,
clusters=termloc.TextCluster13_clusters, emoutstat=termloc.TextCluster13_emoutstat,
_scrout=work.TextFilter7_out, svd_u=termloc.TextCluster13_svd_u, svd_s=termloc.TextCluster13_svd_s, prefix=TextCluster13);
data &em_score_output; set work._newexport;
