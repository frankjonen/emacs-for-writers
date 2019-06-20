# Project Management 

This configuration is set up to work with [Projectile](https://www.projectile.mx/en/latest/) which is a project management library for Emacs. While you may find a wider use for it later in, we’re just using the basics here.

To have a folder recognised as a project folder, *Projectile* requires either a `.projectile` file (can be empty) or the [configuration file of a versioning system](https://www.projectile.mx/en/latest/projects/) at the base of your project folder. That’s all there is to it. The first time you open that folder now, it is recognised as a project and listed in the startup screen as such. You can also jump between projects during a session by typing <kbd>SPC p p</kbd> in `normal mode`.

## Setup

If you work across several projects fairly often, you may want to tell Emacs where they live. I’ve commented out the part where we set this as a quoted value (`setq`).

```lisp
;; (setq projectile-project-search-path ‘(“~/writing/“ "~/work/"))
```
/Volumes/Data/Installer Log 27-May-2019.txt
To use this, just remove the `;;` and add your own paths to where you store your work. The `~` character stands for your home folder. If you store this outside of your user folder, you can also just drag that project folder into any text editor (Emacs for example) or *Terminal* and see its path.
