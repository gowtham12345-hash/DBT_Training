{% set regions = ['North','South','West'] %}
SELECT
{% for region in regions %}
SUM(CASE WHEN REGION='{{ region }}'
THEN AMOUNT ELSE 0 END)
AS {{ region }}_SALES
{% if not loop.last %},{% endif %}
{% endfor %}
FROM SALES_TRANSACTIONS