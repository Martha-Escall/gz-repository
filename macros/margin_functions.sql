{% macro margin_percent(turnover, purchase_cost, precision=2) %}
   ROUND( SAFE_DIVIDE( ({{ turnover }} - {{ purchase_cost }}) , {{ turnover }} ) , {{ precision }})
{% endmacro %}

-- macros/margin_functions.sql

{% macro margin(turnover, purchase_cost) %}
select
  ({{turnover}} - {{purchase_cost}}) / {{turnover}} as product_margin
{% endmacro %}
