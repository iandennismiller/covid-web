var searchIndex;
var results_node = document.getElementById("results");
var citations;


var indexLoaded = function (e) {
    var resp = pako.inflate(e.target.response, { to: 'string' });
    var data = JSON.parse(resp);
    searchIndex = lunr.Index.load(data);

    document.getElementById("wait").style.display = "none";
    // document.getElementById("search").placeholder = "ready to search";
    // document.getElementById("search").disabled = false;
    document.getElementById("search").focus();

    if (location.search != "") {
        search(get_search_query());
    }
    else {
        document.getElementById("search").placeholder = "ready to search";
    }
}


var citationsLoaded = function (e) {
    var resp = pako.inflate(e.target.response, { to: 'string' });
    citations = JSON.parse(resp);
}


var search = function(query) {
    var search_field = document.getElementById("search");
    if (search_field) {
        search_field.value = query;
    }

    results = searchIndex.search(query);
    results_node.innerHTML = "";

    for (var idx in results) {
        var cite_data = citations[results[idx].ref];

        var link_node = document.createElement("a");
        link_node.appendChild(document.createTextNode(cite_data['t']));
        link_node.href = "/articles/" + results[idx].ref.toLowerCase() + ".html";
        link_node.className = "search-result";

        var meta_node = document.createElement("p");
        var author_str = '👤 ' + cite_data['a'].join('; 👤 ');
        meta_node.appendChild(document.createTextNode(author_str + ". (" + cite_data['y'] + "). " + "📚 " + cite_data['j'] + "."));

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


var request_index = function() {
    var xhr = new XMLHttpRequest;
    xhr.responseType = "arraybuffer";
    xhr.open('get', '/data/index.json.gz');
    xhr.addEventListener('load', indexLoaded);
    xhr.send();    
}


var request_citations = function() {
    var xhr_citations = new XMLHttpRequest;
    xhr_citations.responseType = "arraybuffer";
    xhr_citations.open('get', '/data/citations.json.gz');
    xhr_citations.addEventListener('load', citationsLoaded);
    xhr_citations.send();
}


var init_search_field = function() {
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
}


var get_search_query = function() {
    var queryString = location.search; // Returns:'?q=123'
    let params = new URLSearchParams(queryString);
    let query = params.get("q");

    return(query);
}


var main = function() {
    init_search_field();
    request_index();
    request_citations();

    if (location.search != "") {
        var search_field = document.getElementById("search");
        if (search_field) {
            search_field.value = get_search_query();
        }
    }

}

main();
