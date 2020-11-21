# Download

* Stable: [ranger-stable.tar.gz](ranger-stable.tar.gz) -
  [ranger-stable.tar.gz.sig](ranger-stable.tar.gz.sig)
* Testing:
  [master.tar.gz](http://github.com/ranger/ranger/archive/master.tar.gz)
* More downloads: [See below](#signed-packages) or find the
  [releases on github](https://github.com/ranger/ranger/releases)

Unpack the archive, enter the directory and run ranger:

    tar xvf ranger-stable.tar.gz
    cd ranger-stable
    ./ranger.py

If you want to conventionally install it, for example for a multi-user system, you can run this command:

    sudo make install

## Get ranger with git

[git](http://git-scm.com) is the version control system used to manage the source code of ranger.  Install it, then type:

    git clone git@github.com:ranger/ranger.git
    cd ranger

You can also [browse the source code](https://github.com/ranger/ranger/)

The advantage of git is that you get lots of useful commands for keeping the code up to date and merging your own changes with the upstream code.  Here is a selection of commands.  For more details, please read the fine manual.

    git checkout stable  # use the stable version
    git checkout master  # use the testing version
    git pull             # fetch updates from upstream
    git commit -a        # commit your changes to your local branch

<h2 id="signed-packages">Signed Packages</h2>

If you want to be sure of the authenticity of the snapshot, please download [ranger-stable.tar.gz](ranger-stable.tar.gz) and its [signature](ranger-stable.tar.gz.sig), then verify the signature with the author's public keys:

    gpg --search-keys 1E9B36EC051FF6F7FFC969A7F08CE1E200FB5CDF  # Roman Zimbelmann's key
    gpg --search-keys 30193C49CB39CD27008246ADE5902A52B247B8DE  # Wojciech Siewierski's key
    gpg --search-keys 66FA95C0F1619BDA520A41F60D63346A5D15D055  # Toon Nolten's key
    gpg --verify ranger-stable.tar.gz.sig  # Check if the package was signed by one of the authors

We usually use the [MIT keyserver pgp.mit.edu](https://pgp.mit.edu) so you
might want to add `--keyserver pgp.mit.edu` to the key search commands.

If this prints `Good signature`, the signature was verified.  However, you can only trust the authenticity of the snapshot as much as you trust the authenticity of the public key. Please ensure that the key really belongs to Roman Zimbelmann (aka hut), Wojciech Siewierski (aka vifon) or Toon Nolten (aka toonn, \_\_monty\_\_) by verifying it from multiple sources.  Once you are sure, you can sign the key with your own signature as described [here](http://www.dewinter.com/gnupg_howto/english/GPGMiniHowto-3.html#ss3.6) to avoid the warning that says "This key is not certified with a trusted signature! There is no indication that the signature belongs to the owner."


This is a list of all released packages since 1.2.2 with their signatures:
