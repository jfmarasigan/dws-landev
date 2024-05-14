prompt --application/shared_components/navigation/lists/forms
begin
--   Manifest
--     LIST: Forms
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>91148611334986183999
,p_default_application_id=>211981
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WRKSPCEJDM'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(108276153676810914940)
,p_name=>'Forms'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(108276153808452914941)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Transmittal'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-exchange'
,p_list_text_01=>'Process Transmittal Records'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(108276154234468914941)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Barcode'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-barcode'
,p_list_text_01=>'Barcode'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(108276154625999914941)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Retrieval'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-package'
,p_list_text_01=>'Retrieval description'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(108276155071954914942)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Return'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-redo-arrow'
,p_list_text_01=>'Return description'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
