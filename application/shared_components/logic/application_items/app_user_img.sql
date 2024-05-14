prompt --application/shared_components/logic/application_items/app_user_img
begin
--   Manifest
--     APPLICATION ITEM: APP_USER_IMG
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>91148611334986183999
,p_default_application_id=>211981
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WRKSPCEJDM'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(106509144084936830067)
,p_name=>'APP_USER_IMG'
,p_protection_level=>'I'
,p_version_scn=>15528523923928
);
wwv_flow_imp.component_end;
end;
/
