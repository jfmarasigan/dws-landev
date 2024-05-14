prompt --application/shared_components/user_interface/lovs/user_type_list
begin
--   Manifest
--     USER TYPE LIST
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
 p_id=>wwv_flow_imp.id(106266569036451143676)
,p_lov_name=>'USER TYPE LIST'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'LANDEV_USER_TYPE'
,p_return_column_name=>'USER_TYPE_ID'
,p_display_column_name=>'USER_TYPE_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'USER_TYPE_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
