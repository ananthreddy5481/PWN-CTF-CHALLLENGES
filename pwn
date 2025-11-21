https://pwn.college/fundamentals/talking-web/
LEVEL-1 :-

/challenge/server - starting the web server so that it listens our call.

it listens to the call on the  http://challenge.localhost:80 so then it will give the flag.

FLAG   ---   pwn.college{kg2HyeCJ7UxevNi0uzqrxcvLzjh.0lMxgDNxwyM0YTNOEzW}


LEVEL 2 :-

firstly open the flask code in the webserver CAT /CHALLENGE/SERVER.

in the code search for the endpoint and then join it to the url to navigate to the flast.  END POINT - /check that is in the line @app.route("/check"....) .

the app is a varible like thing which store the urls and their logics like which file should triger when we click a thing.

FLAG   ---- pwn.college{ARHy7Cbz-HLqfTdqD1KToWTcwlh.01MxgDNxwyM0YTN0EzW}


LEVEL 3 :- 

the flag is hidden form the website interface by changing into the comment of the html code for the website interface.

open the page source to find the comment.

FLAG ---  pwn.college{Q04knrm8_8BGZp9egGFwFgo7-Bc.0FNxgDNxwyM0YTN0EzW}

LEVEL 4 :- 

navigate to the endpoint. more tools -> web developer tools -> in that network panel in the response header there is our flag.

FLAG -- pwn.college{Y0vZKMMSH6XqgUsHFLFvbktPIBX.0VNxgDNxwyM0YTN0EzW}


LEVEL 5 :-

turn on the webserver in the terminal and open another terminal to communicate with the webserver using the netcat.

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
find the endpoint and then activate the web server.

then make a GET command using the curl as following CURL "HTTP://CHALLENGES.LOCALHOST:80/AUTHENTICATE".

FLAG -- pwn.college{oZXoGGMzxAaVeOuXXpntS5zH802.QX0cjMzwyM0YTN0EzW}

LEVEL 8:-

create a python file in the server with using the requests and run that in the terminal to get the total html.

PYTHON CODE:-
IMPORT REQUESTS
P=("HTTP://CHALLENGE.LOCALHOST/ENTRY")
PRINT(P.TEXT)

pwn.college{8RV-epu6ijm0ljrZrifgzsC0gzi.QX2cjMzwyM0YTN0EzW}


LEVEL 9 :-

->find the http header that the site is allowing in the line app.config["server name"]="wargame.nexus"

->here wargame.nexus is the new approved wargame.nexus

->then write python code.

pwn.college{UzsKIkSgM82LHhG33gwJ9mkWS2R.QXzcjMzwyM0YTN0EzW}


LEVEL 10 :-

->header setting using the curl : curl -H "Header-name : header-value" website url.  in our case header_name -- Host and the name is in the webserver backend code.

pwn.college{UT6OYfZxnWVn-smMwaC4imP-Z9D.QXxcjMzwyM0YTN0EzW}


LEVEL 11:-
->firstly see the web server code then you will find the required server name that is : "websec.fr" .   
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
-->get the endpoint and data input that the webserver is expecting is in the form data that is visible in the line flask.request.form.get 
that line tells that we should use the form data to give the input instead of the query strings that we use in the GET method.
the query strings are visible in the url so to avoid that we need to send that in the dorm data.

curl -X POST -d "key=ozgvqkes" "http://challenge.localhost/hack"

for the query string submission we will get the requests.args  (arguments)
pwn.college{gYveIg8B8jx2rx5DHGhNDDIyJ0l.QX2gjMzwyM0YTN0EzW}

LEVEL 21:-

open the challenge there we can get the endpoint and and the parameters that needed for the input.then run the challenge.

then open the other terminal to make the curl POST request.the following command is 
 curl -X POST -d "access=rdhrth" -d "auth_soc=nrgbr" -d "challenge=dherb" "http://challenge.localhost/endpoint"
                                            (or)
curl -X POST -d "access=drheb&auth_socket=erhetb&challenge=fgbrmn" "http://challenge.localhost/endpoint"






















































