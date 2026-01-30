---
title: "Deep Learning-Based Classification of Parkinson's Disease Stages Using DaTSCAN"
---

## Background

Dopamine transporter imaging (DaTSCAN) is a specialized nuclear medicine procedure utilized to evaluate patients with suspected parkinsonian syndromes (PS). While DaTSCAN is highly effective in advanced stages of Parkinson's Disease (PD), clinical experts often face significant challenges in accurately differentiating between healthy subjects and those in the early or intermediate stages of the disease. This diagnostic ambiguity frequently results in DaTSCAN being relegated to a confirmatory role for evident cases, rather than an early diagnostic tool. Moreover, DaTSCAN in clinical practice often relies on subjective assessment (limited generalizability) or template-based semi-automatic quantification (limited time). Deep learning has been proven to excel at identifying subtle patterns in medical imaging that may elude human observation, particularly in progressive pathologies. By taking advantage of these computational models, there is a significant opportunity to improve the sensitivity of DaTSCAN interpretation during the early windows of disease progression.


## Aims

The primary objective of this project is to develop deep learning models capable of identifying subjects in prodromal or more advanced stages of Parkinson's disease using DaTSCAN as the primary input. By establishing robust models, the project seeks to elevate the role of DaTSCAN from a supportive orientation tool to a primary evidentiary standard in clinical settings. Furthermore, once a baseline model is established, the research will expand to include multimodal data integration to evaluate the diagnostic information gain from auxiliary imaging (MRI) and non-imaging data sources (e.g., motor tests).
 

## Methodology

In this project, the publicly available Parkinson's Progression Markers Initiative (PPMI) dataset will be used. It includes well-defined healthy controls and PD patients at different stages. This database also contains DaTSCAN and other imaging techniques, alongside a comprehensive range of genetic, demographic, and clinical variables.

The core of this project includes the design, training, and validation of deep learning models specifically for the classification of parkinsonian stages. The methodology will focus on both binary and multiclass distinction of DaTSCAN results. While the project aims to produce high-accuracy results, its primary focus is on its feasibility and the potential benefit of data fusion strategies within a clinical context.


## Scope

For the computational development, Python and PyTorch will serve as the primary framework. We will implement scikit-learn for rigorous cross-validation strategies to ensure objective model selection and evaluation. To train and optimise the models, dedicated computing resources provided by the VICOROB research group will be used. The project will leverage the PPMI database, specifically utilizing a cohort comprising Healthy Controls (HC, N=336), Parkinson's Disease patients (PD, N=1475), and Prodromal PD patients (pPD, N=2456).

The initial phase will focus on the subsets where DaTSCAN is available (HC and PD), while the multimodal expansion will incorporate Structural MRI (available across all three groups) and longitudinal standard clinical metrics, including the Unified Parkinson's Disease Rating Scale (UPDRS), University of Pennsylvania Smell Identification Test (UPSIT). Due to the sparsity of genetic (APOE) and biological (alpha-synuclein) markers, these will be treated as secondary variables. Finally, the proposed solution will be benchmarked against standard machine learning algorithms to justify the complexity of the neural network approach.

The successful implementation of this study could streamline early PD diagnosis, reduce the subjective burden on radiologists, and provide a framework for integrating AI into broader biomedical imaging workflows.
