---
permalink: /instructors/
title: "Instructors"
toc: true
toc_label: "Instructors"
toc_sticky: true
toc_icon: "calendar"
---

{% assign sorted_instructors = site.data.instructors | sort: "name" %}

{% for person in sorted_instructors %}
### {{ person.name }} ({{ person.affiliation }})

{{ person.bio }}

{% if person.url != "" %}({{ person.url }}){% endif %}

[Top]({{ page.url | relative_url }})
{% endfor %}