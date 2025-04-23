 {% macro my_safe_divide(float_1, float_2) %}
     ROUND(SAFE_DIVIDE({{float_1}}, {{float_2}}), 2)
 {% endmacro %}