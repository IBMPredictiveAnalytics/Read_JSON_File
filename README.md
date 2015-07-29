# Read-JSON-File
###Read an array of JSON objects into a SPSS Modeler Table

This SPSS Modeler ‘source’ node allows you to import data from a JSON array. This node parses the data from a JSON file and puts it in a table that can be used in SPSS
The array is expanded to fit in a SPSS table. See Example for more information.


![Map](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Read-JSON-File/master/Screenshot/Illustration1_UserInput.png)
![Map](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Read-JSON-File/master/Screenshot/Illustration2_DialogBox.png)
![Map](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Read-JSON-File/master/Screenshot/Illustration3_OutputTable.PNG)



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
3. Restart IBM SPSS Modeler, the node will now appear in the Field Ops palette.

---
R Packages used
----
The R packages will be installed the first time the node is used as long as an Internet connection is available.
- [RJSONIO][4]
- [plyr][11]
 
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
[3]:https://github.com/IBMPredictiveAnalytics/Read-JSON-File/blob/master/Source%20code/readJSON.cfe
[4]:http://cran.r-project.org/web/packages/RJSONIO
[5]:https://github.com/IBMPredictiveAnalytics/Read-JSON-File/blob/master/Documentation/ImportJSONFile-SPSSModelerExtension.pdf
[6]:https://github.com/IBMPredictiveAnalytics/Read-JSON-File/tree/master/Example
[11]:https://cran.r-project.org/web/packages/plyr/
