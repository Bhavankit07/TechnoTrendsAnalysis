<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<script src="highcharts.js"></script>
<script src="exporting.js"></script>


<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
<input type="hidden" name="xvalue" value="Cloud Computing" />
<input type="hidden" name="xvalue" value="Machine Learning" />
<input type="hidden" name="xvalue" value="Artificial Intelligence" />
<input type="hidden" name="xvalue" value="Deep Learning" />
<input type="hidden" name="xvalue" value="Bioinformatics" />
<input type="hidden" name="xvalue" value="Data Structures" />
<input type="hidden" name="xvalue" value="Natural Language Processing" />
<input type="hidden" name="xvalue" value="Virtualization" />
<input type="hidden" name="xvalue" value="Video Processing" />
<input type="hidden" name="xvalue" value="Image Processing" />

<input type="hidden" name="yvalue" value="14" />
<input type="hidden" name="yvalue" value="6" />
<input type="hidden" name="yvalue" value="2" />
<input type="hidden" name="yvalue" value="1" />
<input type="hidden" name="yvalue" value="3" />
<input type="hidden" name="yvalue" value="4" />
<input type="hidden" name="yvalue" value="5" />
<input type="hidden" name="yvalue" value="9" />
<input type="hidden" name="yvalue" value="2" />
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
Highcharts.chart({
    chart: {
	renderTo:"container",

        type: 'column'
    },
    title: {
        text: 'Monthly Average Rainfall'
    },
    subtitle: {
        text: 'Source: WorldClimate.com'
    },
    xAxis: {
        categories: xdata,
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Counts'
        }
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'Trends in Computer Science',
        data: ydata

    }]
});
</script>

</body>
</html>