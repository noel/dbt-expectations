{% macro test_expect_column_values_to_be_between(model, column_name,
                                                   min_value=None,
                                                   max_value=None,
                                                   row_condition=None,
                                                   strictly=False
                                                   ) %}

{% set expression %}
{{ column_name }}
{% endset %}

{{ dbt_expectations.expression_between(model,
                                        expression=expression,
                                        min_value=min_value,
                                        max_value=max_value,
                                        group_by_columns=None,
                                        row_condition=row_condition,
                                        strictly=strictly
                                        ) }}


{% endmacro %}
