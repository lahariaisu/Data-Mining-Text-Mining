%tmc_doc_score(import=&em_score_output,export=work._newexport,
termds=termloc.TextFilter4_filtterms, configds=termloc.TextCluster10_tmconfig,
clusters=termloc.TextCluster10_clusters, emoutstat=termloc.TextCluster10_emoutstat,
_scrout=work.TextFilter4_out, svd_u=termloc.TextCluster10_svd_u, svd_s=termloc.TextCluster10_svd_s, prefix=TextCluster10);
data &em_score_output; set work._newexport;
