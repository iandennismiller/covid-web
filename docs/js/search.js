var searchIndex;
var results_node = document.getElementById("results");
var citations;

var indexLoaded = function (e) {
    var resp = pako.inflate(e.target.response, { to: 'string' });
    var data = JSON.parse(resp);
    searchIndex = lunr.Index.load(data);
    document.getElementById("wait").style.display = "none";
    document.getElementById("search").placeholder = "ready to search";
    document.getElementById("search").disabled = false;
    document.getElementById("search").focus();
}

var citationsLoaded = function (e) {
    var resp = pako.inflate(e.target.response, { to: 'string' });
    citations = JSON.parse(resp);
}

var search = function(query) {
    results = searchIndex.search(query);
    results_node.innerHTML = "";

    for (var idx in results) {
        var cite_data = citations[results[idx].ref];

        var link_node = document.createElement("a");
        link_node.appendChild(document.createTextNode(cite_data['t']));
        link_node.href = "/articles/" + results[idx].ref.toLowerCase() + ".html";
        link_node.className = "search-result";

        var meta_node = document.createElement("p");
        meta_node.appendChild(document.createTextNode(cite_data['a'] + ". (" + cite_data['y'] + "). " + cite_data['j'] + "."));

        var list_node = document.createElement("LI");
        list_node.appendChild(link_node);
        list_node.appendChild(meta_node);

        results_node.appendChild(list_node);
        // console.log(results[idx]);
        // console.log(results[idx].matchData.toString());
        // console.log(idx);
        if (idx > 20) {
            break;
        }
    }

    if (results.length == 0) {
        var list_node = document.createElement("LI");
        list_node.appendChild(document.createTextNode("No results"));
        results_node.appendChild(list_node);
    }

}

var search_from_field = function() {
    var query = document.getElementById("search").value;
    search(query);
}

var xhr = new XMLHttpRequest;
xhr.responseType = "arraybuffer";
xhr.open('get', '/data/index.json.gz');
xhr.addEventListener('load', indexLoaded);
xhr.send();

var xhr_citations = new XMLHttpRequest;
xhr_citations.responseType = "arraybuffer";
xhr_citations.open('get', '/data/citations.json.gz');
xhr_citations.addEventListener('load', citationsLoaded);
xhr_citations.send();

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
