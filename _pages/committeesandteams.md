---
permalink: /committeesandteams/
title: "Committees and organizing team"
toc: true
toc_label: "Committees and organizing team"
toc_sticky: true
toc_icon: "calendar"
---
---
This webpage will present the various teams behind this 2026 edition of the European Summer School in Digital Humanities. 
Besançon and the university Marie and Louis Pasteur have been awarded the organization of the ESU 2026 by the Steering Committee of the ESU created in 2024. 
A "local team" is dealing with all the organizational aspects of the ESU in Besançon.
A scientific committee, combining members of the "local team" as well as workshop instructors will be dealing with the evaluation of all received applications. 

### ESU Steering Committee

{%- assign committee_members = site.data.instructors | where: "steering", true | sort: "name" -%}
{%- for member in committee_members -%}
{{ member.name }} ({{ member.affiliation }})<br>
{%- endfor -%}

### Local organizing team
Rudy Chaulet<br>
Benjamin Goldlust<br> 
Dulce Yocelin Moreno Hernandez<br> 
Myriam Schoen<br> 
Frédéric Spagnoli


### Scientific Committee

{%- assign sorted_instructors = site.data.instructors | sort: "name" -%}
{%- for person in sorted_instructors -%}
{%- if person.hidden -%} {%- continue -%} {%- endif -%}
{{ person.name }} ({{ person.affiliation }})<br>
{%- endfor -%}