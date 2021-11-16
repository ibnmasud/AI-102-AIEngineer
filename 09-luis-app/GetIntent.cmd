@echo off

rem Set values for your Language Understanding app
set app_id=1b8adde8-0cdc-4628-958e-454188f823db
set endpoint=https://labs-lu.cognitiveservices.azure.com/
set key=6ad4a633a770458bb78755be126a8607

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"