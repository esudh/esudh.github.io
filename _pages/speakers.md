---
permalink: /speakers/
title: "Speakers"
toc: true
toc_label: "Speakers"
toc_sticky: true
toc_icon: "calendar"
---

{% assign sorted_speakers = site.data.speakers | sort: "surname" %}

{% for person in sorted_speakers %}
{% if person.hidden %} {% continue %} {% endif %}
### {{ person.name }}
({{ person.affiliation }})

{%- comment -%} Find the one workshop taught by this person {%- endcomment -%}
{% assign lecture = site.data.lectures | where_exp: "item", "item.speakers contains person.name" | first %}

{% if lecture %}
**Lecture:** <a href="{{ '/WorkshopsandLectures/#' | relative_url }}#{{ lecture.title | slugify }}">{{ lecture.title }}</a>
{% endif %}

{{ person.bio }}

{% if person.url != "" %}More info: [{{person.url}}]({{person.url}}){% endif %}

[Top]({{ page.url | relative_url }})
{% endfor %}