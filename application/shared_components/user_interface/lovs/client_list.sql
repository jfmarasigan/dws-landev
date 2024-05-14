prompt --application/shared_components/user_interface/lovs/client_list
begin
--   Manifest
--     CLIENT LIST
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
 p_id=>wwv_flow_imp.id(104940201609139928720)
,p_lov_name=>'CLIENT LIST'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'LANDEV_CLIENTS'
,p_return_column_name=>'CLIENT_CODE'
,p_display_column_name=>'CLIENT_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'CLIENT_CODE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
