42cli !
===================

A nice Command Line Tool for 42School.
-------------

42cli (will) provide a binnary with several tools for 42school, including proxy/chat/pathfind and many more !

> **Note:**

> - For the moment this is a very very new repo, with some scripts.
> - Please check the scripts before executing them.
> - `.zshrc` isn't altered at all, we use `.zshenv` and `.zprofile` instead.


#### <i class="icon-pencil"></i> Help me writing scripts

Any help is apprecied, just pull-request me any usefull scripts :).


#### <i class="icon-refresh"></i> Use those scripts

At the moment you can use :

-**add_colors.sh** (which add the atom color palette to your iTerm settings)

-**fix_brew.sh** (which fix brew)
> **Tip:** You can use `--keep` argument to prevent deleting your formulas :).

-**fix_hiddenfiles.sh** (which enable the hiddens files in the Finder)

#### <i class="icon-refresh"></i> I'm working on

I'm working on a script fixing [fish-shell](https://github.com/neolectron/fish-shell) erros at 42. I have to rebuild my own fish binary, but it seems like it uses my username when i `make` the project. so this binary is only usable by me atm...
You can still build [this version of fish-shell](https://github.com/neolectron/fish-shell) made for 42, with those command-lines :

```
git clone https://github.com/neolectron/fish-shell &&
cd fish-shell &&
brew install autoconf && autoconf && ./configure && make
```

then patch your fish with :
```
mv ~/.brew/Cellar/fish/2.3.1/bin/fish ~/.brew/Cellar/fish/2.3.1/bin/fish_bak &&
mv fish ~/.brew/Cellar/fish/2.3.1/bin/fish
```

use fish as default shell with

`echo "exec fish -l" >> .zshrc`
or in your iTerm settings set loginShell to `fish`
