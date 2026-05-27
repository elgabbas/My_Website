---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/
abstract: '<p style="text-align: justify;"><strong>Introduction and Aim: </strong>Spatiotemporal and taxonomic sampling bias in biodiversity occurrence data poses critical challenges for robust ecological inference, species distribution models (SDMs), and conservation planning. Despite the exponential growth in global biodiversity records over recent decades, these biases persist. This study converts raw occurrence records from Global Biodiversity Information Facility (GBIF) into global, publicly available, taxon-stratified, and temporally resolved sampling-effort rasters using a reproducible workflow, providing transparent and standardised measures of observation count and species richness to support bias-aware ecological analyses.<br /> <strong>Main Variables Included: </strong>Two complementary raster variables: observation count and species richness, each provided across major taxonomic groups and their descendant levels (e.g., classes, orders, families).<br /><strong>Time Coverage: </strong>Annual and cumulative rasters span 1980-2025.<br /> <strong>Spatial Coverage: </strong>global; four spatial resolutions (~1, 5, 10, and 20 km).<br /> <strong>Taxa: </strong>Nine major taxonomic groups: Amphibia, Arachnida, Aves (birds), Fungi, Insecta, Mammalia, Mollusca, Reptilia, and Tracheophyta (vascular plants), with descendant-level outputs<br /><strong>Applications: </strong>Based on ~3 billion records for >730,000 species, this study provides annual and cumulative global rasters quantifying observation count and species richness at four resolutions, stratified by nine taxonomic groups and their descendants. At 1 km resolution, 95% of records occupy merely 0.33% of Earth&#39;s surface (0.93% of land), whilst the remaining data extend across only 1.77% (3.88% of land), leaving approximately 98% (95% of land) unsampled. This extreme concentration persists across all taxonomic groups, underscoring the need for taxon-specific bias correction. Annual data enable exploration of long-term trends in data mobilisation and sampling effort. These rasters enable bias correction in presence-only SDMs, including MaxEnt bias files, target-group backgrounds, and model-based approaches. Beyond SDMs, they can inform macroecological synthesis, biodiversity monitoring, and systematic conservation planning by identifying spatial and temporal knowledge gaps. All data and code are openly available under FAIR principles, promoting transparent and reproducible biodiversity science.</p>'
title: "A global, taxon-stratified, high-resolution sampling-effort dataset from GBIF for bias-aware ecological modelling"
subtitle: ""
summary: ""
authors:
- Ahmed El-Gabbas
tags: ["Maxent", "Species Distribution Models", "Open-access", "Conservation", "Sampling efforts", "Sampling bias", "rstats"]
categories:  ["Peer-reviewed research"]
date: 2026-05-18T13:15:06+01:00
lastmod: 2026-05-27
featured: false
draft: false
# doi: "10.1111/ddi.70205"
image:
  caption: ''
  #focal_point: ""
  preview_only: false
publication: "**Diversity and Distributions** 32, no. 5: e70205."
publication_short:
# publication_types:
# - journal article
publishDate: "2026-5-18T13:00:00Z"
slides:
url_code: ''
url_dataset: ''
url_pdf: 'Publications/El-Gabbas_2026.pdf'
links:
- name: "DOI"
  url: "https://www.doi.org/10.1111/ddi.70205"
- name: "GitHub"
  url: 'https://github.com/elgabbas/global_sampling_efforts/'
- name: "Zenodo"
  url: 'https://doi.org/10.5281/zenodo.17591680'
- name: "Appendix 1"
  url: 'Publications/El-Gabbas_2026_appendix_1.pdf'
- name: "Appendix 2"
  url: 'Publications/El-Gabbas_2026_appendix_2.pdf'
- name: "Supp. figs"
  url: 'Publications/El-Gabbas_2026_supporting_figures.pdf'
url_poster: ''
url_project: ""
url_slides: ""
url_source: ''
url_video: ''
profile: false
related: false
projects: []
---

--------------------------------------------------------

### Examples of sampling effort datasets

<p style="text-align: justify;">This study provides global, taxon-stratified rasters of sampling effort (observation counts and species richness) derived from ~3 billion GBIF records. These rasters are available for nine major taxonomic groups and their descendants, at four spatial resolutions (≈1, 5, 10, and 20 km), and for annual as well as cumulative time periods (1980–2025).<br/><br/>Seven examples are provided to illustrate different views and applications of the dataset:</p>

- **[Example 1](/efforts/example_1.html)** — Total recorded bird species richness (Aves, `n_sp`, 10 km)
- **[Example 2](/efforts/example_2.html)** — Total bird observation count (Aves, `n_obs`, 10 km)
- **[Example 3](/efforts/example_3.html)** — Cumulative recorded species richness across all groups (`n_sp`, 5 km)
- **[Example 4](/efforts/example_4.html)** — Cumulative observation count across all groups (`n_obs`, 5 km)
- **[Example 5](/efforts/example_5.html)** — Bird observations for the period 2015–2024 (Aves, `n_obs`, 5 km)
- **[Example 6](/efforts/example_6.html)** — Descendant-level exploration (Insecta example, `n_obs`, 10 km)
- **[Example 7](/efforts/example_7.html)** — Percentage-based spatial coverage analysis (Aves / All groups, `n_obs`, 20 km)


For full documentation, data access functions [<a href="https://elgabbas.github.io/ecokit/reference/sampling_effort.html" target="_blank"><i>get_sampling_effort()</i></a>], repository structure, and the complete reproducible workflow, see the companion <a href="https://github.com/elgabbas/global_sampling_efforts/" target="_blank"> GitHub repository</a>.
