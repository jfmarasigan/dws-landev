prompt --application/pages/page_10001
begin
--   Manifest
--     PAGE: 10001
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
 p_id=>10001
,p_name=>'Reset Password'
,p_alias=>'RESET-PASSWORD'
,p_step_title=>'Reset Password'
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
'}',
''))
,p_step_template=>wwv_flow_imp.id(102496765963792261451)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240514000906'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108218771735548004625)
,p_plug_name=>'Reset Password'
,p_region_name=>'reset-password-invalid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(102497653172643261486)
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Sorry, your password reset link is invalid. You may request for another one below.</p>'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from landev_pw_token ',
' where token = :RS_TOKEN',
'   and sysdate <= expiry'))
,p_region_image=>'#APP_FILES#logo/company-logo.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(319402543538956782651)
,p_plug_name=>'Reset Password'
,p_region_name=>'reset-password-valid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(102497653172643261486)
,p_plug_display_sequence=>20
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from landev_pw_token ',
' where token = :RS_TOKEN',
'   and sysdate <= expiry'))
,p_region_image=>'#APP_FILES#logo/company-logo.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108218772191698004629)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(108218771735548004625)
,p_button_name=>'P10001_EXPIRED_TO_LOGIN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to Login'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108602685973037276817)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(319402543538956782651)
,p_button_name=>'P10001_BACK_TO_LOGIN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--pill:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_image_alt=>'Back To Login'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108218772332882004631)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(108218771735548004625)
,p_button_name=>'P10001_RESEND_EMAIL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Reset Password Link'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108602685538791276817)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(319402543538956782651)
,p_button_name=>'P10001_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(108218770799226004615)
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108218770536352004613)
,p_name=>'P10001_CONFIRM_PW'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(319402543538956782651)
,p_prompt=>'Confirm New Password'
,p_placeholder=>'Confirm New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(102497728768765261516)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108218770894828004616)
,p_name=>'RS_TOKEN'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108218772246764004630)
,p_name=>'P10001_RESUBMIT_EMAIL'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(108218771735548004625)
,p_placeholder=>'E-mail address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(102497728768765261516)
,p_item_icon_css_classes=>'fa-envelope'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(319402546579507782662)
,p_name=>'P10001_PW'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(319402543538956782651)
,p_prompt=>'New Password'
,p_placeholder=>'New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(102497728768765261516)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108218771500098004623)
,p_name=>'Submit'
,p_event_sequence=>10
,p_condition_element=>'RS_TOKEN'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(102496753675002261445)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108218771668523004624)
,p_event_id=>wwv_flow_imp.id(108218771500098004623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'RS_TOKEN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(108602686823305276819)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Reset Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_user      varchar2(10);',
'begin',
'    begin',
'        select user_id',
'          into v_user',
'          from landev_pw_token',
'         where token = :RS_TOKEN',
'           and sysdate <= expiry;',
'    exception',
'        when no_data_found then',
'            raise_application_error(-20001, ''Sorry, you password reset token is invalid.'');',
'    end;',
'',
'    update landev_users ',
'       set password = :P10001_PW,',
'           update_date = sysdate,',
'           update_user = v_user',
'     where user_id = v_user;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(108602685538791276817)
,p_process_success_message=>'Update successful!'
,p_internal_uid=>108602686823305276819
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(108602687295256276819)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>108602687295256276819
);
wwv_flow_imp.component_end;
end;
/
