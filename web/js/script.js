var headers = document.getElementById("header");
var ass = headers.getElementsByClassName("item");
for (var i = 0; i < ass.length; i++) {
    ass[i].addEventListener("click", function () {
        var current = document.getElementsByClassName("active");
        if (current.length > 0) {
            current[0].className = current[0].className.replace(" active", "");
        }
        this.className += " active";
    });
}


