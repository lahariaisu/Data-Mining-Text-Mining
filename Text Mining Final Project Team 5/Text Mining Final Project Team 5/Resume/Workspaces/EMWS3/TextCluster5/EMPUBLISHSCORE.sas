%tmc_doc_score(import=&em_score_output,export=work._newexport,
termds=termloc.TextFilter4_filtterms, configds=termloc.TextCluster5_tmconfig,
clusters=termloc.TextCluster5_clusters, emoutstat=termloc.TextCluster5_emoutstat,
_scrout=work.TextFilter4_out, svd_u=termloc.TextCluster5_svd_u, svd_s=termloc.TextCluster5_svd_s, prefix=TextCluster5);
data &em_score_output; set work._newexport;
