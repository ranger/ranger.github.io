# Download

* Stable: [http://nongnu.org/ranger/ranger-stable.tar.gz](http://nongnu.org/ranger/ranger-stable.tar.gz)</a></li>
* Testing: [http://git.savannah.gnu.org/cgit/ranger.git/snapshot/ranger-master.tar.gz](http://git.savannah.gnu.org/cgit/ranger.git/snapshot/ranger-master.tar.gz)
* More downloads: [http://git.savannah.gnu.org/cgit/ranger.git/refs/tags](http://git.savannah.gnu.org/cgit/ranger.git/refs/tags)

Unpack the archive, enter the directory and run ranger:

    tar xvf ranger-stable.tar.gz
    cd ranger-stable
    ./ranger.py

If you want to conventionally install it, for example for a multi-user system, you can run this command:

    sudo make install

## Get ranger with git

[git](http://git-scm.com) is the version control system used to manage the source code of ranger.  Install it, then type:

    git clone git://git.savannah.nongnu.org/ranger.git
    cd ranger

You can also [browse the source code](https://github.com/ranger/ranger/)

The advantage of git is that you get lots of useful commands for keeping the code up to date and merging your own changes with the upstream code.  Here is a selection of commands.  For more details, please read the fine manual.

    git checkout stable  # use the stable version
    git checkout master  # use the testing version
    git pull             # fetch updates from upstream
    git commit -a        # commit your changes to your local branch

## Signed Packages

If you want to be sure of the authenticity of the snapshot, please download [ranger-stable.tar.gz](ranger-stable.tar.gz) and its [signature](ranger-stable.tar.gz.sig), then verify the signature with the author's public key: [huterich.gpg](huterich.gpg).

    gpg --import huterich.gpg
    gpg --verify ranger-stable.tar.gz.sig

If this prints `Good signature from "huterich <hut@lavabit.com>`, the signature was verified.  However, you can only trust the authenticity of the snapshot as much as you trust the authenticity of the public key. Please ensure that the key really belongs to Roman Zimbelmann alias hut by verifying it from multiple sources.  Once you are sure, you can sign the key with your own signature as described [here](http://www.dewinter.com/gnupg_howto/english/GPGMiniHowto-3.html#ss3.6) to avoid the warning that says "This key is not certified with a trusted signature! There is no indication that the signature belongs to the owner."


This is a list of all released packages since 1.2.2 with their signatures:
