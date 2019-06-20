# Caveats

## Editing
Should you for some reason want to edit this configuration file in *TextEdit*, make sure to set it as *Plain Text*. Even better, don’t use a non-code editor for this. Your system comes with *Nano* pre-installed. Just open a *Terminal* window and type `nano .spacemacs`. The editing window has all the main commands listed in the footer. Just edit the Emacs settings within Emacs once you’re set. You can simply [reload the configuration](http://spacemacs.org/doc/DOCUMENTATION.html#dotfile-configuration) once you’re done. Most changes don’t require restarting Emacs.


## Org-mode initial launch time
I’ve set `org-mode` to launch [Aspell](docs/requirements.md) right away when opening a `.org` file. This will delay the initial launch time of the first `org-mode` document in a session. 

If you don’t want that and rather spell-check after the fact, you can edit this part of the `org-setup` function.

```lisp
(defun org-setup ()
	(setq line-spacing 3)
	(flyspell-mode 1)
```

Either comment out the flyspell line or remove it. I’ll just comment it out in this example.

```lisp
(defun org-setup ()
	(setq line-spacing 3)
;;	(flyspell-mode 1)
```

Note, you don’t have to use double semicolons, it just makes it easier to line things up sometimes. One semicolon is enough. I just used it here to make that point as I’ve used both variants in my config. Mostly to differentiate between the Spacemacs provided parts and my own. Don’t sweat it 😉.


***

## Markdown initial launch time

Same reason as for `org-mode`. See above for solution but this time in `(defun markdown-setup ()`.