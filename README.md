# Ranger Website

## How to build

The files are mostly static files, but some of the content is automatically
generated.  For example, you can change the `<head>` tag in every HTML file by
editing it in index.html and running `make` to instruct
[inlineswap](https://github.com/hut/inlineswap) to copy&paste it into every
other .html file.  Some content is also extracted from files like download.md
or ranger's CHANGELOG.md.

To update the "dynamic" content:

1. Download [inlineswap](https://github.com/hut/inlineswap) and place it into
   your $PATH
2. Install the `markdown` console program
3. Symlink ranger's changelog: `ln -s /path/to/ranger/CHANGELOG.md CHANGELOG`
4. Run `make`, or just `inlineswap yourfile.html`

## How to add news

See news/README
