prompt --application/shared_components/user_interface/lovs/rc_list
begin
--   Manifest
--     RC LIST
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>91148611334986183999
,p_default_application_id=>211981
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WRKSPCEJDM'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(104949927314493005111)
,p_lov_name=>'RC LIST'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'LANDEV_RC'
,p_return_column_name=>'RC_CODE'
,p_display_column_name=>'RC_NAME'
,p_default_sort_column_name=>'RC_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
