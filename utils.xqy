module namespace u = "http://utils";

declare function u:start() {
    let $_ := xdmp:set-server-field(concat("dt"||xdmp:request()), fn:current-dateTime())
    return ()
};

declare function u:duration() {
    xdmp:get-server-field(concat("dt",xdmp:request())) - fn:current-dateTime()
    || "&#10;"
};


declare function u:verify-pre() {
    u:verify-pre("Documents")
};

declare function u:verify-pre($dbname) {
    xdmp:eval('if (fn:doc-available("testdoc")) then () else "FAIL PRECHECK"',
        (),
        <options xmlns="xdmp:eval">
            <database>{xdmp:database($dbname)}</database>
        </options>)
};

declare function u:verify() {
    if (fn:doc-available("testdoc")) then "FAIL" else ()
};
