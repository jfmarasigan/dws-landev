prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240510070503'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104956721683310072044)
,p_plug_name=>'Nav menu info and search'
,p_region_name=>'nav-menu-addt'
,p_region_css_classes=>'under-nav-bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(102496791711684261462)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="nav-custom-container">',
'    <!-- <img id="P0_IMG" src="&APP_USER_IMG." alt="" class="centeredimage" style=""> -->',
'    <div class="userinfo">',
'        <span id="user-name">&APP_USERNAME!HTML.</span>',
'        <br/>',
'        <span id="user-type">&APP_USER_TYPE!HTML.</span>',
'    </div>',
'</div>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106430508217817147019)
,p_plug_name=>'Nav menu image'
,p_region_name=>'nav-menu-image'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(102497658344513261488)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106430508392260147020)
,p_name=>'P0_USER_IMAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106430508217817147019)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_css_classes=>'centered-image'
,p_field_template=>wwv_flow_imp.id(102497728912292261516)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_image',
'  from landev_users',
' where upper(user_id) = upper(:APP_USER)'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106430509609422147033)
,p_name=>'P0_SEARCH_FIELD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104956721683310072044)
,p_placeholder=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'p0-search'
,p_colspan=>10
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(102497728912292261516)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-none:margin-bottom-none'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104956721739232072045)
,p_name=>'Javascripts on render'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104956721889717072046)
,p_event_id=>wwv_flow_imp.id(104956721739232072045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// add image, user info, and search bar to nav menu',
'$("#nav-menu-addt").prependTo("#t_TreeNav");',
'$("#nav-menu-image").prependTo("#t_TreeNav");',
'',
'// change icon on sub menu click',
'$(''.is-collapsible .is-selected.is-current span'').addClass(''fa-circle'').removeClass(''fa-circle-8-8'');',
'',
'// tooltip for collapsed nav menu',
'// if ($("#t_TreeNav").treeView && $("#t_TreeNav").tooltip) {',
'//     $("#t_TreeNav").treeView("option", "tooltip", {',
'//         content: function(cb, node) {',
'//             return node.label;',
'//         }',
'//     } );',
'//     $("#t_TreeNav").tooltip("option", "items", ".a-TreeView-content");',
'// }',
'',
'// Workaround for nav menu click event for sub menu',
'$("#t_TreeNav").on("treeviewactivatenode", function(e, ui) {',
'    var n$ = $(e.originalEvent.target).closest(".a-TreeView-content");',
'    if (ui.nodes.length > 0 && ui.nodes[0].link === "") {',
'        if (n$.parent().hasClass("is-expandable")) {',
'            $(this).treeView("expand", n$)',
'        } else if (n$.parent().hasClass("is-collapsible")) {',
'            $(this).treeView("collapse", n$)',
'        }',
'    }',
'});',
''))
);
wwv_flow_imp.component_end;
end;
/
