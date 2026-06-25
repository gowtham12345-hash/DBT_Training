{% macro calculate_tax(column_name) %}
 
({{ column_name }} * 0.18)
 
{% endmacro %}
 