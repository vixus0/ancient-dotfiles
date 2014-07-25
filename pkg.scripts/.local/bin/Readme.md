These are the various scripts I use on my Archlinux system. They are mostly just
for recreational purposes and are absolutely *not* to be used for sending humans
to the moon.

```active_win```: An old script to print the focused window title using xdotool
and xwininfo. No longer necessary since herbstluftwm does it far more easily:
```herbstclient attr clients.focus.title```

```bard```: A python-based stats daemon to be piped to a bar such as dzen2. The
way I programmed the IO was atrocious and it was incredibly laggy. Should be
deleted.

```colours```: Just prints my current terminal colourscheme.

```dmenu_fav```: A really simple, but incredibly useful script that maintains a
list of favourite programs. Typing in a program that is not in the list will
append it to the list. Prepending an ```!``` to the command will prevent it from
being added.

```favdzen```: Just opens a dzen2-based menu of my favourite programs, for some
clicky-mouse action.

```herbstdzen```: An exercise in futility attempting to expose all my herbstluftwm
keybinds to a mouse. Why would anyone do this? Who knows.

```herbstrec```: A useful little script that allows me to record my screen to an
animated GIF using ```byzanz```. Just needs to be bound to a key and makes use
of herbstluftwm hooks.

```herbstwatch```: A notifier for herbstluftwm. Sort of broken at the moment,
but it is meant to tell me which tag I've focused, and which window I'm looking
at. It also brings tells me about urgent windows.

```pidwin```: Finds all the windows belonging to a particular process.

```setbg```: Fairly obvious, I hope.

```statdzen```: Some useful little dzen-based applets for laptops: time/calendar,
battery status, and wifi status.

```volbar.sh```: Prints a pretty volume bar to be piped to various status bars.

```volctl```: Abstracts away volume changing.

```volumeosd```: Wrapper around volctl that also brings up a visual indicator of
the current volume.

```ytbatch```: Batch convert a bunch of YouTube videos into audio files with
```youtube-dl```.

```ytffplay```: Play YouTube videos using ```youtube-dl``` and ```ffmpeg```.
