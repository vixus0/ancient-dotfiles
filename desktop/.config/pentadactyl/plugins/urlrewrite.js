/*
 * Rewrite URLs
 */

group.commands.add(["urlrewrite"], "Rewrite current URL", function(args) {
  var re = new RegExp(args[0], "g");
  var replacement = args[1];
  var url = buffer.URL;
  var new_url = url.replace(re, replacement);
  return dactyl.open(new_url)
});
