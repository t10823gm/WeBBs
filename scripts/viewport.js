Ext.require(['*']);

var session_lib = []; // connect "session_ID" to "tab name"

var ViewPort;
Ext.onReady(function(){
	ViewPort = Ext.create('Ext.container.Viewport', {
		layout:'border',
		border: false,
		height: "100%",
		width: "100%",
		items: [{
			region: 'north',
			id: 'north-panel',
			height: '8%',
			xtype: 'panel',
			margin: '1 1 1 1',
			border: false,
			html: "<img src='./img/webbs_logo.png' height='100%'></a></div>"
		    },{
                        region: 'south',
			id: 'south-panel',
			height: "3%",
			xtype: 'panel',
			margin: '1 1 1 1',
			border: false,
			html: "<div align=right> &copy;webbs team</div>"
		    },{
			region:'west',
			id:'west-panel',
			title: 'Model Database',
			split:true,
			height: "100%",
			width: "20%",
			collapsible: true,
			margin: '1 1 1 1',
			items: [{
				region: 'north',
				height: '40%',
				border: false,
				autoScroll:true,
				items:[ ecell_model ]
			    },{
				region:'south',
				height: '60%',
				items: [{
					title: 'Annotation',
					frame: true,
					split:true,
					border: false,
					height: '50%',
					autoscroll: true,
					html: '<h3>Description of Model</h3>',
				    },{
					title: 'Pathway Map',
					autoscroll: true,
					frame: true,
					split:true,
					border: false,
					height: '50%',
					html: '<h3>Show a Picture of Pathwaymap</h3>'
				    }]
			    }]
		    },{
			region:'center',
			autoscroll: true,
			border: false,
			layout:'fit',
			items:[ tabs ]
		    }]
	    });
	
    });