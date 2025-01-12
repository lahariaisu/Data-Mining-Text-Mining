%tmc_doc_score(import=&em_score_output,export=work._newexport,
termds=termloc.TextFilter5_filtterms, configds=termloc.TextCluster8_tmconfig,
clusters=termloc.TextCluster8_clusters, emoutstat=termloc.TextCluster8_emoutstat,
_scrout=work.TextFilter5_out, svd_u=termloc.TextCluster8_svd_u, svd_s=termloc.TextCluster8_svd_s, prefix=TextCluster8);
data &em_score_output; set work._newexport;
