---
permalink: /WorkshopsandLectures/
title: "Workshops and Lectures"
toc: true
toc_label: "Workshops and Lectures"
toc_sticky: true
toc_icon: "calendar"
---

## Workshops

{% assign sorted_workshops = site.data.workshops | sort: "title" %}

{% for workshop in sorted_workshops %}
{% if workshop.hidden %} {% continue %} {% endif %}
### {{ workshop.title }} 
**Instructors:** {% for instructor_name in workshop.instructors -%}
  {%- comment -%} We slugify the name to match the ID on the instructors page {%- endcomment -%}
  <a href="{{ '/instructors/' | relative_url }}#{{ instructor_name | slugify }}">{{ instructor_name }}</a>{%- unless forloop.last -%}, {%- endunless -%}
{%- endfor -%}<br>
**Duration:** {{ workshop.duration }}<br>
**Syllabus:** [View details]({{ '/workshops/' | append: workshop.id | relative_url }})<br>
**Abstract:**
{{ workshop.abstract | markdownify }}

[Top]({{ page.url | relative_url }})

{% endfor %}

## Lectures

The ESU also represents the opportunity to listen to conferences on various topics of Digital Humanities.  



### Studying dynastic and professional networks: Strict and Reliable LLM Workflows with SQL / Rosenn Nicolas (University of Galway)
Wednesday 8 July 4.30PM Grand Salon <br>

How can we examine the influence of a group of publishers’ dynastic and professional network on their editorial choices?
Using the example of the Gabiano-Laporte dynasty of Lyon in the 16th century and their publications, this presentation introduces a technical methodology for the study of the history of the book. Indeed, it enables the analysis of a large corpus, the identification of family and professional relationships, and the quantitative analysis of book production. This involves using digital tools such as databases, SQL, JavaScript and LLMs. In this way, it is possible to answer a historical question using digital tools.<br>
Rosenn is a PhD student on the REBPAF project, funded by a European Marie Curie fellowship. She is based at the University of Galway in Ireland, under the supervision of Dr Catherine Emerson. Her research focuses on the history of publishing in Lyon in the 16th century. She is particularly interested in the Gabiano-Laporte family and their network, from a digital humanities perspective.<br>
 
[Top]({{ '/WorkshopsandLectures/' | relative_url }})


### Voices as Data: AI in Computational Phonetics / Katarzyna Foremniak (Roche, Poland), Mariusz Sozański (Polish Air Navigation Services Agency, Poland)<br>
Friday 10 July 4.30PM Grand Salon<br>
Abstract and bio, see the workshop description<br>

### From Data to Engagement: digital mediation of cultural heritage / Chiara Zuanni (University for Continuing Education Krems / Chair of EADH)<br>
Friday 10 July 5.15PM Grand Salon<br>
This conference will focus on digital engagement with cultural heritage. It will discuss how digital methods do not only support research, but also the mediation of heritage collections to audiences on site and online. It will highlight the importance of understanding different users and audiences, offering an overview of engagement approaches (incl. storytelling and gamification) and possible digital methods (e.g. online portals, mobile and web applications, eXtended Reality). The contribution will briefly cover evaluation and digital audience research, as well as ethical questions that emerge in sharing and fostering reuse of digital heritage in the public sphere.<br>
 
Bio:<br>
Chiara Zuanni is a full professor of Digital Cultures and Digital Humanities at the University for Continuing Education Krems (since September 2025), Chair of the European Association for Digital Humanities (since April 2026), and an associate professor in digital humanities, museology-focused, at the University of Graz (since 2018), where she also completed an Habilitation in digital humanities, researching practices and uses surrounding museum data (2024). She has a PhD in museology from the University of Manchester (2016), and a BA in Classics and MA in Archaeology from the University of Bologna. Her research interests focus on the construction of knowledge in museums with digital methods, museum data practices, 3D and data-driven research methods in cultural heritage collections, and digital audience research.<br>

[Top]({{ '/WorkshopsandLectures/' | relative_url }})

### ParlaMint / Anna Kryvenko (Institute of Contemporary History, Slovenia/ Clarint)<br>
Monday 13 July, 4.30PM Grand Salon<br>
Parliaments are pivotal institutions in democracies, shaping policies that impact citizens by deliberating critical societal issues. The debates are commonly recorded as open-access digital proceedings enriched with metadata. These records are valuable for researchers exploring political, societal, historical, cultural or communicational dynamics in fields such as linguistics, discourse analysis, political science, history, sociology, gender studies as well as for various teaching contexts. This workshop takes advantage of the interoperability and comparability of the ParlaMint corpora containing parliamentary proceedings from 26 national and 3 regional parliaments across Europe at least between 2015 and 2022, although several ParlaMint corpora include data spanning a much longer period. Available in the original languages and machine-translated to English, the corpora also feature metadata on speakers, parties and speeches, including names, gender, age, roles, party affiliation, power positions, political leanings, speech dates, topics and sentiment. This hands-on project-oriented tutorial will provide skills and methodological training to explore ParlaMint version 5.0, which can be obtained by downloading the files or by accessing the preloaded data via online platforms – primarily noSketch Engine and TEITOK. All data and tools are open access and can be used free of charge. Designed for researchers in Social Sciences and Humanities with interest in parliamentary discourse but no or little familiarity with corpus linguistic tools, this workshop will train participants to leverage extensive content, annotations and metadata via user-friendly concordancers, facilitating research on individual national parliaments, enabling transnational comparisons, and fostering cross-disciplinary collaboration. Participants with also discover CLARIN – Common Language Resources and Technology Infrastructure.
 
[Top]({{ '/WorkshopsandLectures/' | relative_url }})

### RayuelaParis: A Literary Journey Through Paris in Hopscotch with Python / Juan Pablo Chaclan<br>
Wednesday 15 July, 4.30PM Grand Salon

RayuelaParis is a digital humanities project that investigates how literary space can be extracted, structured, and visualized from narrative texts.
Focusing on Julio Cortázar’s Hopscotch, this talk outlines a workflow using Python to identify location references, normalize place names, and geocode them into spatial data. Using tools such as Geocoder and Folium, the project creates interactive maps linking textual excerpts to real locations, offering a transferable approach for spatial humanities research.<br>

Bio:<br>
Juan-Pablo Chaclan is a software engineer, IT consultant, and educator passionate about bridging technology and the humanities. Alongside his work with major French banks and international organizations, including the United Nations, he teaches Python and Artificial Intelligence for Digital Humanities at Université Marie et Louis Pasteur. He is the creator of RayuelaParis, a project that combines computational text analysis, geospatial technologies, and fieldwork to map and document the Paris of Julio Cortázar’s Hopscotch. He believes that code is not only a technical skill, but also a way of reading the world through new perspectives.<br>

[Top]({{ '/WorkshopsandLectures/' | relative_url }})

### Thursday 16 July 4.30PM Grand Salon<br>
Elisabeth Burr (Emeritus professor University of Leipzig, founder of the ESU), Title and abstract to be announced<br>
Bio:<br>
Elisabeth Burr (*1952), emeritus professor of Leipzig university, studied Romance, English and German literature and linguistics at the universities of Tübingen, Leeds and Amiens from 1971 to 1980. After having spent more than 5 years in Naples (Italy) as a lecturer for the German Academic Exchange Service she took up a post in the Italian Department at Duisburg University where she was awarded a PhD in 1991 for her dissertation on Verb and Variety, a study of Italian newspaper language for which she had created a marked-up corpus. In 1997 she concluded her 'Habilitation' (post-doctoral monograph) on Repeated Discourse and idiomatic competence based on her corpus of French, Italian and Spanish newspapers. Temporary professorships of Romance linguistics brought her to the universities of Cologne, Siegen, Bremen and Marburg. In 2005 she was offered the Chair of French, Francophone and Italian linguistics at Leipzig University, which she held until her retirement in 2019.Her research, teaching and main publications, embedded over the years more and more in a Digital Humanities perspective, focus on the history of the description and conceptualisation of Romance languages, corpus linguistics & and linguistics of parole (corpus-design, -theory, -markup and -analysis included), the construction of gender in language science, in grammars and language usage, as well as multilinguality in digital, urban, scientific and scholarly spaces. 
She participated in the project proposal EUROSYNCH (1992-1993), represented her university in the Thematic Network ACO*HUM (1998-2000), proposed the project "Humanities and Information Technologies (HUM*IT)" in the framework of the European Year of Languages 2001, organised SILFI 2000 and CLiP 2001 and was a prominent member of the Network of Excellence "Computing & Humanities in Multilingual Europe" (CHiME) (2001-2003). In 2001 the Humanities Computing Unit at Oxford University offered her a Distinguished Visiting Scholarship and in 2004, 2005, 2007, 2008 and 2010 the European Commission appointed her as an independent expert to the evaluation sessions for proposals received in response to the calls FP6-2003-Infrastructures-4, FP6-2004-Infrastructures-5, FP7-2007-Infrastructures-1, FP7-2008-Infrastructures-1, and FP7-2010-Infrastructures-1. 
Apart from serving and having served on various national and European scientific consulting and evaluation bodies (DARIAH-DE, CLARIA-DE, CAHIER, MSH Dijon, Zeitschrift für digitale Geisteswissenschaften (ZfdG) etc.) she constructed a fruitful collaboration with CLARIN-D, with PARTHENOS, CLARIN-EU and DARIAH-EU in the framework of the European Summer University in Digital Humanities “Culture & Technology (https://esu.culintec.de/), which she founded and directed from 2009 until 2022 at the University of Leipzig. 
Her interest in and active involvement with scholarly associations led her to accept various prominent positions over the years. From 1996 to 2002 she was, in fact, member of the Exec of the Società Internazionale di Linguistica e Filologia Italiana (SILFI) and from 1998 to 2000 President of the same association. From 1997 to 1999 she held the position of 2nd vice-president of the Deutscher Romanistenverband (DRV) and from 2000 to 2014 she was member of the Scientific Board of the Gesellschaft für Angewandte Linguistik (GAL), directed  its section Computerlinguistik from 2000 to 2002 and its section Soziolinguistik from 2002 to 2014 and hosted its 40th Conference GAL 2010 "SprachRäume" 2010 in Leipzig. Apart from this she was member of the international scientific committee of the seminars Computer - Literature - Philology (CLiP) from 2000 to 2008 and founding member and member of the Exec of the Circolo dei dialettologi di Sappada from 2002-2005.
The strongest impact on her scholarly life had, however, the Association for Literary and Computing (ALLC) which she joined in 1989 because of the “loneliness” she felt as a corpus linguist. She served this association, in fact, first as co-opted member (1998-2001) and then as voting member (2001-2010) and was member of the joint workgroup ADHOC, established by ACH and ALLC in July 2002, which paved the way for the foundation of ADHO in 2005. She was appointed Chair of the then newly founded Standing Committee on Multi-Lingualism & Multi-Culturalism of ADHO in 2005, and directed it until 2014. From 2006 to 2012, she was a voting member on ADHO’s Steering Committee, and in 2015 she was elected to serve as voting member on the Exec of the European Association for Digital Humanities (EADH) and became its representative in EASSH. Her membership of the Exec ended in 2016 when she became President of EADH, a position she held until 2023. During this time she was also President (elect) of the Constituent Organisations Board of the Alliance of Digital Humanities Organisations (ADHO) from 2019 to 2021 and chaired the scientific programme committee of the EADH2020-2021 conference in Krasnoyarsk.
Last but not least she was not only member of innumerable scientific programme committees of Digital Humanities and Language Resources conferences but has also considerable experience with the running of one of the Associate Organisations of EADH, the DHd (Digital Humanities in German speaking regions). In 2012 she was, in fact, elected member of the Steering Committee of this then newly founded association and held this position until 2022. In 2016 she hosted its 3rd international congress DHd 2016 “Modellierung - Vernetzung - Visualisierung: Die Digital Humanities als fächerübergreifendes Forschungsparadigma” with its 470 participants in Leipzig and was Chair of its scientific programme committee for the DHd conference in Bern (2017). She is very interested in the work, thinking and way of doing also of the Associate Organisations of EADH in Italy, in the Czech Republic, the Nordic Countries, and Russia, with whom she had the chance to work together in different settings and not least in the EADH AOs Forum. <br>

[Top]({{ '/WorkshopsandLectures/' | relative_url }})
