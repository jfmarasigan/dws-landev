prompt --application/pages/page_10000
begin
--   Manifest
--     PAGE: 10000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>91148611334986183999
,p_default_application_id=>211981
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WRKSPCEJDM'
);
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Forgot Password'
,p_alias=>'FORGOT-PASSWORD'
,p_step_title=>'Forgot Password'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img.t-Login-logo {',
'  width: initial;',
'  height: initial;',
'}',
'',
'.no-focus-outline:focus {',
'  outline: none;',
'}',
'',
'body {',
'  background-image: url(''#APP_FILES#app-bg2.jpg'') !important;',
'  background-position: center;',
'  background-repeat: no-repeat; ',
'  background-size: cover !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(102496765963792261451)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240514020835'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210799858621275505838)
,p_plug_name=>'Forgot Password'
,p_region_name=>'forgot-password'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(102497653172643261486)
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#logo/company-logo.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108218770459210004612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(210799858621275505838)
,p_button_name=>'P10000_BACK_TO_LOGIN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--pill:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_image_alt=>'Back To Login'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108302010454357244208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(210799858621275505838)
,p_button_name=>'P10000_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Password Reset Link'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108218772410703004632)
,p_name=>'P10000_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(210799858621275505838)
,p_item_default=>'select APEX_UTIL.HOST_URL(''SCRIPT'') || SUBSTR(v(''APP_FILES''), INSTR(v(''APP_FILES''), ''files'')) from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(102497729036098261516)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108218772597548004633)
,p_name=>'P10000_WPU'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(210799858621275505838)
,p_item_default=>'select APEX_UTIL.HOST_URL(''SCRIPT'') from dual'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210799860203074505844)
,p_name=>'P10000_EMAIL'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(210799858621275505838)
,p_prompt=>'Email Address'
,p_placeholder=>'E-mail Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(102497728768765261516)
,p_item_icon_css_classes=>'fa-envelope'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(108218770279298004610)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Forgot Passowrd'
,p_process_sql_clob=>'landev_authentication.send_reset_password_link(:P10000_EMAIL);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'A password reset link has been sent to your email'
,p_internal_uid=>108218770279298004610
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(108218770309261004611)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>108218770309261004611
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(108302014574439244213)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10000_USERNAME := apex_authentication.get_login_username_cookie;',
':P10000_REMEMBER := case when :P10000_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>108302014574439244213
);
wwv_flow_imp.component_end;
end;
/
