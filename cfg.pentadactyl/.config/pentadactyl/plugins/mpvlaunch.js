/*
 * Opens URLs in mpv or whatever
 */

let cmd = "mpv --no-terminal";
let remote = "vixlap-lan";

function clean(str) {
  return str.replace(/([$`"\\])/g, "\\$1");
}

function mpv(e) {
  return io.system(cmd+" '"+clean(e.href)+"'");
}

function mpvr(e) {
  return io.system("ssh "+remote+" -t DISPLAY=:0"+cmd+" '"+clean(e.href)+"'");
}

hints.addMode("m", "Open link in mpv", mpv);
hints.addMode("M", "Open link in mpv remotely", mpvr);
