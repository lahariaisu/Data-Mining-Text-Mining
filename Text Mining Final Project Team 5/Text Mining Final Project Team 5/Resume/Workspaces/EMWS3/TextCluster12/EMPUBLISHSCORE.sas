%tmc_doc_score(import=&em_score_output,export=work._newexport,
termds=termloc.TextFilter7_filtterms, configds=termloc.TextCluster12_tmconfig,
clusters=termloc.TextCluster12_clusters, emoutstat=termloc.TextCluster12_emoutstat,
_scrout=work.TextFilter7_out, svd_u=termloc.TextCluster12_svd_u, svd_s=termloc.TextCluster12_svd_s, prefix=TextCluster12);
data &em_score_output; set work._newexport;
