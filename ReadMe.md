# Credit Hours App

website for register hours for first and second semester
## you can do 

* you can register/unregister in subjects of semester
* you can signup to receive username and password on email message
* you can login with username and password

## Install

* you need to install python3
* you need to install pip or pip3 package

## Run the project

* download the project 
* open the project in terminal by press `Ctrl-Alt+T`
* install virtualenv `pip3 install virtualenv`
* init your virtualenv `virtualenv env`
* active virtualenv `source env/bin/activate`
* you should install mariadb on your machine
* create you databse in mariadb
* open `credit_hours/config/settings.py`
* put database information
* install required packages on virtualenv `pip3 install -r requirements.txt`
* migrate models to create tables in db `python3 manage.py migrate`
* enter credit_hours directory `cd credit_hours`
* run server `python3 manage.py runserver`
* open browser on this link `http://127.0.0.1:8000/`

### photo of site

###### Sign Up Page
![alt text](https://github.com/Mohamed-awad/Credit-hours-app/blob/master/imgs/1.png)

###### Login Page
![alt text](https://github.com/Mohamed-awad/Credit-hours-app/blob/master/imgs/2.png)

###### Semester Page
![alt text](https://github.com/Mohamed-awad/Credit-hours-app/blob/master/imgs/3.png)

###### Register Subjects Page
![alt text](https://github.com/Mohamed-awad/Credit-hours-app/blob/master/imgs/4.png)

###### maximum hours Page
![alt text](https://github.com/Mohamed-awad/Credit-hours-app/blob/master/imgs/5.png)

