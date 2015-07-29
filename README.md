# Publish-to-ArcGIS
###Publish your SPSS analysis to Esri ArcGIS platform.

Map your IBM SPSS data in Esri® ArcGIS Online.   Export, transfer, load, your data for map visualization and deeper geospatial analytics.   This node relies on the Requests API. 

![Map](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Publish-to-ArcGIS/master/Screenshot/Illustration1.png)
![Map](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Publish-to-ArcGIS/master/Screenshot/Illustration3.PNG)
![Map](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Publish-to-ArcGIS/master/Screenshot/Illustration2.png)

Check some live demos here:
- [Geospatial Analysis on Twitter Data in the Esri Dev Summit 2015][10]
- [Visualization of Crime Prediction ][12]

---
Requirements
----
- IBM SPSS Modeler v16 or later
- IBM SPSS Modeler 'R Essentials' Plugin
- R 2.15.x or R 3.1

More information here: [IBM Predictive Extensions][2]


---
Installation instructions
----
1. Download the extension: [Download][3] 
2. Close IBM SPSS Modeler. Save the .cfe file in the CDB directory, located by default on Windows in "C:\ProgramData\IBM\SPSS\Modeler\16\CDB" or under your IBM SPSS Modeler installation directory.
3. Restart IBM SPSS Modeler, the node will now appear in the Model palette.

---
R Packages used
----
The R packages will be installed the first time the node is used as long as an Internet connection is available.
- [RCurl][4]
- [plyr][11]
- [httr][13]
- [rjson][14]

---
Documentation and samples
----
- Find a PDF with the documentation of this extension in the [Documentation][5] directory
- There is a sample available in the [example][6] directory


---
License
----

[Apache 2.0][1]


Contributors
----

  - Armand Ruiz ([armand_ruiz](https://twitter.com/armand_ruiz))


[1]: http://www.apache.org/licenses/LICENSE-2.0.html
[2]:https://developer.ibm.com/predictiveanalytics/downloads/#tab2
[3]:https://github.com/IBMPredictiveAnalytics/PlotGeospatialData/raw/master/Source%20code/plotSpatialData.cfe
[4]:https://cran.r-project.org/web/packages/RCurl/
[5]:https://github.com/IBMPredictiveAnalytics/Publish-to-ArcGIS/raw/master/Documentation/PushToArcGIS-SPSSModelerExtension.pdf
[6]:https://github.com/IBMPredictiveAnalytics/Publish-to-ArcGIS/tree/master/Example
[10]:https://developer.ibm.com/predictiveanalytics/2015/03/11/tweets-during-esri-dev-summit-and-bnp-paribas-open/
[11]:https://cran.r-project.org/web/packages/plyr/
[12]:https://developer.ibm.com/predictiveanalytics/2015/03/11/crime-prediction-using-ibm-spss-modeler-and-arcgis/
[13]:https://cran.r-project.org/web/packages/httr/
[14]:https://cran.r-project.org/web/packages/rjson/
[20]:https://www.youtube.com/watch?v=M__XUbiWf30
