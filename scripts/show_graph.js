function show_graph(Data, Title){
    console.log(Data[0]);
    var series = [];

    ///////perse ECDfile(jQuery)////////    
    for (i = 0; i < Data.length; i++) {
	series[i] = { data: [], name: "" };
	$.when($.get(Data[i]), i).done(function(data, num) {
		//Split the lines
		var lines = data[0].split('\n');    //yoko:line                  
		$.each(lines, function(AlineNo, Aline) {
			if (AlineNo == 0) {
			    var Bitem = Aline.split(' ');  //tate:
			    series[num].name = Bitem[1];
			} else if (AlineNo > 5) {
			    var Aitem = Aline.split('\t');     //tate:item
			    //ds.data.push(parseFloat(Aitem[1]));
			    $.each(Aitem, function(AitemNo, Aitem) {
				    if (AitemNo == 0 ) {
				    } else if (AitemNo == 1) {
					series[num].data.push(parseFloat(Aitem));
				    }
				});
			}
		    });	    
	    });
    }
    var achart = Ext.create("Chart.ux.HighChart", {
	    xtype : 'highchart',
	    title : 'test',
	    series : series,
	    xField : 'time',
	    layout: 'fit',
	    chartConfig: {
		chart: {
		    defaultSeriesType: 'line',
		    zoomType: 'xy'
		},
		title: {
		    text: Title,
		    x: -20 
		},
		xAxis: {
		    title: {
			text: 'Time'
		    },
		    plotLines: [{
			    value: 0,
			    width: 1,
			    color: '#000000'
			}],
		    min:0
		},
		yAxis: {
		    title: {
			text: 'MolarConc'
			//			text: 'Value'
		    },
		    gridLineWidth: 0,
		    plotLines: [{
			    value: 0,
			    width: 2,
			    color: '#000000'
			}]
		},
		tooltip: {
		    crosshairs: true,
		    shared: true
		},
		legend: {
		    layout: 'vertical',
		    align: 'right',
		    verticalAlign: 'top',
		    x: -10,
		    y: 100,
		    borderWidth: 0
		}
	    }
	});
    return achart;
}