/*
 * Opens URLs in mpv or whatever
 */

let tags = ["a"];
let mpv = "mpv --no-terminal";
let remote = "vixlap-lan";

function clean(str) {
  return str.replace(/([$`"\\])/g, "\\$1");
}

function mpv(e) {
  io.launcher(mpv+" '"+clean(e.href)+"'");
}

function mpvr(e) { 
  io.launcher("ssh "+remote+" -t DISPLAY=:0"+mpv+" '"+clean(e.href)+"'");
}

hints.addMode("M", "Open link in mpv remotely", mpvr, null, tags);
hints.addMode("m", "Open link in mpv", mpv, null, tags);
