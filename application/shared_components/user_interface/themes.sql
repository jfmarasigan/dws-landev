prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 211981
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>91148611334986183999
,p_default_application_id=>211981
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WRKSPCEJDM'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(102497821547439261618)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(102496781686928261458)
,p_default_dialog_template=>wwv_flow_imp.id(102496776480946261455)
,p_error_template=>wwv_flow_imp.id(102496765963792261451)
,p_printer_friendly_template=>wwv_flow_imp.id(102496781686928261458)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(102496765963792261451)
,p_default_button_template=>wwv_flow_imp.id(102497731596351261518)
,p_default_region_template=>wwv_flow_imp.id(102497658344513261488)
,p_default_chart_template=>wwv_flow_imp.id(102497658344513261488)
,p_default_form_template=>wwv_flow_imp.id(102497658344513261488)
,p_default_reportr_template=>wwv_flow_imp.id(102497658344513261488)
,p_default_tabform_template=>wwv_flow_imp.id(102497658344513261488)
,p_default_wizard_template=>wwv_flow_imp.id(102497658344513261488)
,p_default_menur_template=>wwv_flow_imp.id(102497670726368261492)
,p_default_listr_template=>wwv_flow_imp.id(102497658344513261488)
,p_default_irr_template=>wwv_flow_imp.id(102497648570905261484)
,p_default_report_template=>wwv_flow_imp.id(102497696588023261502)
,p_default_label_template=>wwv_flow_imp.id(102497729036098261516)
,p_default_menu_template=>wwv_flow_imp.id(102497733149346261518)
,p_default_calendar_template=>wwv_flow_imp.id(102497733290309261519)
,p_default_list_template=>wwv_flow_imp.id(102497712916905261509)
,p_default_nav_list_template=>wwv_flow_imp.id(102497724703898261514)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(102497724703898261514)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(102497719341651261512)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(102496794543346261463)
,p_default_dialogr_template=>wwv_flow_imp.id(102496791711684261462)
,p_default_option_label=>wwv_flow_imp.id(102497729036098261516)
,p_default_required_label=>wwv_flow_imp.id(102497730354743261517)
,p_default_navbar_list_template=>wwv_flow_imp.id(102497718965359261511)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>72
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
