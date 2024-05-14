prompt --workspace/credentials/app_211981_push_notifications_credentials
begin
--   Manifest
--     CREDENTIAL: App 211981 Push Notifications Credentials
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>91148611334986183999
,p_default_application_id=>211981
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WRKSPCEJDM'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(107041143397122749931)
,p_name=>'App 211981 Push Notifications Credentials'
,p_static_id=>'App_211981_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
