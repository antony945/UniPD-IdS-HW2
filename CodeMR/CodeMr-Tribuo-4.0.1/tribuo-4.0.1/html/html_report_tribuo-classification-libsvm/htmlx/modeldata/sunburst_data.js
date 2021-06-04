function EQ_GET_DATA(){ 
	  var ret = {
"name": " tribuo-4.0.1 working set: {tribuo-classification-libsvm}", "value":37899, 
"prmetrics":{"5":1,"6":1,"7":1,"8":1,"9":2,"10":1,"11":1},
"prmetricvalues":{"5":0,"6":9,"7":0,"8":352,"9":14,"10":1,"11":33},
"children": [ {
"name": "org.tribuo.classification.libsvm", "key": "g3", "value":352, 
"pmetrics":{"4":2,"12":2,"13":1,"14":2,"3":1,"1":1,"0":2,"6":2,"8":2,"2":2,"15":1,"16":1},
"pmetricvalues":{"17":10,"4":2,"12":6,"13":0,"14":9,"3":1,"1":1,"0":2,"18":0.143,"6":9,"19":0.0,"8":352,"20":0.857,"21":9,"2":2,"15":1,"22":1,"16":55},
"children":[
{
"name": "LibSVMClassificationModel","key": "g4","value":58, 
"metrics":{"23":2,"24":2,"25":1,"26":1,"27":1,"28":1,"29":2,"0":2,"30":1,"31":1,"32":1,"33":1,"34":1,"35":1,"36":1,"37":1,"38":1,"39":1,"16":1,"40":1,"4":2,"8":2,"2":2,"3":1,"1":2},
"metricvalues":{"23":7,"24":2,"17":2,"25":0,"26":0.0,"27":37,"28":0,"29":2,"0":2,"30":2,"31":6,"32":0.0,"33":0.0,"34":1,"35":0.25,"21":1,"36":4,"37":4,"22":1,"38":0,"39":3,"16":11,"40":0,"4":2,"8":58,"2":2,"3":1,"1":2}
},
{
"name": "LibSVMOptions","key": "g;","value":21, 
"metrics":{"23":1,"24":1,"25":1,"26":1,"27":1,"28":1,"29":1,"0":1,"30":1,"31":1,"32":1,"33":1,"34":1,"35":1,"36":1,"37":1,"38":1,"39":1,"16":1,"40":1,"4":1,"8":1,"2":1,"3":1,"1":1},
"metricvalues":{"23":5,"24":0,"17":2,"25":5,"26":0.0,"27":7,"28":0,"29":0,"0":1,"30":1,"31":4,"32":0.0,"33":0.0,"34":0,"35":0.0,"21":1,"36":5,"37":3,"22":1,"38":0,"39":0,"16":1,"40":0,"4":1,"8":21,"2":1,"3":1,"1":1}
},
{
"name": "LibSVMClassificationTrainer","key": "g5","value":66, 
"metrics":{"23":2,"24":1,"25":1,"26":1,"27":1,"28":1,"29":1,"0":2,"30":1,"31":1,"32":1,"33":1,"34":1,"35":1,"36":2,"37":1,"38":1,"39":1,"16":1,"40":1,"4":2,"8":2,"2":2,"3":1,"1":1},
"metricvalues":{"23":9,"24":1,"17":2,"25":0,"26":0.0,"27":42,"28":0,"29":1,"0":2,"30":5,"31":15,"32":0.0,"33":0.0,"34":0,"35":0.6,"21":1,"36":6,"37":8,"22":1,"38":0,"39":3,"16":10,"40":0,"4":2,"8":66,"2":2,"3":1,"1":1}
},
{
"name": "TrainTest","key": "mn","value":21, 
"metrics":{"23":1,"24":1,"25":1,"26":1,"27":1,"28":1,"29":1,"0":1,"30":1,"31":1,"32":1,"33":1,"34":1,"35":1,"36":1,"37":1,"38":1,"39":1,"16":1,"40":1,"4":1,"8":1,"2":1,"3":1,"1":1},
"metricvalues":{"23":0,"24":0,"17":1,"25":0,"26":0.0,"27":0,"28":0,"29":0,"0":1,"30":0,"31":0,"32":0.0,"33":0.0,"34":0,"35":0.0,"21":1,"36":0,"37":0,"22":0,"38":0,"39":0,"16":0,"40":0,"4":1,"8":21,"2":1,"3":1,"1":1}
},
{
"name": "TestLibSVM","key": "lN","value":155, 
"metrics":{"23":3,"24":1,"25":1,"26":1,"27":2,"28":1,"29":1,"0":3,"30":1,"31":1,"32":5,"33":1,"34":1,"35":3,"36":3,"37":1,"38":1,"39":1,"16":2,"40":1,"4":2,"8":2,"2":3,"3":3,"1":2},
"metricvalues":{"23":19,"24":1,"17":2,"25":0,"26":0.0,"27":110,"28":0,"29":0,"0":3,"30":13,"31":41,"32":0.972,"33":0.0,"34":1,"35":0.762,"21":1,"36":16,"37":23,"22":1,"38":2,"39":3,"16":23,"40":0,"4":2,"8":155,"2":3,"3":3,"1":2}
},
{
"name": "SVMClassificationType","key": "ka","value":31, 
"metrics":{"23":1,"24":1,"25":1,"26":1,"27":1,"28":1,"29":1,"0":1,"30":1,"31":1,"32":4,"33":3,"34":1,"35":1,"36":1,"37":1,"38":1,"39":1,"16":1,"40":1,"4":1,"8":1,"2":1,"3":1,"1":1},
"metricvalues":{"23":1,"24":0,"17":2,"25":1,"26":0.0,"27":21,"28":0,"29":0,"0":1,"30":8,"31":8,"32":0.857,"33":0.75,"34":1,"35":0.437,"21":1,"36":0,"37":0,"22":1,"38":0,"39":1,"16":8,"40":0,"4":1,"8":31,"2":1,"3":1,"1":1}
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
