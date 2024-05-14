prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
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
 p_id=>52
,p_name=>'Create / Edit User Type'
,p_alias=>'CREATE-EDIT-USER-TYPE'
,p_page_mode=>'MODAL'
,p_step_title=>'Create / Edit User Type'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(102496776480946261455)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240509020117'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106260832814295075238)
,p_plug_name=>'Create / Edit User Type'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(102496791711684261462)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'LANDEV_USER_TYPE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106260837353436075242)
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
 p_id=>wwv_flow_imp.id(106260837737325075242)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(106260837353436075242)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106260839127419075243)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(106260837353436075242)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P52_USER_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106260839532732075243)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(106260837353436075242)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P52_USER_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106260839932047075243)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(106260837353436075242)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P52_USER_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106260833127455075239)
,p_name=>'P52_USER_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106260832814295075238)
,p_item_source_plug_id=>wwv_flow_imp.id(106260832814295075238)
,p_source=>'USER_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106260833587124075239)
,p_name=>'P52_USER_TYPE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(106260832814295075238)
,p_item_source_plug_id=>wwv_flow_imp.id(106260832814295075238)
,p_prompt=>'User Type Name'
,p_source=>'USER_TYPE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(102497730354743261517)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106260837858447075242)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(106260837737325075242)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106260838623692075243)
,p_event_id=>wwv_flow_imp.id(106260837858447075242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(106260840761155075244)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(106260832814295075238)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Create / Edit User Type'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'        insert into landev_user_type (user_type_name, create_user, create_date, update_user, update_date)',
'        values (:P52_USER_TYPE_NAME, :APP_USER, sysdate, :APP_USER, sysdate)',
'        returning user_type_id into :P52_USER_TYPE_ID;',
'    when ''U'' then',
'        update landev_user_type',
'           set user_type_name = :P52_USER_TYPE_NAME,',
'               update_user = :APP_USER,',
'               update_date = sysdate',
'         where user_type_id = :P52_USER_TYPE_ID;',
'    when ''D'' then',
'        delete landev_user_type',
'         where user_type_id = :P52_USER_TYPE_ID;',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>106260840761155075244
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(106260841149312075244)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>106260841149312075244
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(106260840358467075244)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(106260832814295075238)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create / Edit User Type'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>106260840358467075244
);
wwv_flow_imp.component_end;
end;
/
