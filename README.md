| JSON content | Comment |
| -------- | -------- |
|{| |
|  "_comment":"VW-ADL SNMP-AGENT MAP", | -- Used for generating MIB header comment |
| "_version":"2.0",	| -- For sub-agent, not related to generator |
|  "_dir_on_production":"/data/casurun/",	| -- For sub-agent, location of data files |
|  "_dir":"../nagios_data/", | -- For sub-agent, location of test data files |
|  "_root":"1.3.6.1.4.1.25327.1.4",	| -- Used to generating VW-PRODUCT index |
|  "_MIB" : "VW-ADL-MIB", | -- Used for genetating filename excluding last substring |
|  "1":{ | -- Root index, goes right after VW product index |
|    "_comment":"ADL version info", | -- Used for generating root name |
|    "_type":"data", | -- For sub-agent, type of parser |
|    "filename":"version", | -- For sub-agent, name of data file |
|    "1":["copyright"],	| -- Branch index, goes right after root index e.x. snmpget .1.3.6.1.4.1.25327.1.4.1.1 |
| | -- Array of keys are used to generate branch name; MUST NOT DUPLICATE |
|	"2":{	|	-- Branch index; non-array is for SNMP Table only; this is first (simplest) type of table. |
|	    "_comment":"trans-stats.transport.vpi",	| -- Comment string for generate branch name; MUST NOT DUPLICATE |
|		"layer":"0",	| -- indicating single layer SNMP table. Only this layer. e.x. snmptable .1.3.6.1.4.1.25327.1.4.1.2 |
|	    "row_key":"transport.vpi.",	|-- For sub-agent, appending row_index to row_key generates row keyword for searching value in data file|
|	    "row_max":"3",	| -- For sub-agent, will generate this number of rows |
|	    "column":["index", "invalid_cmd", "controller_err"] | -- Used for generating item table in MIB; the first one must be "index". MUST NOT DUPLICATE |
|	}, | |
| 	"3":{			| -- Branch index; non-array is for SNMP Table only; this is second type of table.|
|      	"_comment":"trans-stats.port.in",| |
|      	"layer":{	| -- Can have multiple layers, maximum 3 layers in this case, start from 0 |
|	    	"keys":["config","buffer","error"],	| -- e.x. snmptable .1.3.6.1.4.1.25327.1.4.1.3.0, ..., .1.3.6.1.4.1.25327.1.4.1.3.2 |
|        	"max_key":"3"	|	-- Uses keys[layer#] for additional search/filter keywords. DO NOT RANDOMLY MAKE ONE UP|
|      	},| |
|      	"row_key":"port.in.", | |
|      	"row_max":"1", | |
|      	"column":{ | |
|        	"_comment":"Column keywords for each layer", | |
|        	"0":["index","config.type","config.device"],	| -- List of column keywords for each layer; the first one must be "index"|
|        	"1":["index","buffer.bitrate","buffer.level"],| |
|        	"2":["index","error.syncbyte","error.overflow"] | |
|        }| |
|  	},| |
|  	"4":{ | -- Branch index; non-array is for SNMP Table only; this is third type of table. |
|      	"_comment":"trans-mux out port", | |
|       "layer":{ | |
|        	"key":"out.",	| -- Can have multiple layers, maximum 1 layers in this case, start from 0 |
|        	"max_key":"1" | -- Combines keys[layer#] and layer# to generate keyword for additional search/filter. DO NOT RANDOMLY MAKE ONE UP |
|      	},| |
|      	"row_key":"mux.",	| |
|      	"row_max":"out.[index].num_mux_inputs",	| -- no row_max number is given, will use row_max keyword replace [index] with layer# and attempt to search in data. DO NOT RANDOMLY MAKE ONE UP |
|      	"column":["index","last_seen","mcast","targetbr"]	| -- Used for generating item table in MIB; the first one must be "index". MUST NOT DUPLICATE |
|  	} | |
|  } | |
|} | |

