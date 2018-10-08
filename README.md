# .emacs.d

## Packages
Some basic packages for setting up everything.

## Editor

### Ace window
For sane window navigation. Binded to `M-p`.

### tao-theme
Cool mono theme

### Smartparens
Basically smarter parens, wrapping, unwrapping, rewrapping, matching parens etc.

``` bash
jkk
```

#### evil-smartparens
Same but for evil-mode

### Markdown
Mostly for previewing markdown files when editing readmes, changelogs etc.
Using markdown-mode + pandoc. You need to install pandoc:

``` bash
> sudo dnf -y install pandoc
```

### ElDoc
Shows function arguments in echo arena.

### Whitespace
Used mostly for handy `whitespace-cleanup`.

### Evil mode
For those nifty vim editing powers.

### editorconfig
Editorconfig support.

### ivy
For completion, smex, swiper and counsel

### smex
M-x enhancement with last-used etc.

### swiper
Better search with overview of matches.

### counsel
Enables emacs to use ivy for commands that use completing-read-function. Most notable:

`` bash
M-x - enhanced M-x
C-x C-f - better file find
C-c k - search files using ag
C-x l - find file
```
## Programming

### Projectile
Library for interacting with "projects"
Most notable uses:

``` bash
C-c p g - grep in the project
C-c s s - ag in the project
C-c p R - regenerate tags
C-c p j - find definition of tag
C-c p k - kill all project buffers
C-c p D - open project root in dired
C-c p 4D - open project root in dired in another window
C-c p ! - runs shell-command in the root
C-c p S - save all project buffer
```

### Magit
Welp, magit.


### Company
Completion for programming

### Emmet
HTML code expansion with `C-j`

### Which-key
Displays possible key combinations that can follow current one

``` bash
npm i -g javascript-typescript-langserver
```
