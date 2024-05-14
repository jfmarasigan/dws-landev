prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_name=>'User Types'
,p_alias=>'USER-TYPES'
,p_step_title=>'User Types Maintenance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(108202681461887310600)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240513003531'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106260842114930075246)
,p_plug_name=>'User Types'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(102497648570905261484)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'LANDEV_USER_TYPE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'User Types'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(106260842281664075246)
,p_name=>'User Types'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'USER_TYPE_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:RP:P52_USER_TYPE_ID:\#USER_TYPE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_internal_uid=>106260842281664075246
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106260842660979075247)
,p_db_column_name=>'USER_TYPE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'User Type ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106260843041881075247)
,p_db_column_name=>'USER_TYPE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User Type Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106260843452047075248)
,p_db_column_name=>'CREATE_USER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Create User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106260843845148075248)
,p_db_column_name=>'CREATE_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106260844244548075248)
,p_db_column_name=>'UPDATE_USER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Update User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106260844637941075248)
,p_db_column_name=>'UPDATE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(106261243360769363026)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1062612434'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'USER_TYPE_ID:USER_TYPE_NAME:CREATE_USER:CREATE_DATE:UPDATE_USER:UPDATE_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106260846711415075250)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(102497670726368261492)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(102496754266051261446)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(102497733149346261518)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106260845136728075249)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(106260842114930075246)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(102497731596351261518)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:52::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106260845497621075249)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(106260842114930075246)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106260845933561075249)
,p_event_id=>wwv_flow_imp.id(106260845497621075249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(106260842114930075246)
);
wwv_flow_imp.component_end;
end;
/
