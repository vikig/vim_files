" ------------------ RESOURCE ------------------------
:command Cr :normal i <resource name=" " path=" "><CR><request><CR><actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs=""/><CR></and><CR><assign type="value" lhs="object_type" rhs=" "/><CR><trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR><var name="from_user"/><CR></trigger><CR></actions><CR></request><CR></resource><CR><ESC> 

" resource mime
:command Crm :normal i <resource name=" " path=" "><CR><request><CR><info><CR><field name="post-data" encodingtype="MIME" parsertype="mimestream"/><CR></info><CR><actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs=""/><CR><match mtype="mime-kvp" field="post-data" key="" rhs=""/><CR></and><CR><assign type="value" lhs="object_type" rhs=" "/><CR><assign type="mime-get-value" lhs="" field="post-data"/><CR><trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR><var name="from_user"/><CR></trigger><CR></actions><CR></request><CR></resource><CR><ESC> 

"resource json
:command Crj :normal i <resource name=" " path=" "><CR><request><CR><info><CR><field name="post-data" encodingtype="JSON" parsertype="jsonstream"/><CR></info><CR><actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs=""/><CR><match mtype="struct-search-keys" searchkeys=""  key="" field="postdata-key"/><CR></and><CR><assign type="value" lhs="object_type" rhs=" "/><CR><assign order="1" type="struct-get-value" searchkeys="" lhs="object" field="postdata-key" key=""/><CR><trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR><var name="from_user"/><CR></trigger><CR></actions><CR></request><CR></resource><CR><ESC> 

"resource gwt
:command Crg :normal i <resource name=" " path=" "><CR><request><CR><info><CR><field name="post-data" encodingtype="GWT" parsertype="gwtstream"/><CR></info><CR><actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs=""/><CR><match mtype="gwt-strstr" field="post-data" rhs="" starts-at="1"/><CR></and><CR><assign type="value" lhs="object_type" rhs=" "/><CR><assign type="gwt-get-value" lhs="" field="post-data" dist-from-match=" "/><CR><trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR><var name="from_user"/><CR></trigger><CR></actions><CR></request><CR></resource><CR><ESC> 

"resource stream
:command Crs :normal i <resource name=" " path=" "><CR><request><CR><info><CR><field name="post-data" encodingtype="TEXT" parsertype="stream"/><CR></info><CR><actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs=""/><CR><match mtype="decode-key" field="resp-body"><CR><key name=" " order="1"/><CR></match><CR></and><CR><assign type="value" lhs="object_type" rhs=" "/><CR><assign order="" type="decode-key-value" lhs="" startswith="" endswith="" field="post-data"/><CR><trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR><var name="from_user"/><CR></trigger><CR></actions><CR></request><CR></resource><CR><ESC> 

" --------------  ACTION BLOCKS -------------------
:command Ca :normal i <actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs=""/><CR></and><CR><assign type="value" lhs="object_type" rhs=" "/><CR> <trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR><var name="from_user"/><CR></trigger><CR></actions><CR><ESC>

"action block for json
:command Caj :normal i <actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs=""/><CR><match mtype="struct-parsing-done" field="post-data"/><CR></and><CR><assign type="value" lhs="object_type" rhs=" "/><CR> <trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR><var name="from_user"/><CR></trigger><CR></actions><CR><ESC>

"action block for mime
:command Cam :normal i <actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs=""/><CR><match mtype="mime-parsing-done" field="post-data"/><CR></and><CR><assign type="value" lhs="object_type" rhs=" "/><CR> <trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR><var name="from_user"/><CR></trigger><CR></actions><CR><ESC>

"action block for gwt
:command Cag :normal i <actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs=""/><CR><match mtype="gwt-parsing-done" field="post-data"/><CR></and><CR><assign type="value" lhs="object_type" rhs=" "/><CR> <trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR><var name="from_user"/><CR></trigger><CR></actions><CR><ESC>

" ----------------------- END ---------------------------------------

"DLP insert
:command Cd :normal i <external><CR><action name="nspolicy"/><CR><action name="inspect_rsp"/><CR></external><ESC>

:command Cad :normal i <actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs=""/><CR><match mtype="decode-key" field=""><CR><key name="" order="1"/><CR></match><CR></and><CR><assign type="value" lhs="object_type" rhs=" "/><CR> <trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR></trigger><CR></actions><CR><ESC>

" ----------------- STREAM -----------------------------------
" TOP
:command Cst :normal i <info><CR><field name="post-data" encodingtype="TEXT" parsertype="stream"/><CR></info><CR><ESC>
:command Cstj :normal i <info><CR><field name="post-data" encodingtype="JSON" parsertype="jsonstream"/><CR></info><CR><ESC>
:command Cstg :normal i <info><CR><field name="post-data" encodingtype="GWT" parsertype="gwtstream"/><CR></info><CR><ESC>
:command Cstm :normal i <info><CR><field name="post-data" encodingtype="MIME" parsertype="mimestream"/><CR></info><CR><ESC>

" MATCH 
:command Csms :normal i <match mtype="decode-key" field="resp-body"><CR><key name=" " order="1"/><CR></match><CR><ESC>
:command Csmm :normal i <match mtype="mime-kvp" field="post-data" key="" rhs=""/><CR><ESC>
:command Csmg :normal i <match mtype="gwt-strstr" field="post-data" rhs="" starts-at="1"/><CR><ESC>
:command Csmj :normal i <match mtype="struct-search-keys" searchkeys=""  key="" field="postdata-key"/><CR><ESC>

" ASSIGN
:command Csas :normal i <assign order="" type="decode-key-value" lhs="" startswith="" endswith="" field="post-data"/><CR><ESC>
:command Csam :normal i <assign type="mime-get-value" lhs="" field="post-data"/><CR><ESC>
:command Csag :normal i <assign type="gwt-get-value" lhs="" field="post-data" dist-from-match=" "/><CR><ESC>
:command Csaj :normal i <assign order="1" type="struct-get-value" searchkeys="" lhs="object" field="postdata-key" key=""/><CR><ESC>

" ------------------- STREAM END ---------------------

" DICTIONARY LOOKUP
:command Cdl :normal i <dict action="lookup" key="object_id" val="object"/><CR><ESC>

" DICTIONARY UPDATE
:command Cdu :normal i <dict action="update" key="object_id" val="object"/><CR><ESC>

