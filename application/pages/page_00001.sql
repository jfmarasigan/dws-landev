prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD1'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-CardView-item {',
'    border-left: 0.75rem #02b423 solid;',
'}',
'',
'.a-CardView-mainContent {',
'    font-size: 1.5rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240513040715'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204998938937951162204)
,p_plug_name=>'Dashboard'
,p_region_name=>'dashboard-cards'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleC'
,p_plug_template=>wwv_flow_imp.id(102496798865958261465)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Accepted'' label,',
'       50 count',
'  from dual',
'union all',
'select ''Rejected'' label,',
'       20 count',
'  from dual',
'union all',
'select ''For Destruction'' label,',
'       8 count',
'  from dual',
'       '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>4
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(102500427669714347016)
,p_region_id=>wwv_flow_imp.id(204998938937951162204)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_card_css_classes=>'h200'
,p_title_adv_formatting=>false
,p_title_column_name=>'LABEL'
,p_title_css_classes=>'h100'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>'<div class="u-textEnd u-bold dashboard-count">&COUNT!HTML.</div>'
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>'<div class="u-textEnd">boxes</div>'
,p_media_adv_formatting=>false
);
wwv_flow_imp.component_end;
end;
/
