Author: Xin Ning
Email: xning@vt.edu 
Time: September 10, 2020

Note: This is a package of codes used for downloading and converting 
	ERS international baseline projection database into HAR file. 
	The default year of publishment is set to 2020. If you want to 
	download a different year of publishment, you need to open 
	"baseline_download_from_ers.py", go to the second of the last 
	line of the file, where the code is written as "intbase_webscrape('2020')", 
	change '2020' to year of your pick, such as '2019'. 

List of files included:
	baseline_download_from_ers.py
	setsmaps.har
	baseline_data.bat
	baseline_data.inp
	baseline_data.tab
	baseline_data.cmf
	baseline_data_mod.sti
	baseline_data_mod.tab
	baseline_data_mod.cmf
	README.txt 

To use it, simply double click "baseline_data.bat", it will automatically 
complete the process and generate the output files as below:
	InternationalBaseline.xlsx
	baseline_model_regions.har

To ensure its success, the required programs are (they are already included in GEMPACK):
	csv2har.exe
	modhar.exe
	tablo.exe
	gemsim.exe
	
To ensure success running of Python script, one need to change the first two lines of 
"baseline_data.bat" to the correct PATH of python.exe in your computer. Also, the required 
packages used in python are:
	re
	bs4 
	urllib 
	requests
	pyexcel
	openpyxl
	xlwings 
	pandas 


Please contact me if you encounter any issues with it. Thanks!