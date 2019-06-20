# Requirements

## macOS

This entire setup is written from a macOS perspective. If you know your system, you can adapt everything in here to your setup, whether it is Linux or Windows.

Essentially that means you can get a sub-$100 device and a nice keyboard, hook it up to a hotel’s TV set or a small projector and have a decent writing setup without having to deal with a dinky laptop keyboard. Or this [Atari thing](https://atarivcs.com) even. 


## Spelling Engine

With Emacs you have the choice of several spelling engines. I chose [Aspell](http://aspell.net) because I like the way it suggest words that actually match my intent.

It is set in this area here:

```lisp
(with-eval-after-load "ispell"
	(setq ispell-program-name "aspell")
	(ispell-set-spellchecker-params)
	(setq ispell-dictionary "en_GB"))
```

To install Aspell, we use [Homebrew](https://brew.sh) again. Type `brew install aspell` to install it. You can find some language installation options beforehand with either `brew info aspell` or by going to the [brew formula page](https://formulae.brew.sh/formula/aspell). 


## Fonts

I use the following fonts in my setup. Download them if you just want to see how it feels before entering your own.

- `Input Mono Narrow` - Base font - [Font Bureau](http://input.fontbureau.com)
- `PxPlus IBM VGA8` - Emacs Shell font - [Oldschool PC Fonts](https://int10h.org/oldschool-pc-fonts/fontlist/)
- `iA Writer Mono S` - Font for monospaced writing - [iA Fonts](https://github.com/iaolo/iA-Fonts)
- `iA Writer Quattro S` - Font for variable spaced writing - [iA Font](https://github.com/iaolo/iA-Fonts)

For screenshots of actual documents and for mock-ups, I use

- `Blokk Neue` - For headings - [BLOKK Font](http://www.blokkfont.com)
- `Redacted Script` - For body text - [Redacted](https://github.com/christiannaths/Redacted-Font)
