prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_name=>'Create / Edit User'
,p_alias=>'CREATE-EDIT-USER'
,p_page_mode=>'MODAL'
,p_step_title=>'Create / Edit User'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240514031604'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106291898944840469784)
,p_plug_name=>'Create / Edit User'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(102496791711684261462)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_ID,',
'       USER_NAME,',
'       EMAIL_ADDRESS,',
'       IS_ACTIVE,',
'       USER_TYPE_ID,',
'       nvl(USER_IMAGE, (select file_content',
'  from apex_application_static_files',
' where application_id = SYS_CONTEXT(''APEX$SESSION'', ''APP_ID'')',
'   and file_name = ''misc/blank-user.png'')) USER_IMAGE',
'  from LANDEV_USERS',
' where upper(user_id) = upper(:P54_USER_ID)'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P54_USER_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106291906273815469790)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(102496794543346261463)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(105677495432609223526)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(106291906273815469790)
,p_button_name=>'MODULE_ACCESS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(102497731655745261518)
,p_button_image_alt=>'Module Access'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-lock-user'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106291906637837469790)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(106291906273815469790)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106291908023173469791)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(106291906273815469790)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P54_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106291908431085469791)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(106291906273815469790)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P54_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106291908819131469792)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(106291906273815469790)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P54_USER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106291899210433469785)
,p_name=>'P54_USER_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_item_source_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_prompt=>'User ID'
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(102497729036098261516)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106291899628177469785)
,p_name=>'P54_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_item_source_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Name'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(102497730354743261517)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106291900440499469786)
,p_name=>'P54_EMAIL_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_item_source_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_prompt=>'Email Address'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_field_template=>wwv_flow_imp.id(102497730354743261517)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106291900848678469786)
,p_name=>'P54_IS_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_item_source_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_prompt=>'Active User'
,p_source=>'IS_ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(102497729036098261516)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106291902802321469787)
,p_name=>'P54_USER_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_item_source_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_prompt=>'User Type'
,p_source=>'USER_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USER TYPE LIST'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(102497729036098261516)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106430507506149147012)
,p_name=>'P54_IMG_UPLOAD'
,p_source_data_type=>'BLOB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_item_source_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_source=>'USER_IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(102497729036098261516)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_11=>'image/*'
,p_attribute_12=>'DROPZONE_BLOCK'
,p_attribute_15=>'1024'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106430508410252147021)
,p_name=>'P54_USER_IMAGE'
,p_source_data_type=>'BLOB'
,p_is_query_only=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_item_source_plug_id=>wwv_flow_imp.id(106291898944840469784)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select file_content',
'  from apex_application_static_files',
' where application_id = SYS_CONTEXT(''APEX$SESSION'', ''APP_ID'')',
'   and file_name = ''misc/blank-user.png'''))
,p_item_default_type=>'SQL_QUERY'
,p_source=>'USER_IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_css_classes=>'resize-image-rem'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(102497729036098261516)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-none:margin-right-none'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106291906754474469790)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(106291906637837469790)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106291907520143469791)
,p_event_id=>wwv_flow_imp.id(106291906754474469790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106430508961115147026)
,p_name=>'Image uploaded'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_IMG_UPLOAD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106430509073012147027)
,p_event_id=>wwv_flow_imp.id(106430508961115147026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var src = URL.createObjectURL(this.triggeringElement.files[0]);',
'var imgElem = document.getElementById(''P54_USER_IMAGE'');',
'imgElem.src = src;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(106291909602337469792)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(106291898944840469784)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Create / Edit User'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vpass varchar2(30);',
'    img   blob;',
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'        begin',
'            select blob_content',
'              into img',
'              from apex_application_temp_files',
'             where name = :P54_IMG_UPLOAD;',
'        exception ',
'            when no_data_found then',
'                img := null;',
'        end;',
'',
'        vpass := random_str(15);',
'',
'        insert into landev_users ( user_id, user_name, password, email_address, user_image,',
'            user_type_id, create_user, create_date, update_user, update_date )',
'        values ( :P54_USER_ID, :P54_USER_NAME, vpass, :P54_EMAIL_ADDRESS, img,',
'            :P54_USER_TYPE_ID, :APP_USER, sysdate, :APP_USER, sysdate )',
'        returning user_id into :P54_USER_ID;',
'    when ''U'' then',
'        begin',
'            select blob_content',
'              into img',
'              from apex_application_temp_files',
'             where name = :P54_IMG_UPLOAD;',
'        exception ',
'            when no_data_found then',
'                img := null;',
'        end;',
'',
'        update landev_users',
'           set user_name = :P54_USER_NAME,',
'               -- password = :P54_PASSWORD,',
'               email_address = :P54_EMAIL_ADDRESS,',
'               user_type_id = :P54_USER_TYPE_ID,',
'               is_active = :P54_IS_ACTIVE,',
'               update_user = :APP_USER,',
'               update_date = sysdate,',
'               user_image = nvl(img, user_image)',
'         where user_id = :P54_USER_ID;',
'',
'        if :APP_USER = :P54_USER_ID and :APP_USERNAME != :P54_USER_NAME then',
'            :APP_USERNAME := :P54_USER_NAME;',
'        end if;',
'    when ''D'' then',
'        delete landev_users',
'         where user_id = :P54_USER_ID;',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Record saved successfully!'
,p_internal_uid=>106291909602337469792
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(106291910055239469792)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>106291910055239469792
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(106291909285861469792)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(106291898944840469784)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create / Edit User'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>106291909285861469792
);
wwv_flow_imp.component_end;
end;
/
