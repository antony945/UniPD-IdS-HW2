function EQ_GET_DATA(){ 
	  var ret = {
"name": " tribuo-4.1.0 working set: {tribuo-common-sgd}", "value":43374, 
"prmetrics":{"5":1,"6":1,"7":1,"8":1,"9":1,"10":1,"11":1},
"prmetricvalues":{"5":0,"6":6,"7":0,"8":231,"9":8,"10":1,"11":18},
"children": [ {
"name": "org.tribuo.common.sgd", "key": "q", "value":231, 
"pmetrics":{"4":2,"12":1,"13":1,"14":1,"3":1,"1":1,"0":1,"6":2,"8":1,"2":1,"15":2,"16":1},
"pmetricvalues":{"17":11,"4":2,"12":5,"13":1,"14":5,"3":1,"1":1,"0":1,"18":0.166,"6":6,"19":0.833,"8":231,"20":0.333,"21":5,"2":1,"15":10,"22":6,"16":18},
"children":[
{
"name": "AbstractSGDModel","key": "t","value":27, 
"metrics":{"23":2,"24":1,"25":1,"26":1,"27":1,"28":1,"29":1,"0":2,"30":1,"31":1,"32":1,"33":4,"34":1,"35":1,"36":2,"37":1,"38":1,"39":1,"16":1,"40":1,"4":1,"8":1,"2":2,"3":1,"1":1},
"metricvalues":{"23":6,"24":0,"17":1,"25":2,"26":0.0,"27":11,"28":1,"29":1,"0":2,"30":2,"31":10,"32":0.0,"33":1.0,"34":1,"35":0.25,"21":0,"36":6,"37":7,"22":1,"38":0,"39":0,"16":4,"40":0,"4":1,"8":27,"2":2,"3":1,"1":1}
},
{
"name": "SGDObjective","key": "k6","value":2, 
"metrics":{"23":1,"24":1,"25":1,"26":1,"27":1,"28":2,"29":1,"0":1,"30":1,"31":1,"32":1,"33":1,"34":1,"35":1,"36":1,"37":1,"38":1,"39":1,"40":1,"4":1,"8":1,"2":1,"3":1,"16":1,"1":1},
"metricvalues":{"23":2,"24":0,"17":2,"25":0,"26":0.0,"27":1,"28":3,"29":1,"0":1,"30":1,"31":1,"32":0.0,"33":0.0,"34":0,"35":0.0,"21":1,"36":1,"37":0,"22":1,"38":0,"39":1,"40":0,"4":1,"8":2,"2":1,"3":1,"16":1,"1":1}
},
{
"name": "AbstractSGDTrainer","key": "v","value":136, 
"metrics":{"23":2,"24":1,"25":1,"26":1,"27":1,"28":1,"29":1,"0":3,"30":1,"31":1,"32":5,"33":4,"34":1,"35":3,"36":2,"37":1,"38":1,"39":1,"16":1,"40":1,"4":2,"8":2,"2":2,"3":3,"1":1},
"metricvalues":{"23":6,"24":0,"17":1,"25":8,"26":0.0,"27":26,"28":1,"29":0,"0":3,"30":9,"31":9,"32":1.0,"33":0.938,"34":0,"35":0.75,"21":0,"36":6,"37":1,"22":1,"38":0,"39":0,"16":9,"40":0,"4":2,"8":136,"2":2,"3":3,"1":1}
},
{
"name": "AbstractLinearSGDModel","key": "r","value":56, 
"metrics":{"23":1,"24":1,"25":1,"26":1,"27":1,"28":2,"29":2,"0":2,"30":1,"31":1,"32":1,"33":1,"34":1,"35":1,"36":1,"37":1,"38":1,"39":1,"16":1,"40":1,"4":2,"8":2,"2":1,"3":1,"1":2},
"metricvalues":{"23":2,"24":0,"17":1,"25":0,"26":0.0,"27":2,"28":3,"29":2,"0":2,"30":1,"31":3,"32":0.0,"33":0.0,"34":1,"35":0.0,"21":1,"36":2,"37":2,"22":0,"38":0,"39":0,"16":1,"40":0,"4":2,"8":56,"2":1,"3":1,"1":2}
},
{
"name": "AbstractLinearSGDTrainer","key": "s","value":10, 
"metrics":{"23":1,"24":1,"25":1,"26":1,"27":1,"28":2,"29":1,"0":1,"30":1,"31":1,"32":1,"33":1,"34":1,"35":1,"36":1,"37":1,"38":1,"39":1,"16":1,"40":1,"4":1,"8":1,"2":1,"3":1,"1":1},
"metricvalues":{"23":1,"24":0,"17":1,"25":0,"26":0.0,"27":4,"28":3,"29":1,"0":1,"30":2,"31":2,"32":0.0,"33":0.0,"34":0,"35":0.375,"21":1,"36":1,"37":0,"22":0,"38":0,"39":0,"16":2,"40":0,"4":1,"8":10,"2":1,"3":1,"1":1}
}
]
}]
 }
;
return ret;
}
var EQ_METRIC_MAP = {};
EQ_METRIC_MAP["C3"] =0;
EQ_METRIC_MAP["Complexity"] =1;
EQ_METRIC_MAP["Coupling"] =2;
EQ_METRIC_MAP["Lack of Cohesion"] =3;
EQ_METRIC_MAP["Size"] =4;
EQ_METRIC_MAP["Number of Highly Problematic Classes"] =5;
EQ_METRIC_MAP["Number of Entities"] =6;
EQ_METRIC_MAP["Number of Problematic Classes"] =7;
EQ_METRIC_MAP["Class Lines of Code"] =8;
EQ_METRIC_MAP["Number of External Packages"] =9;
EQ_METRIC_MAP["Number of Packages"] =10;
EQ_METRIC_MAP["Number of External Entities"] =11;
EQ_METRIC_MAP["Efferent Coupling"] =12;
EQ_METRIC_MAP["Number of Interfaces"] =13;
EQ_METRIC_MAP["Number of Classes"] =14;
EQ_METRIC_MAP["Afferent Coupling"] =15;
EQ_METRIC_MAP["Weighted Method Count"] =16;
EQ_METRIC_MAP["Degree"] =17;
EQ_METRIC_MAP["Normalized Distance"] =18;
EQ_METRIC_MAP["Abstractness"] =19;
EQ_METRIC_MAP["Instability"] =20;
EQ_METRIC_MAP["OutDegree"] =21;
EQ_METRIC_MAP["InDegree"] =22;
EQ_METRIC_MAP["Coupling Between Object Classes"] =23;
EQ_METRIC_MAP["Access to Foreign Data"] =24;
EQ_METRIC_MAP["Number of Fields"] =25;
EQ_METRIC_MAP["Specialization Index"] =26;
EQ_METRIC_MAP["Class-Methods Lines of Code"] =27;
EQ_METRIC_MAP["Number of Children"] =28;
EQ_METRIC_MAP["Depth of Inheritance Tree"] =29;
EQ_METRIC_MAP["Number of Methods"] =30;
EQ_METRIC_MAP["Response For a Class"] =31;
EQ_METRIC_MAP["Lack of Tight Class Cohesion"] =32;
EQ_METRIC_MAP["Lack of Cohesion of Methods"] =33;
EQ_METRIC_MAP["Number of Static Fields"] =34;
EQ_METRIC_MAP["Lack of Cohesion Among Methods(1-CAM)"] =35;
EQ_METRIC_MAP["CBO App"] =36;
EQ_METRIC_MAP["Simple Response For a Class"] =37;
EQ_METRIC_MAP["Number of Static Methods"] =38;
EQ_METRIC_MAP["CBO Lib"] =39;
EQ_METRIC_MAP["Number of Overridden Methods"] =40;
var EQ_SELECTED_CLASS_METRIC 		= "Coupling";
var EQ_SELECTED_PACKAGE_METRIC 	= "Coupling";
var EQ_SELECTED_PROJECT_METRIC 	= "Class Lines of Code";
var EQ_CLASS_METRIC_INDEX 	= EQ_METRIC_MAP[EQ_SELECTED_CLASS_METRIC];
var EQ_PACKAGE_METRIC_INDEX	= EQ_METRIC_MAP[EQ_SELECTED_PACKAGE_METRIC];
var EQ_PROJECT_METRIC_INDEX 	= EQ_METRIC_MAP[EQ_SELECTED_PROJECT_METRIC];
var EQ_COLOR_OF_LEVELS = ["#1F77B4","#007F24","#62BF18","#FFC800","#FF5B13","#E50000"];
var EQ_CLASS_METRICS = ["C3","Complexity","Coupling","Lack of Cohesion","Size","Class Lines of Code","Weighted Method Count","Degree","OutDegree","InDegree","Coupling Between Object Classes","Access to Foreign Data","Number of Fields","Specialization Index","Class-Methods Lines of Code","Number of Children","Depth of Inheritance Tree","Number of Methods","Response For a Class","Lack of Tight Class Cohesion","Lack of Cohesion of Methods","Number of Static Fields","Lack of Cohesion Among Methods(1-CAM)","CBO App","Simple Response For a Class","Number of Static Methods","CBO Lib","Number of Overridden Methods"];
var EQ_PACKAGE_METRICS = ["C3","Complexity","Coupling","Lack of Cohesion","Size","Number of Entities","Class Lines of Code","Efferent Coupling","Number of Interfaces","Number of Classes","Afferent Coupling","Weighted Method Count","Degree","Normalized Distance","Abstractness","Instability","OutDegree","InDegree"];
var EQ_PROJECT_METRICS = ["Number of Highly Problematic Classes","Number of Entities","Number of Problematic Classes","Class Lines of Code","Number of External Packages","Number of Packages","Number of External Entities"];
function EQ_GET_COLOR(d) {
if(d.metrics)
return EQ_COLOR_OF_LEVELS[d.metrics[EQ_CLASS_METRIC_INDEX]];
if(d.pmetrics)
return EQ_COLOR_OF_LEVELS[d.pmetrics[EQ_PACKAGE_METRIC_INDEX]];
if(d.prmetrics)
return EQ_COLOR_OF_LEVELS[d.prmetrics[EQ_PROJECT_METRIC_INDEX]];
return EQ_COLOR_OF_LEVELS[0];
}
