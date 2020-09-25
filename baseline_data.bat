call "G:\Programs\anaconda3\Scripts\activate.bat"
G:\Programs\anaconda3\python.exe baseline_download_from_ers.py

del baseline_data.har
csv2har baseline_data.inp 
if errorlevel 1 goto error
tablo -pgs baseline_data
if errorlevel 1 goto error
gemsim -cmf baseline_data.cmf
if errorlevel 1 goto error

modhar -sti baseline_data_mod.sti 
if errorlevel 1 goto error
tablo -pgs baseline_data_mod
if errorlevel 1 goto error
gemsim -cmf baseline_data_mod.cmf
if errorlevel 1 goto error

echo FINISHED OK
del InternationalBaseline2.csv
del baseline_data.har
del baseline_model_regions_2.har
del *.bak
del *.inf
del *.min
del *.gss
del *.gst
del gp**.log 
goto endbat
:error
Pause ERROR !!!!!!!!!!!!
:endbat