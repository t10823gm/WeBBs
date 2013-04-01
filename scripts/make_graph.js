function make_graph(s_ID, ecd_name){
    Data = "/webbs/results/guest/" + s_ID + "/" + ecd_name
    console.log(Data);
var aSeries = [];
$.when($.get(Data),0).done(function(data, num) {
	var series = [];
	series = { data: [], name: "" };
	//Split the lines
	var lines = data[0].split('\n');    //yoko:line
	//console.log(lines);
	$.each(lines, function(AlineNo, Aline) {
		if (AlineNo == 0) {
		    var Bitem = Aline.split(' ');  //tate:
		    series.name = Bitem[1];
		} else if (AlineNo > 5) {
		    var Aitem = Aline.split('\t');     //tate:item
		    $.each(Aitem, function(AitemNo, Aitem) {
			    if (AitemNo == 0 ) {
			    } else if (AitemNo == 1) {
				series.data.push(parseFloat(Aitem));
			    }
			});
		}
	    });
	aSeries = series;

	$(function () {
		var chart;
		$(document).ready(function() {
			chart = new Highcharts.Chart({
				chart: {
				    renderTo: 'container',
				    type: 'line',
				    zoomType: 'xy'
				},
				title: {
				    text: ecd_name + "(MolarConc)",
				    x: -20 //center
				},
				xAxis: {
				    title: { text: 'Time' },
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
				    },
				    plotLines: [{
					    value: 0,
					    width: 2,
					    color: '#808080'
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
				},				
				series: [ aSeries ],
			    });
			return chart;
		    });
	    });
    });
}