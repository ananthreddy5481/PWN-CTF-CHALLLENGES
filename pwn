https://pwn.college/fundamentals/talking-web/
LEVEL-1 :-

/challenge/server - starting the  server so that it listens our call.

it listens to the call on the  http://challenge.localhost:80 so then it will give the flag.

FLAG   ---   pwn.college{kg2HyeCJ7UxevNi0uzqrxcvLzjh.0lMxgDNxwyM0YTNOEzW}


LEVEL 2 :-

firstly open the flask code in the server CAT /CHALLENGE/SERVER.

in the code search for the endpoint and then join it to the url to navigate to the flast.  END POINT - /check that is in the line @app.route("/check"....) .

the app is a varible like thing which store the urls and their logics like which file should triger when we click a thing.

FLAG   ---- pwn.college{ARHy7Cbz-HLqfTdqD1KToWTcwlh.01MxgDNxwyM0YTN0EzW}


LEVEL 3 :- 

the flag is hidden form the website interface by changing into the comment of the html code for the website interface.

open the page source to find the comment. (in the browser right click)

FLAG ---  pwn.college{Q04knrm8_8BGZp9egGFwFgo7-Bc.0FNxgDNxwyM0YTN0EzW}

LEVEL 4 :- 

navigate to the endpoint. more tools -> web developer tools -> in that network panel in the response header there is our flag.

FLAG -- pwn.college{Y0vZKMMSH6XqgUsHFLFvbktPIBX.0VNxgDNxwyM0YTN0EzW}


LEVEL 5 :-

turn on the server in the terminal and open another terminal to communicate with the server using the netcat.

first running the webserver will give the address of the server like challenge.localhost with the port of 80.

then command the nc challenge.localhost 80  and write the GET command to call the endpoint "/" in the terminal.[ GET / HTTP/1.1]

FLAG -- pwn.college{EVgLMuKjS7UKbgPKLCFpi9yFjN4.QX5YjMzwyM0YTN0EzW}


HOW TO WRITE THE GET STATEMENT :

GET PATH TO THE DESTINATION FOLDER HTTP/VERSION              PATH FORMAT -- /HOME/FOLDER/PHOTOS ETC            VERSION IS LIKE 1.0  ;  1.1


LEVEL 6 :-

same like the above one just see the endpoint in the html of the server.

now write the GET statement according to that.  GET /verify HTTP/1.1

FLAG   --  pwn.college{0Hih0uMmEFRa6P7bNy1bCXNesMR.QX1cjMzwyM0YTN0EzW}


LEVEL 7 :-
find the endpoint and then activate the server.

then make a GET command using the curl as following CURL "HTTP://CHALLENGES.LOCALHOST:80/AUTHENTICATE".

FLAG -- pwn.college{oZXoGGMzxAaVeOuXXpntS5zH802.QX0cjMzwyM0YTN0EzW}

LEVEL 8:-

open the python window in the terminal.

PYTHON CODE:-
IMPORT REQUESTS
P=requests.get("HTTP://CHALLENGE.LOCALHOST/ENTRY")
PRINT(P.TEXT)

pwn.college{8RV-epu6ijm0ljrZrifgzsC0gzi.QX2cjMzwyM0YTN0EzW}


LEVEL 9 :-

->find the http host header that the site is allowing in the line app.config["server name"]="wargame.nexus"

->here wargame.nexus is the new approved hostname.

->then write python code.

pwn.college{UzsKIkSgM82LHhG33gwJ9mkWS2R.QXzcjMzwyM0YTN0EzW}


LEVEL 10 :-

->header setting using the curl : curl -H "Header-name : header-value" website url.  in our case header_name -- Host and the name is in the webserver backend code.

pwn.college{UT6OYfZxnWVn-smMwaC4imP-Z9D.QXxcjMzwyM0YTN0EzW}


LEVEL 11:-
->firstly see the server code then you will find the required server name that is : "websec.fr" .   
->using that make a curl statement to see the request headers that we send :::      curl -v -H "Host: websec.fr"http://challenge.localhost/gateway

->netcat command:
->nc challenge.localhost 80 
->GET /gateway HTTP/1.1
->hOST: THE HOST THAT WE GOT AS OUTPUT

pwn.college{QHnUnK60DGFTkeQ-q5Yxb7PZcij.QXycjMzwyM0YTN0EzW}


LEVEL 12:-
--> find the endpoint by opening the server code.
--> run the server.
--> access the site using the nc    nc challenge.localhost 80
--> then make a get statement like this GET /qualify%20task%20attempt HTTP/1.1  Host: challenge.localhost

pwn.college{Qk-jS5H7BLrtGvfi_3w01VjmeJT.QX5cjMzwyM0YTN0EzW}

LEVEL 13:-
--> find the endpoint from the server and then search for the query parameters and parameter values.
--> make a nc command and access the site then make a GET request in the following way 

GET /authenticate(endpoint)?security(queryparameter)=quetywb(queryparametervalue) HTTP/1.1
--> in this level host checking is enabled in the backed so add HOST name after the get request.
pwn.college{ICbdHqae1_1fntlLCmjN8NOdph9.QXwgjMzwyM0YTN0EzW}



LEVEL 14:-
-->same like above find the end point.
-->in the get statement just make the more than one query checks by using the "&" in the middle of the each query.
pwn.college{sjMYIYTHkJTr8lfXh_5vBSlUfVF.QX0gjMzwyM0YTN0EzW}

LEVEL 15:-
-->get the endpoint and query parameters and their values.
-->curl "http://challenge.localhost/qualify?hash=neinrg&security_token=erhet&verify=gererb" 
here the double quotes are required to recongnise the function of the special charecters(?,=) in the following url.
pwn.college{gg63K1mef_UA7KgwcvB8eYgsi7D.QXzgjMzwyM0YTN0EzW}

LEVEL 16:-
--->run the challenge server in the terminal and then open the form then navigate to the url and form is shown fill it with the
form data that is in the server.

pwn.college{eronBbeoRENBnvehn.repbnm0erinbbe0bmetbea_btbAFVsv}

LEVEL 17:-
-->get the endpoint and data input that the server is expecting is in the form data that is visible in the line flask.request.form.get 
that line tells that we should use the form data to give the input instead of the query strings that we use in the GET method.
the query strings are visible in the url so to avoid that we need to send that in the form data.

curl -X POST -d "key=ozgvqkes" "http://challenge.localhost/hack"

for the query string submission we will get the requests.args  (arguments)
pwn.college{gYveIg8B8jx2rx5DHGhNDDIyJ0l.QX2gjMzwyM0YTN0EzW}

LLEVEL 18:-
get the endpoint of the challenge and run the server.
then run the netcat command.
nc challenge.localhost 80
POST /endpoint HTTP/1.1
content-type: application/x-www-form-urlencoded
content-length: length of the entry data

enter the data to be transfered.

pwn.college{esnowinv.AHiegn_egerhAFEvrgEGvregerh.}

LEVEL 19:-
get the endpoint then run the server.
in the other terminal run the python then code the python code requests there
run import requests
P="http://challenge.localhost:80/endpoint"
data={"data-name" : "data-value"}
answer=requests.post(P,data=data)
print(answer.text)

pwn.college{ivhowi13vohr339vere58ebdihCN35_HR4.EV24jf}

LEVEL 20:-
in this level we need to write the javascript that we are directly eastblishing
the comunication with the site without actual forms. the java scipt is :

f=document.createElement("form");f.method="POST";f.action="http://challenge.localhost:80/task";i=document.createElement("input");i.name="flag";i.value="test";f.appendChild(i);document.body.appendChild(f);f.submit();

then get the flag.

LEVEL 21:-

open the challenge there we can get the endpoint and and the parameters that needed for the input.then run the challenge.

then open the other terminal to make the curl POST request.the following command is 
 curl -X POST -d "access=rdhrth" -d "auth_soc=nrgbr" -d "challenge=dherb" "http://challenge.localhost/endpoint"
                                            (or)
curl -X POST -d "access=drheb&auth_socket=erhetb&challenge=fgbrmn" "http://challenge.localhost/endpoint"


pwn.college{UKGkLvvHMKAgG-e7bc1aZggxtC0.QX5gjMzwyM0YTN0EzW}


level 22:-
firstly open the server and check for the form data and rnd point and start the web server.

the nc POST request for multiple parameters is as follows:
nc challenge.localhost 80
POST /gate HTTP/1.1
Host: challenge.localhost
Content-Type: application/x-www-form-urlencoded
Content-Length: 76

then the parameters divided by the "&" without the spaces.

pwn.college{ENLvOFpKCQwhhBQvtzl0EpuGPaF.QXwkjMzwyM0YTN0EzW}

level 23:-

open the server backend code in that we can see the first url and point and
then using that new endpoint make a new get request using the new end make another get request.
 nc challenge.localhost 80
GET / HTTP/1.1
Host: challenge.localhost

then you will get the new endpoint as saying that redirect.
nc challenge.localhost 80
GET newendpoint HTTP/1.1
Host: challenge.localhost

pwn.college{oobULde-pmeSXwujhKFHcPSPtdD.QX5kjMzwyM0YTN0EzW}

level 24:-
in this we were using the curl so in the curl there are two techniques:
1)using the -L this will directly redirect the link that url is directing.
2)another is normal directly using curl normally it will show the redirecting link and then we should make request using the given endpoint.
the curl command is:

curl -L "http://challenge.localhost//"   ---> this will directly give the redirected link.

pwn.college{kvKZRMTe3pcBUn-a7jN9JgNPlZV.QX4kjMzwyM0YTN0EzW}

level 25:-

in this it is uisng the python and python will directly shows the final results of the redirection.
just give the get requests 
python
>>import requests
>>p = requests.get("http://challenge.localhost//")
>>print(p.text)
pwn.college{wnPHHa5KYKRQ9qKSoYYsTM3yI7d.QXwAzMzwyM0YTN0EzW}

level 26:-
in this level the server is not local like we do not need to run the server(/challenge/server).
use the curl command to see the cookie that is being set 
curl -v "http://challenge.localhost"    it will give the cookie value in the setcookie line.
curl --cookie "(cookiename"=(cookievarible) http://challenge.localhost  --> this will give the answer.
pwn.college{U8xsBDkKHD4OC1McZAtBnU7GdMZ.QXxAzMzwyM0YTN0EzW}

level 27:-
this task also do not have the local server.
so run the nc command in that use the 
nc challenge.localhost 80
Get / HTTP/1.1
Host: challenge.localhost then it will give the cookie name and value there.
then again repeat the same after host add 
Cookie: <paste the cookie that you got there>

pwn.college{Im_g02h1JuV5IIiwlVtSCS4TEyq.QXyAzMzwyM0YTN0EzW}

Level 28:-
pyhton do not need to add the cookies manually! using the requests.session() will help.
import requests
p = requests.session()                         //in this the p is storing the session details like the cookie number and all.
r1 = p.get"http://challenge.localhost"
print("cookie",p.cookies)
q = p.get("http://challenge.localhost")
print(q.text)

but in this question the flag is coming automaticaly without knowing or entering the cookies.
directly by using the get .
pwn.college{gsuqZpC1lR4F02Qf4wqjCJl4-wB.QXzAzMzwyM0YTN0EzW}


Level 29:-
the above same method applies for any number of cookies.

but the in this level also there is only 1 cookie.

pwn.college{k3PvMY7oMeWAeuxFCd0Wm_nLtgl.QX2AzMzwyM0YTN0EzW}


Level 30:-

in this level we should create a webserver using the old server codes and should modify the port to 1337(some ports need the root user permissions)
and also make some changes to make the server simple.

run the server pyhton3 talk
in another terminal run /challenge/client
it will return the flag in the other terminal by sending the query from the present terminal.
pwn.college{EDgAIVphv9rkIgVejxGt3oBIhZU.0VOzgDNxwyM0YTN0EzW}

here we are actually building a server called talk with the old code with the port no of 1337 and starting the server using the "pyhton3 talk"

then after that we are starting the /challenge/client which is instructed to send a request for the flag.
that requests are visible in the terminal of the talk server because the terminal is storing the requests that it gets.
if we try to access the /challenge/client without running the talk server then it will show error that the server is not working stating that 
there is noone to listen in the port 1337.

level 31:-
in this there three parts 
1)make the webserver to redirect to the other server which has the endpoint /attempt.

2)then run the webserver(talk) and run the server (/challenge/server) then open other terminal and run the client (/challenge/client).\
3) the server will have the flag and when the client tries to send the request to the webserver(talk) then that redirects him to the 
/challenge/server which have the flag the /challenge/client directly sends the request to the servers for the flag but in the previous case
he sent the request which itself cointain the flag. 

pwn.college{gKRtfe92Vef7hxvBj7kxMf7gdXO.0FM0gDNxwyM0YTN0EzW}

level 32:-







































