:command Cr :normal i <resource name=" " path=" "><CR><request><CR><actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs="" /><CR></and><CR><assign type="value" lhs="object_type" rhs=" " /><CR> <trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR></trigger><CR></actions><CR></request><CR></resource><CR><ESC> 

:command Ca :normal i <actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs="" /><CR></and><CR><assign type="value" lhs="object_type" rhs=" " /><CR> <trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR></trigger><CR></actions><CR><ESC>

:command Cd :normal i <external><CR><action name="nspolicy"/><CR><action name="inspect_rsp" /><CR></external><ESC>

:command Cad :normal i <actions><CR><and><CR><match mtype="nsdef" field="method" key="httpmethods" rhs="" /><CR><match mtype="decode-key" field=""><CR><key name="" order="1"/><CR></match><CR></and><CR><assign type="value" lhs="object_type" rhs=" " /><CR> <trigger name=" " nativeapp-platforms=" "><CR><var name="object_type"/><CR></trigger><CR></actions><CR><ESC>

:command Cst :normal i <info><CR><field name="resp-body" encodingtype="JSON" parsertype="stream"/><CR></info><CR><ESC>

:command Csm :normal i <match mtype="decode-key" field="resp-body"><CR><key name=" " order="1" /><CR></match><CR><ESC>

:command Csa :normal i <assign order="" type="decode-key-value" lhs="" startswith="" endswith="" field="post-data" /><CR><ESC>
