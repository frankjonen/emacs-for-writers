# About the Config File

## How to read it

Configuration files are always a bit overwhelming when you have absolutely no idea what's going on. To begin, you don't have to understand *everything*. Start with the user related pieces and work your way up from there. That's what I've done and it worked out alright.

Before we dive in, there are a few pieces right off the bat, I think you should know beforehand.

If you're already familiar with Emacs and just want to get into the specifics of Spacemacs, there's a [Quickstart Guide](http://spacemacs.org/doc/QUICK_START.html) and a full [documentation](http://spacemacs.org/doc/DOCUMENTATION.html) available.



### Cleanup

First off, the original Spacemacs config file is a complete mess. Body text is above its heading and you can never be completely sure what it is you're reading the definition about. So I cleaned it up.

> Instead of this
```lisp
      ;; List of additional packages that will be installed without being
      ;; wrapped in a layer. If you need some configuration for these
      ;; packages, then consider creating a layer. You can also put the
      ;; configuration in `dotspacemacs/user-config'.
dotspacemacs-additional-packages '()
      ;; A list of packages that cannot be updated.
dotspacemacs-frozen-packages '()
```

> It's now simply this
```lisp
dotspacemacs-additional-packages '()
      ;; List of additional packages that will be installed without being
      ;; wrapped in a layer. If you need some configuration for these
      ;; packages, then consider creating a layer. You can also put the
      ;; configuration in `dotspacemacs/user-config'.
dotspacemacs-frozen-packages '()
      ;; A list of packages that cannot be updated.
```


Much easier to read than the twisted around version, no guesswork needed.
All of the main functions, variable definitions, set values… anything provided by Spacemacs has an explanation to go with it.


### Definitions

Let's get into the basics. The following example illustrates a user preference that is not part of the basic user settings but much farther up. This is just how Spacemacs is set up to process the file.

```lisp
dotspacemacs-default-font '("Input Mono Narrow"
		       :size 18
		       :weight normal
		       :width normal
		       :powerline-scale 1.1)
;; Default font, or prioritized list of fonts. `powerline-scale' allows to
;; quickly tweak the mode-line size to make separators look not too crappy.
```

As you can probably guess from the description, this is where you set your base font. As opposed to everywhere else in Emacs, Spacemacs sets the font size in `pt`. The `powerline-scale` part sets the scale for the status bar on the foot of every Emacs window. 

### Sections

#### Overall

At the beginning you'll see a line saying `lisp (defun dotspacemacs/layers ()`. That's where we set the basics. As you can see, the spell checking module is enabled. You'll see more about that in the `requirements.md` file.

This area is also where we set the basic theme of how we want our app to look. I've listed a few. Right now I'm using `doom-molokai` myself but you might find others more to your liking. An easy way to get more themes is to uncomment line `52` and start Emacs, this will download the *Theme Megapack*.

You'll find it's pretty self-explanatory when going through what each part does. Have a look at it though, even if you don't understand it at first, it may be helpful later.

#### User's Front Door

Look for the line `(defun dotspacemacs/user-init ()`.

This is where we can put our own stuff that we want to load or execute during the *loading ceremony* when Emacs boots up. The more you put there, the more has to be done when starting up. So yes, it does effect the start-up time.

As a rule of thumb, if something doesn't work (but should, as in "no errors") in the regular user space, put it here and try again.


#### User's Living-room

Our own stuff goes here. Any configuration that is used *during* use of Emacs is set in `(defun dotspacemacs/user-config ()`. 

Set variables, create your own tools to your heart's content. You can either put it all right here or link to external files. Going this deep would however exceed the scope of this documentation set by far.


### Customise

The defined functions (or *defun* for short) we're talking about here are custom scripts to string existing commands together in a way that creates a new app behaviour. To be able to trigger a new function with a key, you simply have to set it as `(interactive)`, then you can just map it to a key or key combination. 

To close this intro out, I'll just briefly go over the custom functions that ship with this configuration file.

#### split-and-indirect-orgtree

When you're writing in an outline, it can get crowded at times. Move your cursor over any item in the outline tree and hit <kbd>F9</kbd>. Emacs now splits that section into its own window to the right of your outline. You can collapse the items of each view independently. You type in one, it updates in the other, live. 


#### kill-and-unsplit-orgtree

This just undoes the previous split. That's why it's all the way at the end of the previous key's function key block with <kbd>F12</kbd>.


#### write-window-setup

I like to always have my writing setup to be a certain way, so it's organised neatly and I don't have to look around where stuff is. This is one of those functions I've included as a demo of this. Once you've loaded your project folder and see all the files listed there (`dired-mode`), you hit <kbd>F3</kbd> and it generates a custom window layout, loads your main draft and your notes from that folder. You can also specify a longer path if you want to grab your notes from a cloud server somewhere, for example. If you want to load all chapters for example, you could add something like `(find-file "chapter*.md")` to it. The `*` wildcard in this case leads to Emacs loading any file in that folder starting with `chapter` and having the suffix `.md`.

You can see the possibilities this writing environment opens up to you. All Emacs commands are somewhat descriptive. Some require thinking around the block to get to the name, but all are fully findable. When you hit <kbd>OPTION</kbd> <kbd>x</kbd> and start typing, you're likely to find what you're looking for to build your own setups. If not, there are countless resources online, just type your rough query into your favourite search engine and you're likely to find someone who solved a similar problem before.
