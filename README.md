# Business Performance Dashboard
**Tools :**
- Google Bigquery Studio
- Looker Studio
- Github

## Project Background
As a Big Data Analysis Intern at Kimia Farma, I have been tasked of creating new analysis table from the provided dataset. The project will be evaluating Kimia Farma’s business performance  from 2020 to 2023 and developing a visualization dashboard 

## Task 1 : Importing Data
The first task of this project is importing the given dataset into Google Bigquery Studio

![There are 4 datasets that must be imported into BigQuery first, as shown in the picture below.](https://private-user-images.githubusercontent.com/76010363/311216536-bda8bbe4-fbb6-4eb1-8c19-bea0103d6a42.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDk4OTc1MzgsIm5iZiI6MTcwOTg5NzIzOCwicGF0aCI6Ii83NjAxMDM2My8zMTEyMTY1MzYtYmRhOGJiZTQtZmJiNi00ZWIxLThjMTktYmVhMDEwM2Q2YTQyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAzMDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMzA4VDExMjcxOFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTZhY2FiNzBkODkxNGFiYjlhNzJlYjBkY2U0ZjJhMTUzODVhNmU4MDk3NTMzYzljNjE1NDQ4MTkyOTNlMDcxMGMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.ZpsKDT77Q0VwBHcp_BTEmGXmIheVURh0b_1F7Mu6QRg)

## Task 2 : Creating Analysis Tables
![Before creating the visualization dashboard, I will first create a new analysis table with several requirements from the final task of my project. The output from my analysis table can be seen in the picture below.]([https://github.com/Sherlymch/Big-Data-Analytics-Kimia-Farma/issues/2#issue-2175872614](https://private-user-images.githubusercontent.com/76010363/311220068-0ac22c3b-0f80-41a7-8be9-c29b1547d783.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDk4OTg0NzMsIm5iZiI6MTcwOTg5ODE3MywicGF0aCI6Ii83NjAxMDM2My8zMTEyMjAwNjgtMGFjMjJjM2ItMGY4MC00MWE3LThiZTktYzI5YjE1NDdkNzgzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAzMDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMzA4VDExNDI1M1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWJmODRmNTExZWQ2ODgzYjJhOTFiYmMyZThkNDBmOTRjNzg0OTJjZTQ4MWQ2MmUzNTA0NjU4MWQ0NzE2MzA5YTkmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.LYhVw36FggGQmUu4azdAqfxvjrvcsu0BvpozoPQIG1Y)
![](https://private-user-images.githubusercontent.com/76010363/311220741-b03be983-59bd-4736-b1d7-fda7a09230bc.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDk4OTg1MjMsIm5iZiI6MTcwOTg5ODIyMywicGF0aCI6Ii83NjAxMDM2My8zMTEyMjA3NDEtYjAzYmU5ODMtNTliZC00NzM2LWIxZDctZmRhN2EwOTIzMGJjLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAzMDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMzA4VDExNDM0M1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTk3YzU0ZjM4MjU3ZTNmOWU3ZDZhY2U0NDdlMmE2MzBjNmYxOWIyNzhiNzAwMDE5ZTU4MDQ3MTY0YzcyNmZjOTYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.Ac876Oa1oq-Gri_KY7P0iwO4GnWS8jTCdmhmI4lgw78)

