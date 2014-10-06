/*
 * Opens URLs in mpv with youtube-dl
 */

let mpv_args = "mpv --no-terminal --vo=vdpau --hwdec=vdpau";
let ytdl_args = "youtube-dl -i -g";

function clean(str) {
  return str.replace(/([$`"\\])/g, "\\$1");
}

function cmd(str, extra_args) {
  return mpv_args+" --playlist=<("+ytdl_args+" "+extra_args+" '"+clean(str)+"')";
}

function mpv(e) {
  return io.system(cmd(e.href), "--no-playlist");
}

function mpvp(e) {
  return io.system(cmd(e.href));
}

hints.addMode("m", "Open link in mpv", mpv);
hints.addMode("M", "Open playlist in mpv", mpvp);
group.commands.add(["mpv"], "Open current URL in mpv",
    function(args) { io.system(cmd(buffer.URL, "--no-playlist")); }
    );
group.commands.add(["mpvp"], "Open current URL in mpv as playlist",
    function(args) { io.system(cmd(buffer.URL)); }
    );
