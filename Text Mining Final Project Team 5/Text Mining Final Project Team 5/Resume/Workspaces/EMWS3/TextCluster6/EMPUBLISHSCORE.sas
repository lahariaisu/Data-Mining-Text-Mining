%tmc_doc_score(import=&em_score_output,export=work._newexport,
termds=termloc.TextFilter5_filtterms, configds=termloc.TextCluster6_tmconfig,
clusters=termloc.TextCluster6_clusters, emoutstat=termloc.TextCluster6_emoutstat,
_scrout=work.TextFilter5_out, svd_u=termloc.TextCluster6_svd_u, svd_s=termloc.TextCluster6_svd_s, prefix=TextCluster6);
data &em_score_output; set work._newexport;
