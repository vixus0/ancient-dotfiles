/*
 * Opens URLs in mpv
 */

let mpv_args = "mpv --no-terminal --force-window";

function clean(str) {
  return str.replace(/([$`"\\])/g, "\\$1");
}

function mpv(s) {
  var str = String(s);
  return io.system(mpv_args+" "+clean(str));
}

function mpv_hint(e) {
  return mpv(e.href);
}

hints.addMode("m", "Open link in mpv", mpv);
group.commands.add(["mpv"], "Open current URL in mpv",
    function(args) { mpv(buffer.URL); }
    );
