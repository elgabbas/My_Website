---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/
abstract: '<p style="text-align: justify;">Invasive alien species (IAS) negatively affect biodiversity, ecosystem functioning, and human well-being. The impacts of IAS will likely exacerbate in the future due to new species introductions and the synergy with other drivers of global change. We aim to use statistical models to estimate where and under which conditions new invasions of plants might occur and what might be the overall extent of those invasions.</p>'
title: "Invasive alien species Digital Twin (IAS-DT)"
subtitle: ""
summary: ""
authors:
- Ahmed El-Gabbas
- Taimur Khan
- Marina Golivets
- Ingolf Kühn
tags: ["IAS", "UFZ", "BioDT", "Invasive alien species", "Digital Twin"]
categories:  ["Poster"]
date: 2023-09-06T13:15:06+01:00
lastmod: 2023-09-06T13:15:06+01:00
featured: false
draft: false
doi: ""
url_pdf: "Publications/Invasive_Alien_Species_Digital_Twin_IAS_DT.pdf"
links:
- name: Zenodo
  url: 'https://doi.org/10.5281/zenodo.8100292'
image:
  caption: ''
  focal_point: ""
  preview_only: false
publication: "BioDT Annual Meeting 2023, 13-14 June in Leiden, Netherlands"
publication_short:
publication_types:
- "1"
publishDate: "2023-06-14T00:00:00Z"
slides:
summary:
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ""
url_slides: ""
url_source: ''
url_video: ''
profile: false
related: false
projects: []
---
<div style="display: none">
Invasive alien species (IAS) negatively affect biodiversity, ecosystem functioning, and human well-being. The impacts of IAS will likely exacerbate in the future due to new species introductions and the synergy with other drivers of global change. We aim to use Statistical models to estimate where and under which conditions new invasions of plant might occur and what might be the overall extent of those invasions. We are particularly interested in 
• understanding how the number of IAS changes across Europe;
• which plant IAS may pose the biggest threat to biodiversity and ecosystem Service provisioning in the future;
• what habitats are most susceptible to plant invasions and may require increased attention from managers.
Technical description
IAS-DT
• Model (LUMI HPC): We will model multiple IAS simultaneously in a joint species distribution modeling framework, a technique that accounts for species co-occurrence patterns and better projects tne overall assemblage composition
• Scale: Europe (10*10 km equal-area grid) • Data workflow: DDDAS System architecture; OPeNDAP Server, the state of the natural Systems (and of the digital twin) is kept, updated, and versioned
Dependent variable
>1400 plant IAS (FloraVeg.EU)
• Global Biodiversity Information Facility (CBIF, >10 million observations)
• European Alien Species Information Network (EASIN, >117,000 additional grid cells)
• Integrated European Long-Term Ecosystem, critical zone and socio-ecological Research
(eLTER, ~120 sites in Europe)
Potential predictors
• Habitat (EUNIS) / land cover (Copernicus)
• CHELSA climatologies — current (1981-2020) and various future climate change scenarios (CMIP6)
• Soil dass
• Spatial sampling bias
• Propagule pressure and disturbance level - road & railway density
Overview of IAS-DT components
1) Dynamic Data-Driven Application Systems (DDDAS) based workflows listen for changes in data sources (l.a. feedback loops), pull and process required data (l.b. data Processing), merge and reconcile new and old data (l.c.data assimilation), Version datasets and add metadata (l.d. state + FAIR metadata management), and transfer updated datasets (data + log files) to a data Server (l.e. data servicing).
2) OPeNDAP Cloud Server Services the datasets from the previous component and provides an interfaceto all IAS-DT data (input, Output, metadata, and log files). The Server also serves as an interface for third-party applications to access Information contained in the IAS-DT.
3) IAS Joint Species Distribution Model is the modelling block of IAS-DT that uses input data to estimate gridded IAS numbers per habitat type.
4) IAS-DT dashboard dashboard presents aggregated results of IASDT in a simplified and intuitive manner to BioDT users and stakeholders and serves as a communication tool
</div>