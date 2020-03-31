var searchIndex;
var results_node = document.getElementById("results");

var indexLoaded = function (e) {
    var resp = pako.inflate(e.target.response, { to: 'string' });
    var data = JSON.parse(resp);
    searchIndex = lunr.Index.load(data);
    document.getElementById("search").placeholder = "ready to search";
    document.getElementById("search").disabled = false;
    document.getElementById("search").focus();
    document.getElementById("wait").remove();
}

var search = function(query) {
    results = searchIndex.search(query);
    for (var idx in results) {
        var link_node = document.createElement("a");
        var link_text = document.createTextNode(results[idx].ref);
        link_node.appendChild(link_text)
        link_node.href = "/articles/" + results[idx].ref;

        var list_node = document.createElement("LI");
        list_node.appendChild(link_node);

        results_node.appendChild(list_node);
        // console.log(results[idx]);
        // console.log(results[idx].matchData.toString());
        // console.log(idx);
        if (idx > 20) {
            break;
        }
    }
}

var search_from_field = function() {
    var query = document.getElementById("search").value;
    search(query);
}

var xhr = new XMLHttpRequest;
xhr.responseType = "arraybuffer";
xhr.open('get', '/data/index.json.Z');
xhr.addEventListener('load', indexLoaded);
xhr.send();

var button_node = document.getElementById("search_button");
button_node.addEventListener("click", search_from_field); 

// Execute a function when the user releases a key on the keyboard
var search_input_node = document.getElementById("search");
search_input_node.addEventListener("keyup", function(event) {
// Number 13 is the "Enter" key on the keyboard
if (event.keyCode === 13) {
    // Cancel the default action, if needed
    event.preventDefault();
    // Trigger the button element with a click
    document.getElementById("search_button").click();
}
});
