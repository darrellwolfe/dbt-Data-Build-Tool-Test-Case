{% macro classify_district(neighborhood) %}
case
    when {{ neighborhood }} >= 9000 then 'Manufactured_Homes'
    when {{ neighborhood }} >= 6003 then 'District_6'
    when {{ neighborhood }} = 6002 then 'Manufactured_Homes'
    when {{ neighborhood }} = 6001 then 'District_6'
    when {{ neighborhood }} = 6000 then 'Manufactured_Homes'
    when {{ neighborhood }} >= 5003 then 'District_5'
    when {{ neighborhood }} = 5002 then 'Manufactured_Homes'
    when {{ neighborhood }} = 5001 then 'District_5'
    when {{ neighborhood }} = 5000 then 'Manufactured_Homes'
    when {{ neighborhood }} >= 4000 then 'District_4'
    when {{ neighborhood }} >= 3000 then 'District_3'
    when {{ neighborhood }} >= 2000 then 'District_2'
    when {{ neighborhood }} >= 1021 then 'District_1'
    when {{ neighborhood }} = 1020 then 'Manufactured_Homes'
    when {{ neighborhood }} >= 1001 then 'District_1'
    when {{ neighborhood }} = 1000 then 'Manufactured_Homes'
    when {{ neighborhood }} >= 451 then 'Commercial'
    when {{ neighborhood }} = 450 then 'Specialized_Cell_Towers'
    when {{ neighborhood }} >= 1 then 'Commercial'
    when {{ neighborhood }} = 0 then 'Other (PP, OP, NA, Error)'
    else null
end
{% endmacro %}
