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
**Duration:** {{ workshop.duration }}
**Syllabus:** [View details]({{ '/workshops/' | append: workshop.id | relative_url }})
**Abstract:**
{{ workshop.abstract | markdownify }}

[Top]({{ page.url | relative_url }})

{% endfor %}

## Lectures

The ESU also represents the opportunity to listen to conferences on various topics of Digital Humanities. Representatives from Clarin Trainers' Network as well as from Humanistica have already confirmed their presence.  

[Top](https://esudh.github.io/WorkshopsandLectures/)