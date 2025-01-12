%tmc_doc_score(import=&em_score_output,export=work._newexport,
termds=termloc.TextFilter7_filtterms, configds=termloc.TextCluster11_tmconfig,
clusters=termloc.TextCluster11_clusters, emoutstat=termloc.TextCluster11_emoutstat,
_scrout=work.TextFilter7_out, svd_u=termloc.TextCluster11_svd_u, svd_s=termloc.TextCluster11_svd_s, prefix=TextCluster11);
data &em_score_output; set work._newexport;
