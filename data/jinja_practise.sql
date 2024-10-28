{#

{% for i in range(10) %}

    select {{ i }} as number
    {% if not loop.last %}
        union all
    {% endif %}

{% endfor %}

#}

{# 
{% set my_string = 'my string' %}

This is {{my_string}}!

{% set my_animals = ['lemur', 'wolf', 'panther', 'tadigrade'] %}

{{ my_animals[0] }}

{% for animal in my_animals %}

    My favorite animal is the {{ animal }}

{% endfor %}


{% set temperature = 45 %}

{% if temperature < 65 %}
    Time for a cappuccino!
{% else %}
    Time for a cold brew!
{% endif %}



{%- set foods = ['carrot', 'hotdog', 'cucumber', 'bell pepper'] -%}

{%- for food in foods -%}
    {%- if food == 'hotdog' -%}
        {%- set food_type = 'snack' -%}
    {%- else -%}
        {%- set food_type = 'vegetable' -%}
    {%- endif -%}

    The humble {{ food }} is my favorite {{ food_type }}

{% endfor %}

#}

{%- set websters_dict = {
    'word': 'data',
    'speech_part': 'noun',
    'definition': 'if you know you know'
} -%}

{{ websters_dict['word'] }} ({{ websters_dict['speech_part'] }}): defined as "{{ websters_dict['definition'] }}"
