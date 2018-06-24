!function() {
    "use strict";
    var a = document.querySelector(".options-save")
    , b = document.querySelector(".options-resume")
    , c = document.querySelector(".options-tips")
    , d = document.getElementById("allow-origin");
    d.value = localStorage.getItem("allowOrigin") || "",
    a.addEventListener("click", function(b) {
                       b.preventDefault(),
                       a.disabled = !0,
                       c.innerHTML = "",
                       localStorage.setItem("allowOrigin", d.value),
                       setTimeout(function() {
                                  a.disabled = !1,
                                  c.innerHTML = "Saved"
                                  }, 100)
                       }),
    b.addEventListener("click", function(a) {
                       a.preventDefault(),
                       b.disabled = !0,
                       c.innerHTML = "",
                       d.value = d.placeholder,
                       localStorage.setItem("allowOrigin", d.value),
                       setTimeout(function() {
                                  b.disabled = !1
                                  }, 100)
                       })
}();
