{% macro combine_columns(first_name, last_name) %}
        {{ first_name }} || ' ' || {{ last_name }}
{% endmacro %}