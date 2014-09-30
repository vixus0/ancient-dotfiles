/*
 * Opens URLs in mpv or whatever
 */

let remote = "vixlap-lan";

function clean(str) {
  return str.replace(/([$`"\\])/g, "\\$1");
}

function cmd(str) {
  return "mpv --no-terminal --playlist=<(youtube-dl --no-playlist -i -g '"+clean(str)+"')";
}

function mpv(e) {
  return io.system(cmd(e.href));
}

function mpvr(e) {
  return io.system("ssh "+remote+" -t DISPLAY=:0 "+cmd(e.href));
}

hints.addMode("m", "Open link in mpv", mpv);
hints.addMode("M", "Open link in mpv remotely", mpvr);
group.commands.add(["mpv"], "Open current URL in mpv",
    function(args) { io.system(cmd(buffer.URL)); }
    );
