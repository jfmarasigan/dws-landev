prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Transmittal - Create New Entry'
,p_alias=>'TRANSMITTAL-CREATE-NEW-ENTRY'
,p_page_mode=>'MODAL'
,p_step_title=>'Select your preferred option'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240507072923'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104169308292360648014)
,p_plug_name=>'Options'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(102497658344513261488)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104169308358616648015)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104169308292360648014)
,p_button_name=>'P9_MANUAL_ENTRY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Manual Entry'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104169308492500648016)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(104169308292360648014)
,p_button_name=>'P9_UPLOAD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload a file'
,p_grid_new_row=>'N'
,p_grid_column_span=>6
,p_grid_column=>7
);
wwv_flow_imp.component_end;
end;
/
