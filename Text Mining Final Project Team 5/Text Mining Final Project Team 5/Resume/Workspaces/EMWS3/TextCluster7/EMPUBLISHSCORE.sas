%tmc_doc_score(import=&em_score_output,export=work._newexport,
termds=termloc.TextFilter5_filtterms, configds=termloc.TextCluster7_tmconfig,
clusters=termloc.TextCluster7_clusters, emoutstat=termloc.TextCluster7_emoutstat,
_scrout=work.TextFilter5_out, svd_u=termloc.TextCluster7_svd_u, svd_s=termloc.TextCluster7_svd_s, prefix=TextCluster7);
data &em_score_output; set work._newexport;
