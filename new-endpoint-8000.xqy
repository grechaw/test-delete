
xdmp:document-insert("testdoc", object-node { "a" : "b" }, 
 ( xdmp:permission("rest-writer", "update"), xdmp:permission("rest-reader", "read") ));

import module namespace u = "http://utils" at "/utils.xqy";
u:verify-pre();

import module namespace u = "http://utils" at "/utils.xqy";
u:start();

xdmp:http-delete(
"http://localhost:8000/v1/documents?uri=testdoc",
map:new()
    =>map:with("authentication", 
        map:new()
        =>map:with("method", "digest")
        =>map:with("username","admin")
        =>map:with("password","admin")))[false()];

import module namespace u = "http://utils" at "/utils.xqy";
u:duration();

import module namespace u = "http://utils" at "/utils.xqy";
u:verify();
