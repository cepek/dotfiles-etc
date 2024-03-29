# dotfiles-etc

Some dotfiles and similar files that I want to keep the track of.

url = git@github.com:cepek/dotfiles-etc.git


## CUA mode

CUA mode is implicitly disabled. To switch cua-mode type Alt-x then
cua-mode and hit return.

## C++

After many experiments and tries to find up the best cross-platform
independent C++ development environment that would suit me, I have
ended up with qtcreator and emacs. In both cases I have setup GNU
coding styles, namely the indenting. It is my personal choice and I do
not want to argue about other alternatives (I like VS Code quite a
lot, but still it is not my choice). Dot.emacs is the first file I
have uploaded into this repository, some more may follow or may not.

These are nothing but simple notes and comments for myself and hardly
be useful for anyone else.

## Emacs

## Add 4 columns to Emacs edit window

Suggested by ChatGPT

    (defun my/increase-window-width (width)
      "Increase the width of the Emacs window by WIDTH characters."
      (let ((current-width (frame-width)))
        (set-frame-width (selected-frame) (+ current-width width) t)))

    (add-hook 'emacs-startup-hook (lambda () (my/increase-window-width 4)))



### Markdown preview

* Generates README.html in the current directory and opens a new tab
  to render it.

    M-x markdown-export-and-preview

* Exports .md file as .html file, html page must be reloaded manually.

    M-x markdown-export


### Live preview

* Open live preview in other window.

    M-x markdown-live-preview-mode
