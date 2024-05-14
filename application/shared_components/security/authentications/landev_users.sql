prompt --application/shared_components/security/authentications/landev_users
begin
--   Manifest
--     AUTHENTICATION: landev users
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>91148611334986183999
,p_default_application_id=>211981
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WRKSPCEJDM'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(104983068155637102006)
,p_name=>'landev users'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'landev_authentication'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function landev_authentication (',
'    p_username in varchar2,',
'    p_password in varchar2 )',
'    return boolean',
'is',
'    l_user landev_users.user_name%type := p_username;',
'    l_hash landev_users.password%type;',
'begin',
'    begin',
'        select password',
'          into l_hash',
'          from landev_users',
'         where upper(user_id) = l_user',
'           and is_active = ''Y'';',
'    exception when no_data_found then',
'        l_hash := ''-invalid-'';',
'    end;',
'',
'    return l_hash = p_password;',
'end;',
'',
'procedure post_auth',
'is ',
'    v_err varchar2(4000);',
'begin',
'    select a.user_name, b.user_type_name',
'      into :APP_USERNAME, :APP_USER_TYPE',
'      from landev_users a, ',
'           landev_user_type b',
'     where UPPER(a.user_id) = UPPER(:APP_USER)',
'       and a.user_type_id = b.user_type_id;',
'exception',
'    when others then',
'        v_err := SQLERRM; ',
'        insert into landev_err_logs (err_msg, log_date)',
'        values (v_err, sysdate);',
'end;'))
,p_invalid_session_type=>'LOGIN'
,p_post_auth_process=>'post_auth'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
