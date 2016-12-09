import module namespace u = "http://utils" at "/utils.xqy";
u:verify-pre();

import module namespace u = "http://utils" at "/utils.xqy";
u:start();

if (fn:doc-available("testdoc"))
then xdmp:document-delete("testdoc")
else ()
;

import module namespace u = "http://utils" at "/utils.xqy";
u:duration();

import module namespace u = "http://utils" at "/utils.xqy";
u:verify();


