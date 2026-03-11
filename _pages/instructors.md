---
permalink: /instructors/
title: "Instructors"
toc: true
toc_label: "Instructors"
toc_sticky: true
toc_icon: "calendar"
---

{% assign sorted_instructors = site.data.instructors | sort: "surname" %}

{% for person in sorted_instructors %}
{% if person.hidden %} {% continue %} {% endif %}
### {{ person.name }}
({{ person.affiliation }})
{%- comment -%} Find the one workshop taught by this person {%- endcomment -%}
{% assign workshop = site.data.workshops | where_exp: "item", "item.instructors contains person.name" | first %}

{%- if workshop -%}
**Workshop:** <a href="{{ '/WorkshopsandLectures/#' | relative_url }}#{{ workshop.title | slugify }}">{{ workshop.title }}</a></p>
{%- endif -%}
{{ person.bio }}

{% if person.url != "" %}More info: [{{person.url}}]({{person.url}}){% endif %}

[Top]({{ page.url | relative_url }})
{% endfor %}