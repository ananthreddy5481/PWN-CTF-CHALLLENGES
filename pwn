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

