---
layout: single
---
{% assign workshop = site.data.workshops[page.workshop_id] %}

{% if workshop.hidden %} {% continue %} {% endif %}
# {{ workshop.title }} 
**Instructors:** {% for instructor_name in workshop.instructors -%}
  {%- comment -%} We slugify the name to match the ID on the instructors page {%- endcomment -%}
  <a href="{{ '/instructors/' | relative_url }}#{{ instructor_name | slugify }}">{{ instructor_name }}</a>{%- unless forloop.last -%}, {%- endunless -%}
{%- endfor -%}<br>
**Duration:** {{ workshop.duration }}

{{ workshop.syllabus | markdownify }}

<a href="{{ '/WorkshopsandLectures/' | relative_url }}">Back to all workshops</a>