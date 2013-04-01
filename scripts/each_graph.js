function each_graph(Data){
    var aSeries =[];
    for (i = 0; i < Data.length; i++) {
	make_graph(Data[i]);
	window.open('/gem/neo/show_graph.html', 'mywindow2', 'width=400, height=300');
    }
}