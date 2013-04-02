   //un = new Array();
   function jun(a,b) {
     var options = {
					chart: {
						renderTo: 'container',
						defaultSeriesType: 'line',
						zoomType: 'xy'
						},
					title: {
						text: 'YAMAKUBO',
						x: -20 //center
					},
					xAxis: {
						title: {
							text: 'Time'
						},
						//categories: [],
						plotLines: [{
							value: 0,
							width: 1,
							color: '#000000'
					    }],
					    min:0.0
					},
					yAxis: {
						title: {
							text: 'Value'
						},
						plotLines: [{
							value: 0,
							width: 2,
							color: '#000000'
					    }],
					
					},
					tooltip: {
					  crosshairs: true,
					  shared: true
					//						formatter: function() {
				       //         return '<b>'+ this.series.name +'</b><br/>'+
							//	this.x +': '+ this.y +'';
					//	}
					},
					legend: {
						layout: 'vertical',
						align: 'right',
						verticalAlign: 'top',
						x: -10,
						y: 100,
						borderWidth: 0
					},
					series: []
				};

///////////////parse ECDfile(jQuery)///////////////////////
     fileName = new Array();
     fileName[0] = a;
     fileName[1] = b;
     // fileName[0] = './Variable_CELL_CYTOPLASM_P0_Value.ecd';
    //  fileName[1] = './Variable_CELL_CYTOPLASM_M_Value.ecd';
    //co = new Array();
    
    //for(i = 0;i <= un.length; i++) {
    //  co[i] = un[i];
    //  }
               
     //  for (i = 0; i <= jun.arguments.length; i++) { 
     //   for (i = 0; i <= co.length; i++) { 
     for (i = 0; i <= 5; i++) { 
    //  $.get(jun.arguments[i], function(data) {;
 	//	$.get(co[i], function(data) {;
 	$.get(fileName[i], function(data) {;    
	   	 //Split the lines
		    var lines = data.split('\n');    //yoko:line
            var hara = {  data: [] }
            
  		  $.each(lines, function(lineNo, line) {
       		 var items = line.split('\t');     //tate:item
        	 if (lineNo > 5) {
               $.each(items, function(itemNo, item) {  
                  if (itemNo == 0 ) {
        
               	  } else if (itemNo == 1) {
               	    hara.data.push(parseFloat(item));
               	  }
               });
        	 }
          });
          
          $.each(lines, function(nicoleNo, nicole) {
            var jiyoungs = nicole.split(' ');  //tate:
            if (nicoleNo == 0) {
              $.each(jiyoungs, function(jiyoungNo, jiyoung) {  
                if (jiyoungNo == 1 ) {
                  hara.name = jiyoung;
                }
              })
            }
          });
          
         options.series.push(hara);
        	 
         // Create the chart
         	   var chart = new Highcharts.Chart(options);
	  });
	  //}
}
	 
}

       
////////////////////////////////////////////////////////
