<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body> 	

<script src="highcharts.js"></script>
<script src="exporting.js"></script>
<script src="highcharts-more.js"></script>

<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
<input type="hidden" name="xvalue" value="Data Structure" />
<input type="hidden" name="yvalue" value="4" />

<input type="hidden" name="xvalue" value="Natural Language Processing" />
<input type="hidden" name="yvalue" value="5" />

<input type="hidden" name="xvalue" value="Artificial Intelligence" />
<input type="hidden" name="yvalue" value="2" />

<input type="hidden" name="xvalue" value="Cloud Computing" />
<input type="hidden" name="yvalue" value="14" />

<input type="hidden" name="xvalue" value="Bioformatics" />
<input type="hidden" name="yvalue" value="3" />

<input type="hidden" name="xvalue" value="Virtualization" />
<input type="hidden" name="yvalue" value="9" />

<input type="hidden" name="xvalue" value="Data Mining" />
<input type="hidden" name="yvalue" value="1" />

<input type="hidden" name="xvalue" value="Machine Learning" />
<input type="hidden" name="yvalue" value="6" />

<input type="hidden" name="xvalue" value="Video Processing" />
<input type="hidden" name="yvalue" value="2" />

<input type="hidden" name="xvalue" value="Image processing" />
<input type="hidden" name="yvalue" value="11" />

<script>
var xvalue= document.getElementsByName("xvalue");
var xdata = [];
var yvalue= document.getElementsByName("yvalue");
var ydata = [];
for(var i=0;i<xvalue.length;i++)
{
	xdata.push(xvalue[i].value);
	ydata.push(parseFloat(yvalue[i].value));
}
var mixchartdata = "[";
for (var i=0;i<xdata.length;i++)
{
	mixchartdata=mixchartdata+'{"x":'+parseFloat(ydata[i])+',"y":'+parseFloat(ydata[i])+',"z":'+parseFloat(ydata[i])+',"name":"'+xdata[i]+'","keycount":'+parseFloat(ydata[i])+'}';
if(xdata.length-1!=i)
	{mixchartdata=mixchartdata+",";
	}
	}
mixchartdata = mixchartdata+"]";

var mixchartjsndata = JSON.parse(mixchartdata);
console.log("mixchartjsndata",mixchartjsndata);

 var myChart3 = Highcharts.chart({
	chart: {
	renderTo:"container",
             type: 'bubble',
        plotBorderWidth: 1,
        zoomType: 'xy'
    },

    title: {
        text: 'Top 10 Word Count'
    },

    xAxis: {
        gridLineWidth: 1
    },

    yAxis: {
        startOnTick: false,
        endOnTick: false,
		 tickAmount: 15
    },
	  tooltip: {
        useHTML: true,
        headerFormat: '<table>',
        pointFormat: '<tr><th colspan="2"><h5>{point.name}</h5></th></tr>' +
            '<tr><th>Count:</th><td>{point.keycount}</td></tr>' 
            ,
        footerFormat: '</table>',
        followPointer: true
    },

    plotOptions: {
        series: {
            cursor: 'pointer',
            point: {
                events: {
                    click: function () {
              	}
                }
            }
        }
    },
    series: [{
		name:'Word + counts',
        data: mixchartjsndata,
        marker: {
            fillColor: {
                radialGradient: { cx: 0.4, cy: 0.3, r: 0.7 },
                stops: [
                    [0, 'rgba(54,154,54,0.7)'],
                    [1, Highcharts.Color(Highcharts.getOptions().colors[1]).setOpacity(0.7).get('rgba')]
                ]
            }
        }
    }]

});
</script>

</body>
</html>