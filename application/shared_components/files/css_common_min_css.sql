prompt --application/shared_components/files/css_common_min_css
begin
--   Manifest
--     APP STATIC FILES: 211981
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>91148611334986183999
,p_default_application_id=>211981
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WRKSPCEJDM'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E612D47562D666F6F7465722E6A732D737469636B795769646765742D746F67676C657B696E7365742D696E6C696E653A303B696E6C696E652D73697A653A756E73657421696D706F7274616E747D2350305F5345415243485F4649454C445F434F4E54';
wwv_flow_imp.g_varchar2_table(2) := '41494E4552202E742D466F726D2D6C6162656C436F6E7461696E65722C23745F50616765426F64792E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E70302D7365617263682C23745F50616765426F64792E617065782D73';
wwv_flow_imp.g_varchar2_table(3) := '6964652D6E61762E6A732D6E6176436F6C6C6170736564202E75736572696E666F7B646973706C61793A6E6F6E657D2350305F5345415243485F4649454C447B626F726465722D7261646975733A3172656D7D2E6E61762D637573746F6D2D636F6E7461';
wwv_flow_imp.g_varchar2_table(4) := '696E65727B706F736974696F6E3A72656C61746976657D2E6E61762D637573746F6D2D636F6E7461696E6572202E75736572696E666F7B70616464696E673A30203272656D203172656D3B746578742D7472616E73666F726D3A6361706974616C697A65';
wwv_flow_imp.g_varchar2_table(5) := '3B746578742D616C69676E3A63656E7465727D2E6E61762D637573746F6D2D636F6E7461696E6572202E75736572696E666F207370616E7B776F72642D777261703A627265616B2D776F72647D2E6E61762D637573746F6D2D636F6E7461696E6572202E';
wwv_flow_imp.g_varchar2_table(6) := '75736572696E666F2023757365722D747970657B666F6E742D73697A653A2E3772656D7D2E63656E74657265642D696D6167657B646973706C61793A626C6F636B3B6D617267696E2D6C6566743A6175746F3B6D617267696E2D72696768743A6175746F';
wwv_flow_imp.g_varchar2_table(7) := '3B77696474683A3530253B6865696768743A3530253B6261636B67726F756E642D636F6C6F723A7472616E73706172656E743B626F726465722D7261646975733A3530257D2E756E6465722D6E61762D6261727B6D617267696E2D626F74746F6D3A312E';
wwv_flow_imp.g_varchar2_table(8) := '3572656D7D2E726573697A652D696D6167652D72656D7B77696474683A392E3472656D3B6865696768743A392E3472656D7D2E64617368626F6172642D636F756E747B666F6E742D73697A653A3372656D7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(108248576745540869169)
,p_file_name=>'css/common.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
