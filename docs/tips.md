# Tips 

A few nice bits helpful to writers in general.


## Custom Dictionaries

Once the spelling engine is set up, you have two options for creating custom dictionaries.

### Approach 1: Local Words

If you just have a few recurring terms with odd spellings like *Daenerys Targaryen* for example, you can append it to you document. You can also easily share this by reading the appended part into your document like so `#+INCLUDE: "~/bookseries/dictionary.org"` at the bottom of your `.org` file. The `dictionary.org` file would then look a bit like this.

```
* Dictionary
  :noexport:
 #  LocalWords: Daenerys Targaryen
``` 

The `:noexport:` tag prevents `org-mode` from exporting your dictionary to the final document.

While I use this approach a lot, keep in mind it’s a bit limiting as it requires you to manually refresh your document each time you make an addition to the dictionary outside of your document. However it has the benefit of linking multiple dictionaries. You can have landmarks, language, names, tool-craft… etc all in separate dictionaries and only pick the ones you need when you need them. Also this is a ridiculously easy way of managing dictionaries. You can have it on a cloud storage and share it with your team for example. So you're all on the same page with special terms.

### Approach 2: Custom Dictionary

This one is more involved. You create an actual dictionary file here. It’s trivial. Let’s assume you write in English and just want to have the odd names always be correct. 

You create a file called `.aspell.en.pws` in your home folder. You’re now appending to Aspell’s English dictionary, but in your own file without messing with the official dictionary. The Personal Dictionary is a plaintext file and looks like this for our little example here.

```
personal_ws-1.1 en 0
Daenerys
Targaryen
```

That’s all there is to it. A quick explanation taken [from the source](http://aspell.net/man-html/Format-of-the-Personal-and-Replacement-Dictionaries.html#Format-of-the-Personal-and-Replacement-Dictionaries). The filename tells Aspell when to load it `.aspell.lang.pws` with `lang` being the language of choice. With the first line of this document we have `personal_ws-1.1 lang num [encoding]` to describe what we’re doing here. Starting with `personal_ws-1.1`, that’s just where we tell Aspell what it is we’re appending. The `1.1` seems to mean *add-on to* `1`. It’s not really explained. With `en` we’re specifying once again that this is for the English language. Seems redundant but keep in mind Aspell also has multi-language dictionaries available like medical and technical ones for a lot of languages. If you leave the `[encoding]` off, `UTF-8` is assumed. So, bugger that. The `0` is a placeholder for the number of words in the list. For big lists that are programmatically created, setting the correct number helps speed up indexing. But for our use here, setting it to `0` is perfectly fine. For the rest of the file, just add one word per line and that’s it. That’s really all there’s to it.

### Approach 3: A new language

You’re nuts! Seriously, the only people who need this are either language researchers or franchise fans. You get the idea, this is a lot of work. Aspell lets you specify spellings down to a “sounds like” basis. [Here’s but a taste](http://aspell.net/man-html/The-Language-Data-File.html). 


