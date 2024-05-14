prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 211981
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>91148611334986183999
,p_default_application_id=>211981
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WRKSPCEJDM'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(102497848284398261634)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(108202681461887310600)
,p_group_name=>'Maintenance Modules'
);
wwv_flow_imp.component_end;
end;
/
