{% set  name = 'DHRUV' -%}

{%- set location ='BANG' %}

I am {{name}} based in {{location}} 

{% set tools = ['dbt','Snowflake','Databrics'] -%}
Currently we are working with {{tools[0]}} and {{tools[1]}}

{% for tool in tools %}
I do traning on {{tool}}
{%- if tool =='ReDatabrics' %}
"ThAts it"
{% else -%}
and 
{% endif  -%}
{% if loop.last -%}"Thats it" {% endif  -%}
{%- endfor %}