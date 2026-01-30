# Títol



# Estructura de la proposta

- Antecedents: la mínima informació necessària per tal d'entendre l'objectiu
Han de servir per presentar el marc del TFG.
- Objecte: què s'espera haver fet al finalitzar el TFG. Què ha de succeir per
  saber que el TFG ha finalitzat amb èxit; la seva justificació
- Metodologia:
- Abast: Fins a on es vol arribar

# Proposal required structure

- Background 
- Goals 
- Methodology 
- Scope 

## Background

Dopamine Transporter Imaging (DaTscan) is a specialized nuclear medicine
procedure utilized to evaluate patients with suspected Parkinsonian Syndromes
(PS). While DaTscan is highly effective in advanced stages of Parkinson’s
Disease (PD), clinical experts often face significant challenges in accurately
differentiating between healthy subjects and those in the early or intermediate
stages of the disease. This diagnostic ambiguity frequently results in DaTscan
being relegated to a confirmatory role for evident cases, rather than an early
diagnostic tool.

Recent advancements in Deep Learning have demonstrated that Neural Networks
(NNs) excel at identifying subtle patterns in medical imaging that may elude
human observation, particularly in progressive pathologies. By taking advantage
of these computational models, there is a significant opportunity to improve the
sensitivity of DaTscan interpretation during the early windows of disease
progression.


## Goals

The primary objective of this project is to develop a Neural Network
architecture capable of achieving a high degree of accuracy *(targeting >95%)*
using DaTscan imaging alone. *By establishing a robust model, the project seeks
to elevate the role of DaTscan from a supportive orientation tool to a primary
evidentiary standard in clinical settings.*

Furthermore, once a baseline model is established, the research will expand to
include multimodal data integration. the inclusion of additional diagnostic
variables will be evaluated. *Variables such as Magnetic Resonance Imaging (MRI)
or clinical metadata, to quantify the information gain provided by these
sources. The ultimate goal is to determine whether the increase in diagnostic
precision justifies the added complexity and cost of multi-test protocols. *  

## Methodology

To achieve this goal, a model will be trained on **...** dataset. *Describe the
dataset.* Tools ?

i.e.:
The models will be developed using tools such as Python and dedicated libraries
such as ... and ...

## Scope

The scope of this project includes the design, training, and validation of a
Deep Learning model specifically for the classification of Parkinsonian stages.
It will focus on the binary and multiclass distinction of scan results.

While the project aims to produce high-accuracy results, its primary focus is on
the feasibility and comparative benefit of data fusion in a clinical context.

*Això seria més com lo q té s'exemple i en Guillem*
The successful implementation of this study could streamline early PD diagnosis,
reduce the subjective burden on radiologists, and provide a framework for
integrating AI into broader biomedical imaging workflows.

---------------------------------- --- ----------------------------------

> Proposta d'en Guillem: 

## Antecedents:

L'estudi de la imatge mèdica és un dels camps més importants tant en la recerca
com en el diagnòstic de les malalties neurodegeneratives. Avenços en la potència
computacional o la intel·ligència artificial i el desenvolupament d'eines cada
vegada més completes en l'àmbit de l'anàlisi de la imatge mèdica, permeten que
es pugui identificar lesions, atrofies o regions que poden passar desapercebudes
fins i tot per un especialista, oferint així un nou punt de vista des del que
estudiar aquestes dolències. L'estudi de l'Alzheimer, l'expressió de demència
més comuna en persones grans, és un dels àmbits que es pot veure beneficiat
d'aquestes tècniques, ajudant-nos a assolir un coneixement més profund d'aquesta
malaltia.


## Objectius:

L'objectiu serà experimentar amb varies eines de parcel·lació per a obtenir
diferents segmentacions del cervell amb les quals entrenar models estadístics
que ens permetin estratificar els pacients en diferents grups.

## Metodologia:

Per a assolir aquest objectiu necessitarem, primer de tot, una bona base de
dades des de la que partir. L'ADNI (Alzheimer's Disease Neuroimaging Initiative)
és un estudi observacional, longitudinal i multicentre que ofereix una dataset
d'imatges ampli i de qualitat que ens solucionarà aquest primer requisit
necessari per a l'acompliment de l'objectiu d'aquest treball. Per a poder
obtenir les parcel·lacions, es farà ús de recursos com Freesurfer, un paquet
d'eines d'anàlisi de neuroimatge de codi obert o FSL, una llibreria d'eines
també dedicada a l'anàlisi de neuroimatges. Per últim, els models estadístics es
desenvoluparan en un entorn de programació com Python i fent ús de llibreries
dedicades a aquestes tasques com seria el cas de Scikit-learn.

## Abast:

Aquests models ens poden ajudar a aprofundir més en la comprensió de l'Alzheimer
i i pot suposar un avenç en la detecció d'aquesta malaltia. Essent així d'ajut
en l'àmbit de la neurologia.

---------------------------------- --- ----------------------------------

> Proposta d'un random a les diapos d na Teresa:

## Antecedents:

La bioimpressió 3D multimaterial s'ha consolidat com una eina innovadora en
l'ambit de l'enginyeria biomédica, ja que permet fabricar models biològics
complexos que reprodueixen amb gran fidelitat l'arquitectura i la heterogeneitat
dels teixits humans En el camp de l'oncologia aquesta tecnologia ofereix una
alternativa als models bidimensionals tradicionals que sovint no reflecteixen de
manera realista el microambient tumoral El cáncer de mama,una de les patologies
més prevalents a escala mundial, és un dels principals ambits d'aplicació
d'aquest enfocament.

## Objectius:

L'objectiu principal serà explorar el desenvolupament de models tumorals
tridimensionals mitjançant bioimpressió 3D amb múltiples biomaterials per
simular amb més precisió el microambient tumoral respecte als models
convencionals.

## Metodologia:

S'estudiaran diverses formulacions de biotintes basades en hidrogels naturals i
sintètics, avaluant-ne tant la compatibilitat amb línies cel-lulars de cáncer de
mama com la seva capacitat per mimetitzar l'entorn tumoral i reproduir la
progressió del tumor. Per dur a terme aquest objectiu, s'utilitzaran tecniques
de cultiu cel-lular en condicions controlades i bioimpressió 3D per a la
generació de models tridimensionals del microambient tumoral. Tots els
experiments es realitzaran a les instal-lacions d'Eurecat.

## Abast:

El desenvolupament d'aquest model pot esdevenir una eina clau per al disseny de
plataformes personalizades en l'estudi i el tractament del cancer de mama.


--------------- --------------- 
> in inglish 

## Background:

Multimaterial 3D bioprinting has established itself as an innovative tool in the
field of biomedical engineering, as it allows for the fabrication of complex
biological models that faithfully reproduce the architecture and heterogeneity
of human tissues. In the field of oncology, this technology offers an
alternative to traditional two-dimensional models that often do not
realistically reflect the tumor microenvironment. Breast cancer, one of the most
prevalent pathologies worldwide, is one of the main application areas for this
approach.

## Objectives:

The main objective will be to explore the development of three-dimensional tumor
models using 3D bioprinting with multiple biomaterials to more accurately
simulate the tumor microenvironment compared to conventional models.


## Methodology:

Various bioink formulations based on natural and synthetic hydrogels will be
studied, evaluating both their compatibility with breast cancer cell lines and
their ability to mimic the tumor environment and reproduce tumor progression. To
achieve this objective, controlled cell culture techniques and 3D bioprinting
will be used to generate three-dimensional models of the tumor microenvironment.
All experiments will be conducted at Eurecat's facilities.

## Scope:

The development of this model can become a key tool for the design of
personalized platforms in the study and treatment of breast cancer.

