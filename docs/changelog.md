# Changelog


## Version 1.01

### Bugfixes
***

#### Org-mode indent sometimes doesn't apply.
- **Culprit**: I've set it twice. Once as hook and before in the `eval-after-load` section.

#### Org-mode indents don't align right
- **Solution:** Exclude module `adaptive-wrap`.
- **Caveats:** Long headlines can look wonky.

### Additions
***

#### Line-beginning / Line-end jumps now in insert mode as well
You can now quickly jump while writing <kbd>C</kbd> + <kbd>a</kbd>/<kbd>e<kbd> now do the same as in normal mode. 

#### Easier adding of sub-headings
<kbd>SHIFT</kbd> + <kbd>CONTROL</kbd> + <kbd>Enter</kbd> now adds a subheading instead of a `TODO` heading. I never use TODO headings while writing. But adding <kbd>SHIFT</kbd> to the regular add-heading (of same level) keys (<kbd>CONTROL</kbd> + <kbd>Enter</kbd>) just made sense to me.

#### Org-mode Tables are now fixed-pitch
An oversight in the custom faces setup led to tables looking rubbish. 