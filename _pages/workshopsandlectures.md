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

The ESU also represents the opportunity to listen to conferences on various topics of Digital Humanities. Representatives from Clarin Trainers' Network as well as from Humanistica have already confirmed their presence. 

Wednesday 8 July 
4.30PM Grand Salon

Studying dynastic and professional networks: Strict and Reliable LLM Workflows with SQL / Rosenn Nicolas (University of Galway

How can we examine the influence of a group of publishers’ dynastic and professional network on their editorial choices?
Using the example of the Gabiano-Laporte dynasty of Lyon in the 16th century and their publications, this presentation introduces a technical methodology for the study of the history of the book. Indeed, it enables the analysis of a large corpus, the identification of family and professional relationships, and the quantitative analysis of book production. This involves using digital tools such as databases, SQL, JavaScript and LLMs. In this way, it is possible to answer a historical question using digital tools.
***
Rosenn is a PhD student on the REBPAF project, funded by a European Marie Curie fellowship. She is based at the University of Galway in Ireland, under the supervision of Dr Catherine Emerson. Her research focuses on the history of publishing in Lyon in the 16th century. She is particularly interested in the Gabiano-Laporte family and their network, from a digital humanities perspective.


 
[Top]({{ '/WorkshopsandLectures/' | relative_url }})