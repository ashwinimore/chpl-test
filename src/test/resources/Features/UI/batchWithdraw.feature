Feature: Batch update of Certification Status to 'Withdrawn by Developer'
		OCD-2134 - Batch update Certification Status to 'Withdrawn by Developer' for a set of Cerner and Intermountain Healthcare listings
		OCD-2357 - Batch Withdraw Request - Cerner (ICSA final set of listings)
		
Background: User is on search page and 'Withdrawn by Developer' filter option is checked
	Given I am on CHPL search page
	And I look at Certification Status options
	And I apply "Withdrawn by Developer" filter

@Regression
Scenario Outline: Verify that certification status is updated to 'Withdrawn by Developer' for given listings after batch update
	When I search for a listing with CHPL ID "<CHPL_ID>"
	Then the certification status of the listing shows as "Withdrawn by Developer"
	Examples:
    |CHPL_ID|
    |CHP-024522|
    |14.07.07.1734.HEI1.03.01.1.160623|
    |CHP-022555|
    |14.03.07.1221.HEI3.02.01.1.160711|
    |CHP-028479|
    |CHP-028571|
    |CHP-029222|
    |14.03.07.1221.HEI2.01.01.1.160711|
    |14.07.07.1221.FI01.22.01.1.171109|
    |15.07.07.1221.AN03.01.00.1.170705|
    |15.07.07.1221.P201.01.00.0.170619|
	

@Acceptance
Scenario Outline: Verify that certification status is updated to 'Withdrawn by Developer' for Intermountain Healthcare listings after batch update	
	When I search for a listing with CHPL ID "<CHPL_ID>"
	Then the certification status of the listing shows as "Withdrawn by Developer"
	Examples:
    |CHPL_ID|
    |CHP-024522|
    |CHP-024519|
	|CHP-024741|
	|CHP-024742|
	|CHP-023341|
	|CHP-023343|
	|CHP-023344|
	|CHP-023345|
	|CHP-029138|
	|CHP-029141|
	|CHP-029145|
	|CHP-029146|
	|CHP-029147|
	|CHP-029143|
	|CHP-029134|
	|CHP-029148|
	|CHP-029151|
	|CHP-029152|
	|CHP-025082|
	|CHP-025083|
	|CHP-025087|
	|CHP-025088|
	|CHP-025089|
	|CHP-025090|
	|CHP-023641|
	|CHP-023643|
	|CHP-023644|
	|CHP-023645|
	|CHP-023642|
	|CHP-023646|
	|CHP-023647|
	|CHP-023648|
	|CHP-023253|
	|CHP-023254|
	|CHP-023257|
	|CHP-023258|
	|CHP-022458|
	|CHP-022459|
	|CHP-028656|
	|CHP-028657|
	|CHP-028658|
	|CHP-028659|
	|CHP-028660|
	|CHP-028661|
	|CHP-028663|
	|CHP-028664|
	|CHP-028665|
	|CHP-028667|
	|CHP-028668|
	|CHP-028669|
	|CHP-028670|
	|CHP-028671|
	|CHP-028672|
	|CHP-028673|
	|CHP-028674|
	|CHP-028675|
	|CHP-028676|
	|CHP-028677|
	|CHP-028678|
	|CHP-028679|
	|14.07.07.1734.HEI1.03.01.1.160623|
	|14.07.07.1734.HEI1.01.01.1.160623|
	|14.07.07.1734.HEA1.01.01.1.160623|
	|14.07.07.1734.HEA1.03.01.1.160623|
	|14.07.07.1734.HEA1.02.01.1.160623|
	|14.07.07.1734.HEI1.02.01.1.160623|
	
Scenario Outline: Verify that certification status is updated to 'Withdrawn by Developer' for Cerner listings after batch update
	Given I am on CHPL search page
	When I search for a listing with CHPL ID "<CHPL_ID>"
	Then the certification status of the listing shows as "Withdrawn by Developer"
	Examples:
|CHPL_ID|
    |CHP-021411|
	|CHP-021717|
	|CHP-023122|
	|CHP-023131|
	|CHP-024156|
	|CHP-023325|
	|CHP-023330|
	|CHP-024175|
	|CHP-022560|
	|CHP-023189|
	|CHP-023197|
	|CHP-021673|
	|CHP-022090|
	|CHP-021866|
    |CHP-028580|
	|CHP-028583|
	|CHP-028693|
	|CHP-028696|
	|CHP-029203|
	|CHP-029200|
	|14.03.07.1221.HEI3.02.01.1.160711|
	|14.03.07.1221.HEA3.02.01.1.160711|
	|14.03.07.1221.HEA3.04.01.1.160711|
	|14.03.07.1221.HEI3.04.01.1.160711|
	|CHP-025191|
	|CHP-025200|
	|CHP-025395|
	|CHP-025387|
	|CHP-025464|
    |CHP-024960|
	|CHP-028470|
	|CHP-023319|
	|CHP-028466|
	|CHP-023130|
	|CHP-024153|
	|CHP-023135|
	|CHP-023327|
	|CHP-024170|
	|CHP-024703|
	|CHP-021128|
	|CHP-024709|
	|CHP-023228|
	|CHP-023230|
	|CHP-022555|
    |14.07.07.1221.POA6.02.01.1.161012|
	|14.07.07.1221.POI7.02.01.0.161012|
	|14.07.07.1221.POI7.03.01.0.161012|
	|14.07.07.1221.POA6.03.01.1.161012|
	|14.07.07.1221.POA6.04.01.1.161012|
	|14.07.07.1221.POI7.04.01.0.161012|
	|14.07.07.1221.POA6.05.01.1.161012|
	|14.07.07.1221.POI7.05.01.0.161012|
	|14.07.07.1221.POI8.06.01.0.170120|
	|14.07.07.1221.POA8.06.01.1.170120|
	|14.07.07.1221.POA8.07.01.1.170120|
	|14.07.07.1221.POI8.07.01.0.170120|
	|14.07.07.1221.POA8.08.01.1.170313|
	|14.07.07.1221.POI8.08.01.0.170313|
	|14.07.07.1221.POI8.09.01.0.170313|
    |14.03.07.1222.FIAM.99.01.1.140818|
	|15.07.07.1221.FI01.08.01.1.171117|
	|15.07.07.1221.PO05.08.01.1.171117|
	|15.07.07.1221.SO05.01.00.1.171117|
	|15.07.07.1221.SO05.01.01.1.171117|
	|14.03.07.1221.FIA1.01.01.1.160711|
	|14.03.07.1221.FIA1.01.01.1.160711|
	|14.03.07.1221.FIA1.03.01.1.160711|
	|14.03.07.1221.FIA2.01.01.1.160711|
	|14.03.07.1221.FIA2.03.01.1.160711|
	|14.03.07.1221.FII1.01.01.1.160711|
	|14.03.07.1221.FII1.03.01.1.160711|
	|14.03.07.1221.FII3.01.01.1.160711|
	|14.03.07.1221.FII3.03.01.1.160711|
	|14.03.07.1221.HEA2.01.01.1.160711|
	|14.03.07.1221.HEA2.03.01.1.160711|
	|14.03.07.1221.HEA3.01.01.1.160711|
	|14.03.07.1221.HEA3.03.01.1.160711|
	|14.03.07.1221.HEI2.01.01.1.160711|
	|14.03.07.1221.HEI2.03.01.1.160711|
	|14.03.07.1221.HEI3.01.01.1.160711|
	|14.03.07.1221.HEI3.03.01.1.160711|
	|14.03.07.1221.POA5.01.01.1.160711|
	|14.03.07.1221.POA5.03.01.1.160711|
	|14.03.07.1221.POI2.01.01.1.160711|
	|14.03.07.1221.POI2.03.01.1.160711|
	|14.03.07.1221.POI3.01.01.1.160711|
	|14.03.07.1221.POI3.03.01.1.160711|
	|14.03.07.1221.POI5.01.01.1.160711|
	|14.03.07.1221.POI5.03.01.1.160711|
	|14.07.07.1221.FI01.21.01.1.171109|
	|14.07.07.1221.FI01.21.01.1.171110|
	|14.07.07.1221.FI01.22.01.1.171109|
	|14.07.07.1221.FI01.22.01.1.171110|
	|14.07.07.1221.FI01.23.01.1.171109|
	|14.07.07.1221.FI01.23.01.1.171110|
	|14.07.07.1221.FI02.20.01.1.171109|
	|14.07.07.1221.FI02.21.01.1.171109|
	|14.07.07.1221.FI02.22.01.1.171109|
	|14.07.07.1221.FI03.19.01.1.171110|
	|14.07.07.1221.FI03.20.01.1.171110|
	|14.07.07.1221.FI03.21.01.1.171109|
	|14.07.07.1221.FIA1.04.01.1.160906|
	|14.07.07.1221.FIA1.04.01.1.161108|
	|14.07.07.1221.FIA1.04.01.1.161227|
	|14.07.07.1221.FIA1.08.01.1.170308|
	|14.07.07.1221.FIA1.10.01.1.170320|
	|14.07.07.1221.FIA1.17.01.1.170705|
	|14.07.07.1221.FIA1.19.01.1.170727|
	|14.07.07.1221.FIA1.20.01.1.170728|
	|14.07.07.1221.FIA1.24.01.1.171206|
	|14.07.07.1221.FIA1.25.01.1.171206|
	|14.07.07.1221.FIA2.04.01.1.160906|
	|14.07.07.1221.FIA2.04.01.1.161108|
	|14.07.07.1221.FIA2.04.01.1.161227|
	|14.07.07.1221.FIA2.08.01.1.170308|
	|14.07.07.1221.FIA2.10.01.1.170320|
	|14.07.07.1221.FIA2.16.01.1.170705|
	|14.07.07.1221.FIA2.18.01.1.170727|
	|14.07.07.1221.FIA2.19.01.1.170728|
	|14.07.07.1221.FIA2.23.01.1.171206|
	|14.07.07.1221.FIA2.24.01.1.171206|
	|14.07.07.1221.FII1.04.01.1.160906|
	|14.07.07.1221.FII1.04.01.1.161108|
	|14.07.07.1221.FII1.04.01.1.161227|
	|14.07.07.1221.FII1.08.01.1.170308|
	|14.07.07.1221.FII1.10.01.1.170320|
	|14.07.07.1221.FII1.17.01.1.170705|
	|14.07.07.1221.FII1.19.01.1.170727|
	|14.07.07.1221.FII1.20.01.1.170728|
	|14.07.07.1221.FII1.24.01.1.171206|
	|14.07.07.1221.FII1.25.01.1.171206|
	|14.07.07.1221.FII3.04.01.1.160906|
	|14.07.07.1221.FII3.04.01.1.161108|
	|14.07.07.1221.FII3.04.01.1.161227|
	|14.07.07.1221.FII3.08.01.1.170308|
	|14.07.07.1221.FII3.09.01.1.170320|
	|14.07.07.1221.FII3.15.01.1.170705|
	|14.07.07.1221.FII3.17.01.1.170727|
	|14.07.07.1221.FII3.18.01.1.170728|
	|14.07.07.1221.FII3.22.01.1.171206|
	|14.07.07.1221.FII3.23.01.1.171206|
	|14.07.07.1221.HE02.26.01.1.171109|
	|14.07.07.1221.HE02.26.01.1.171110|
	|14.07.07.1221.HE02.27.01.1.171109|
	|14.07.07.1221.HE02.27.01.1.171110|
	|14.07.07.1221.HE02.28.01.1.171109|
	|14.07.07.1221.HE02.28.01.1.171110|
	|14.07.07.1221.HE03.20.01.1.171109|
	|14.07.07.1221.HE03.20.01.1.171110|
	|14.07.07.1221.HE03.21.01.1.171109|
	|14.07.07.1221.HE03.21.01.1.171110|
	|14.07.07.1221.HE03.22.01.1.171109|
	|14.07.07.1221.HE03.22.01.1.171110|
	|14.07.07.1221.HEA2.04.01.1.160906|
	|14.07.07.1221.HEA2.04.01.1.161108|
	|14.07.07.1221.HEA2.04.01.1.161227|
	|14.07.07.1221.HEA2.08.01.1.170308|
	|14.07.07.1221.HEA2.15.01.1.170320|
	|14.07.07.1221.HEA2.22.01.1.170705|
	|14.07.07.1221.HEA2.24.01.1.170727|
	|14.07.07.1221.HEA2.25.01.1.170728|
	|14.07.07.1221.HEA2.29.02.1.171206|
	|14.07.07.1221.HEA2.30.03.1.171206|
	|14.07.07.1221.HEA3.04.01.1.160906|
	|14.07.07.1221.HEA3.04.01.1.161108|
	|14.07.07.1221.HEA3.04.01.1.161227|
	|14.07.07.1221.HEA3.08.01.1.170308|
	|14.07.07.1221.HEA3.10.01.1.170320|
	|14.07.07.1221.HEA3.16.01.1.170705|
	|14.07.07.1221.HEA3.18.01.1.170727|
	|14.07.07.1221.HEA3.19.01.1.170728|
	|14.07.07.1221.HEA3.23.01.1.171206|
	|14.07.07.1221.HEA3.24.01.1.171206|
	|14.07.07.1221.HEI2.04.01.1.160906|
	|14.07.07.1221.HEI2.04.01.1.161108|
	|14.07.07.1221.HEI2.04.01.1.161227|
	|14.07.07.1221.HEI2.08.01.1.170308|
	|14.07.07.1221.HEI2.15.01.1.170320|
	|14.07.07.1221.HEI2.22.01.1.170705|
	|14.07.07.1221.HEI2.24.01.1.170727|
	|14.07.07.1221.HEI2.25.01.1.170728|
	|14.07.07.1221.HEI2.29.02.1.171206|
	|14.07.07.1221.HEI2.30.03.1.171206|
	|14.07.07.1221.HEI3.04.01.1.160906|
	|14.07.07.1221.HEI3.04.01.1.161108|
	|14.07.07.1221.HEI3.04.01.1.161227|
	|14.07.07.1221.HEI3.08.01.1.170308|
	|14.07.07.1221.HEI3.10.01.1.170320|
	|14.07.07.1221.HEI3.16.01.1.170705|
	|14.07.07.1221.HEI3.18.01.1.170727|
	|14.07.07.1221.HEI3.19.01.1.170728|
	|14.07.07.1221.HEI3.23.01.1.171206|
	|14.07.07.1221.HEI3.24.01.1.171206|
	|14.07.07.1221.P2A0.01.01.0.170210|
	|14.07.07.1221.P2I0.01.01.0.170210|
	|14.07.07.1221.PO01.27.01.1.171109|
	|14.07.07.1221.PO01.28.01.1.171109|
	|14.07.07.1221.PO01.29.01.1.171109|
	|14.07.07.1221.PO01.31.02.1.171206|
	|14.07.07.1221.PO02.26.01.1.171110|
	|14.07.07.1221.PO02.27.01.1.171110|
	|14.07.07.1221.PO02.30.03.1.171206|
	|14.07.07.1221.PO03.27.01.1.171110|
	|14.07.07.1221.PO03.28.01.1.171110|
	|14.07.07.1221.PO03.29.01.1.171110|
	|14.07.07.1221.PO03.31.02.1.171206|
	|14.07.07.1221.PO04.28.01.1.171110|
	|14.07.07.1221.PO04.29.02.1.171206|
	|14.07.07.1221.PO05.26.01.1.171109|
	|14.07.07.1221.PO05.26.01.1.171110|
	|14.07.07.1221.PO05.27.01.1.171109|
	|14.07.07.1221.PO05.27.01.1.171110|
	|14.07.07.1221.PO05.28.01.1.171109|
	|14.07.07.1221.PO05.28.01.1.171110|
	|14.07.07.1221.POA1.01.01.1.160711|
	|14.07.07.1221.POA1.03.01.1.160711|
	|14.07.07.1221.POA1.04.01.1.160906|
	|14.07.07.1221.POA1.04.01.1.161108|
	|14.07.07.1221.POA1.04.01.1.161227|
	|14.07.07.1221.POA1.08.01.1.170308|
	|14.07.07.1221.POA1.15.01.1.170320|
	|14.07.07.1221.POA1.22.01.1.170705|
	|14.07.07.1221.POA1.24.01.1.170727|
	|14.07.07.1221.POA1.25.01.1.170728|
	|14.07.07.1221.POA1.30.01.1.171206|
	|14.07.07.1221.POA5.04.01.1.160906|
	|14.07.07.1221.POA5.04.01.1.161108|
	|14.07.07.1221.POA5.04.01.1.161227|
	|14.07.07.1221.POA5.08.01.1.170308|
	|14.07.07.1221.POA5.15.01.1.170320|
	|14.07.07.1221.POA5.22.01.1.170705|
	|14.07.07.1221.POA5.24.01.1.170727|
	|14.07.07.1221.POA5.25.01.1.170728|
	|14.07.07.1221.POA5.29.01.1.171206|
	|14.07.07.1221.POA5.30.01.1.171206|
	|14.07.07.1221.POI2.04.01.1.160906|
	|14.07.07.1221.POI2.04.01.1.161108|
	|14.07.07.1221.POI2.04.01.1.161227|
	|14.07.07.1221.POI2.08.01.1.170308|
	|14.07.07.1221.POI2.15.01.1.170320|
	|14.07.07.1221.POI2.22.01.1.170705|
	|14.07.07.1221.POI2.24.01.1.170727|
	|14.07.07.1221.POI2.25.01.1.170728|
	|14.07.07.1221.POI3.04.01.1.160906|
	|14.07.07.1221.POI3.04.01.1.161108|
	|14.07.07.1221.POI3.04.01.1.161227|
	|14.07.07.1221.POI3.08.01.1.170308|
	|14.07.07.1221.POI3.15.01.1.170320|
	|14.07.07.1221.POI3.22.01.1.170705|
	|14.07.07.1221.POI3.24.01.1.170727|
	|14.07.07.1221.POI3.25.01.1.170728|
	|14.07.07.1221.POI3.30.01.1.171206|
	|14.07.07.1221.POI5.04.01.1.160906|
	|14.07.07.1221.POI5.04.01.1.161108|
	|14.07.07.1221.POI5.04.01.1.161227|
	|14.07.07.1221.POI5.08.01.1.170308|
	|14.07.07.1221.POI5.15.01.1.170320|
	|14.07.07.1221.POI5.22.01.1.170705|
	|14.07.07.1221.POI5.24.01.1.170727|
	|14.07.07.1221.POI5.25.01.1.170728|
	|14.07.07.1221.POI5.29.01.1.171206|
	|14.07.07.1221.POI5.30.01.1.171206|
	|14.07.07.1222.HEI5.02.01.1.171205|
	|14.07.07.1222.HEI5.04.01.1.171205|
	|14.07.07.1222.MOA1.03.01.0.161230|
	|14.07.07.1222.MOA2.03.01.0.161230|
	|14.07.07.1222.MOI1.03.01.0.161230|
	|CHP-019313|
	|CHP-019314|
	|CHP-024479|
	|CHP-025166|
	|CHP-025167|
	|CHP-025168|
	|CHP-025169|
	|CHP-025171|
	|CHP-025172|
	|CHP-025174|
	|CHP-025175|
	|CHP-025179|
	|CHP-025180|
	|CHP-025268|
	|CHP-025270|
	|CHP-025281|
	|CHP-025532|
	|CHP-025534|
	|CHP-025535|
	|CHP-025536|
	|CHP-025537|
	|CHP-025542|
	|CHP-025543|
	|CHP-027265|
	|CHP-028479|
	|CHP-028480|
	|CHP-028481|
	|CHP-028483|
	|CHP-028484|
	|CHP-028487|
	|CHP-028489|
	|CHP-028491|
	|CHP-028492|
	|CHP-028493|
	|CHP-028495|
	|CHP-028496|
	|CHP-028499|
	|CHP-028559|
	|CHP-028560|
	|CHP-028561|
	|CHP-028562|
	|CHP-028563|
	|CHP-028565|
	|CHP-028567|
	|CHP-028569|
	|CHP-028571|
	|CHP-028574|
	|CHP-028577|
	|CHP-028578|
	|CHP-028579|
	|CHP-028997|
	|CHP-029211|
	|CHP-029213|
	|CHP-029215|
	|CHP-029216|
	|CHP-029217|
	|CHP-029218|
	|CHP-029219|
	|CHP-029220|
	|CHP-029222|
	|CHP-029225|
	|CHP-029227|
	|CHP-029228|
	|CHP-029229|
	|15.07.07.1221.AN03.01.00.1.170705|
	|15.07.07.1221.CE01.20.00.1.170823|
	|15.07.07.1221.P201.01.00.0.170619|	
          