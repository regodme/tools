"use strict";
function getAllowHeader() {
    var a = localStorage.getItem("allowOrigin") || "";
    return a = a ? a : "*"
}

function handleResponse(a) {

    let CORS = false;

    for (let i in a.responseHeaders) {
        if (a.responseHeaders[i].name == "Access-Control-Allow-Origin" &&
            a.responseHeaders[i].value == "*")
        CORS = true;
    }

    if (!CORS) {
        a.responseHeaders.push({
            name: "Access-Control-Allow-Origin",
            value: getAllowHeader()});
        a.responseHeaders.push({
            name: "Access-Control-Allow-Credentials",
            value: "true"});
    }

    return {responseHeaders:a.responseHeaders};
}
function setOn() {
    chrome.browserAction.setBadgeText({
                                      text: "on"
                                      }),
    chrome.browserAction.setBadgeBackgroundColor({
                                                 color: [0, 0, 0, 0]
                                                 }),
    chrome.webRequest.onHeadersReceived.addListener(handleResponse, {
                                                    urls: ["<all_urls>"],
                                                    types: ["xmlhttprequest"]
                                                    }, ["responseHeaders","blocking"]);
}
function setOff() {
    chrome.browserAction.setBadgeText({
                                      text: "off"
                                      }),
    chrome.browserAction.setBadgeBackgroundColor({
                                                 color: [128, 128, 128, 200]
                                                 }),
    chrome.webRequest.onHeadersReceived.removeListener(handleResponse)
}
localStorage.getItem("on") ? setOn() : setOff(),
chrome.browserAction.onClicked.addListener(function() {
                                           localStorage.getItem("on") ? (localStorage.setItem("on", ""),
                                                                         setOff()) : (localStorage.setItem("on", "1"),
                                                                                      setOn())
                                           });
