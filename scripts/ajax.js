//Ajax request annotation of selected model
function annotationSuccess(response){
    if (response.responseText !== undefined) {
	var responseJSON = JSON.parse(response.responseText);
	ViewPort.getRefItems()[2].getRefItems()[2].getRefItems()[0].body.dom.innerText = responseJSON;
    }
}

function annotationFailure(response){
    if (response.responseText !== undefined) {
        alert("Missed loadeing annotation")
            }
}

//Ajax request pathway map of selected model               
function mapSuccess(response){    if (response.responseText !== undefined) {
        var responseJSON = JSON.parse(response.responseText);
        ViewPort.getRefItems()[2].getRefItems()[2].getRefItems()[1].body.dom.innerHTML = "<div style='background: -webkit-gradient(linear, left top, left bottom, from(4682b4),　to(b0c4de));'><img src='../../ecell/pathway_map/" + responseJSON + "' alt='' width='100%' height='100%'/></div>"
            }
}

//Ajax failed
function mapFailure(response){
    if (response.responseText !== undefined) {
        alert("Missed loadeing pathway map")
            }
}

//Load Model's Entity
var session_ID = "";
///////Ajax Successed
function handleSuccess(response) {
    if (response.responseText !== undefined) {
	var responseJSON = JSON.parse(response.responseText);
	var responseJSON_process  = responseJSON.Process;
	var responseJSON_variable = responseJSON.Variable;
	var EntityNo = tabs.items.length;
	session_ID = responseJSON.ID;
	if (count == 1){
	    tabs.items.items[0].setTitle(model_name);	    
	    entity_panel.items.items[0].items.items[0].getStore().loadData(responseJSON_variable);
	    entity_panel.items.items[0].items.items[1].getStore().loadData(responseJSON_process);
	    session_lib.push({m_name: model_name, t_name: model_name, s_ID: session_ID});
	}else{
	    var same = 0;
	    var jud;
	    for(i = 0; i < session_lib.length; i ++){
		if( model_name == session_lib[i].m_name){
		    same ++;		
		    jud = true;
		}
	    }
	    if(jud == true){
		session_lib.push({ m_name: model_name, t_name: model_name +"("+ same +")", s_ID: session_ID});
	    }else{
		session_lib.push({ m_name: model_name, t_name: model_name, s_ID: session_ID});
	    }
	    
	    var new_entity = Ext.create('Ext.tab.Panel',{
		    layout: 'fit',
		    border: false,
		    items:[{
			    title: 'Entity',
			    width: "100%",
			    height: '100%',
			    border: false,
			    layout: 'column',
			    items:[ variable_grid( responseJSON_variable ), process_grid( responseJSON_process ), meta_grid( responseJSON ) ]
			}]
		});
	    new_entity.items.items[0].items.items[0].getStore().loadData(responseJSON_variable);
	    new_entity.items.items[0].items.items[1].getStore().loadData(responseJSON_process);
	    var tab_name = session_lib.pop();	    session_lib.push(tab_name);
	    tabs.add({
		    title: tab_name.t_name,
			activate: this,
			id: 'Entity'+ EntityNo,
			layout: 'fit',
			border: false,
			items:[ new_entity ]
			}).show;
	    tabs.setActiveTab('Entity'+ EntityNo);
	}	
    }
}
//////Ajax failed
function handleFailure(response) {
    if (response.responseText !== undefined) {
	alert('Sorry!! Failed (T_T)');
    }
}

//Click Process -> show property
function getPropertySuccess(response){
    if (response.responseText !== undefined) {
        var responseJSON = JSON.parse(response.responseText);
        var responseJSON_process  = responseJSON.Process;
	plist = new String();
	for (i=0; i < responseJSON.PropertyList.length; i = i+1){
	    plist += responseJSON.PropertyList[i].Name;
	    plist += ":"+"\t";                                                                                                                         
	    plist += responseJSON.PropertyList[i].Value;                                                                                               
	    plist += "\n";
	}
	tabs.getActiveTab().items.items[0].items.items[0].items.items[2].getRefItems()[1].getRefItems()[1].setValue(responseJSON.ReactionName);
	tabs.getActiveTab().items.items[0].items.items[0].items.items[2].getRefItems()[1].getRefItems()[2].setValue(responseJSON.Expression);
	tabs.getActiveTab().items.items[0].items.items[0].items.items[2].getRefItems()[1].getRefItems()[3].setValue(responseJSON.VariableReferenceList);
	tabs.getActiveTab().items.items[0].items.items[0].items.items[2].getRefItems()[1].getRefItems()[4].setValue(plist);
    };    
}

function getPropertyFailure(response){
    if (response.responseText !== undefined) {
        alert("Sorry failed");
    };   
}

//Show Result Graph
//////Ajax Success
function result_graph_success(response) {
    var model_name = { "model": tabs.getActiveTab().title };
    var toolbarObject = Ext.create('Ext.toolbar.Toolbar', {  // 
	    //	    renderTo: document.body,
	    id: 'result_tool_bar',
	    border: false,
	    width: '100%',
	    items: ['->',{
		    icon:'./img/icon/icons/rss.png',
		    id: 'DL_EM',
		    handler: function() {
//			window.location.href='http://webbs.sfc.keio.ac.jp/webbs/cgi/downloader_em.cgi?model='+model_name.model;
			window.location.href='http://webbs.sfc.keio.ac.jp/gem/cgi/downloader_em.cgi?model='+model_name.model;
		    }
		},{
		    icon:'./img/icon/icons/bullet_disk.png',
		    id: 'DL_result',
                    handler: function() {
//			window.location.href='http://webbs.sfc.keio.ac.jp/webbs/cgi/downloader_result.cgi?session_ID='+session_ID;
			window.location.href='http://webbs.sfc.keio.ac.jp/gem/cgi/downloader_result.cgi?session_ID='+session_ID;
		    }
		},{
		    icon:'./img/icon/icons/application_cascade.png',
		    id: 'separateGraph',
		    handler: function(){
			for(i=0; i < resultJSON[0].Data.length; i++){
			    s_ID = session_ID;
			    ECD_Path = resultJSON[0].Data[i].split("/");
			    FPN = ECD_Path.pop();
			    aECD = resultJSON[0].Data[i].split("_");
			    f_ext = aECD.pop(); f_var = aECD.pop();			    			    
			    ecd_name = f_var + "_" +f_ext;
//			    window.open("/webbs/cgi/popup.cgi?s_ID="+s_ID+"&ecd_name="+ecd_name+"&FPN="+FPN, "", "width=620, height=420, location=no");
			    window.open("/gem/cgi/popup.cgi?s_ID="+s_ID+"&ecd_name="+ecd_name+"&FPN="+FPN, "", "width=620, height=420, location=no");
			}
			return false;
		    }		    
		}]
	});    
    var tip1 = Ext.create('Ext.tip.ToolTip', { target: "DL_EM", html: "Download EM Model" });
    var tip2 = Ext.create('Ext.tip.ToolTip', { target: "DL_result", html: "Download Result Data" });
    var tip3 = Ext.create('Ext.tip.ToolTip', { target: "separateGraph", html: "Devide Graph" });

    if (response.responseText !== undefined) {
	var resultJSON = JSON.parse(response.responseText);
	var charts = Array();
	tabs.getActiveTab().items.items[0].add({
		title: 'Result',
		    id: 'result_tab',
		    border: false,
		    layout: 'fit',
		    items: [show_graph(resultJSON[0].Data, resultJSON[0].Title)],
		    tbar: toolbarObject
		    }).show();
    };
}
//////Ajax failed
function result_graph_failure(response){
    if (response.responseText !== undefined) {
        alert('Sorry!! Missed (T_T)');
    }
}

