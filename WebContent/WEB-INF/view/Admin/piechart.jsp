<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
<script src="highcharts.js"></script>
<script src="exporting.js"></script>


<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
<input type="hidden" name="xvalue" value="Data Structure" />
<input type="hidden" name="yvalue" value="4" />

<input type="hidden" name="xvalue" value="Natural Language Processing" />
<input type="hidden" name="yvalue" value="5" />

<input type="hidden" name="xvalue" value="Deep Learning" />
<input type="hidden" name="yvalue" value="2" />

<input type="hidden" name="xvalue" value="Cloud Computing" />
<input type="hidden" name="yvalue" value="14" />

<input type="hidden" name="xvalue" value="Bioformatics" />
<input type="hidden" name="yvalue" value="3" />

<input type="hidden" name="xvalue" value="Virtualization" />
<input type="hidden" name="yvalue" value="9" />

<input type="hidden" name="xvalue" value="Artificial Intelligence" />
<input type="hidden" name="yvalue" value="2" />

<input type="hidden" name="xvalue" value="Machine Learning" />
<input type="hidden" name="yvalue" value="6" />

<input type="hidden" name="xvalue" value="Video Processing" />
<input type="hidden" name="yvalue" value="2" />

<input type="hidden" name="xvalue" value="Image processing" />
<input type="hidden" name="yvalue" value="11" />

<script>
var xvalue= document.getElementsByName("xvalue");
var chartdata = "[";
var yvalue= document.getElementsByName("yvalue");
for(var i=0;i<xvalue.length;i++)
{
	chartdata = chartdata+ '{"name":"'+xvalue[i].value+'","y":'+parseFloat(yvalue[i].value)+'}';
	if(i!=xvalue.length-1)
	{
	chartdata = chartdata+ ',';
	}
}
chartdata = chartdata+"]";
console.log(JSON.parse(chartdata));
Highcharts.chart({
    chart: {
	renderTo:"container",

        type: 'pie'
    },
    title: {
        text: 'Analyzed data'
    },
     plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
	series:  [{
        name: 'Hits',
        colorByPoint: true,
        data:JSON.parse(chartdata)
		}]	
});
</script>

</body>
</html>