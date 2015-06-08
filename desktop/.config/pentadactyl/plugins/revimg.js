/*
 * Google Reverse Image Search
 */

let url = "https://www.google.com/searchbyimage?&image_url=";

function clean(str) {
  return str.replace(/([$`"\\])/g, "\\$1");
}

function rev(s) {
  var str = String(s);
  return dactyl.open(url+clean(str), {where:dactyl.NEW_TAB});
}

hints.addMode("r", "Search for image", rev);
group.commands.add(["revimg"], "Search for image",
    function(args) { rev(buffer.URL); }
    );
