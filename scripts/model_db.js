var store = Ext.create('Ext.data.TreeStore',{
	proxy: {
	    type: 'ajax',
	    url: '/dysuke/es/tree_model_info.txt'
	},
	root: {
	    text: 'E-Cell Model',
	    expanded: true
	},
	folderSort: false
    });

var ecell_model = Ext.create('Ext.tree.Panel', {
	store: store,
	height: "100%",
	width: "100%",
	border: false,
	useArrows: true,
	dockedItems: [{
		xtype: 'toolbar',
		items: [{
			text: 'Expand All',
			handler: function(){
			    ecell_model.expandAll();
			}
		    },{
			text: 'Collapse All',
			handler: function(){
			    ecell_model.collapseAll();
			}
		    }]
	    }]
    });

//////Insert info model data to Grid
var count = 0;
var model_name = ''
ecell_model.getSelectionModel().on('selectionchange', function(sm, selectedRecord) {
	//ecell_model.getSelectionModel().on('selectionchange', function(sm, selectedRecord) {
	console.log(selectedRecord);
	//        params = { "ID": selectedRecord[0].data.model_name + ".em" };
        params = { "ID": selectedRecord[0].data.text + ".em" };
        //send Ajax Request
	Ext.Ajax.request({
		url: "/webbs/cgi/CreateValueList_gem.cgi",
                    method: "GET",
                    params: params,
                    success: handleSuccess,
                    failure: handleFailure,
                    });
	count = count +1;
	model_name = selectedRecord[0].data.text;
    });

//モデルのアノテーションの取得
ecell_model.getSelectionModel().on('selectionchange', function(sm, selectedRecord) {
        params = { file_name: selectedRecord[0].data.text + ".em" };
        //send Ajax Request                                                                          
        Ext.Ajax.request({
                url: "/webbs/cgi/annotation_list.cgi",
                    method: "GET",
                    params: params,
                    success: annotationSuccess,
                    failure: annotationFailure,
                    });
    });
  
//モデルのPathwayMapの取得
ecell_model.getSelectionModel().on('selectionchange', function(sm, selectedRecord) {
        params = { file_name: selectedRecord[0].data.text + ".em" };
	//	console.log(selectedRecord[0].data.model_name);
        //send Ajax Request                                                                          
        Ext.Ajax.request({
                url: "/webbs/cgi/pathway_map.cgi",
                    method: "GET",
                    params: params,
                    success: mapSuccess,
                    failure: mapFailure,
                    });
    });
