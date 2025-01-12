%tmc_doc_score(import=&em_score_output,export=work._newexport,
termds=termloc.TextFilter7_filtterms, configds=termloc.TextCluster9_tmconfig,
clusters=termloc.TextCluster9_clusters, emoutstat=termloc.TextCluster9_emoutstat,
_scrout=work.TextFilter7_out, svd_u=termloc.TextCluster9_svd_u, svd_s=termloc.TextCluster9_svd_s, prefix=TextCluster9);
data &em_score_output; set work._newexport;
