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

## How to deploy

The website is currently fragmented:

- One domain is [https://ranger.github.io](https://ranger.github.io) which is served by [GitHub pages](https://pages.github.com)
- Another domain is [https://ranger.fm](https://ranger.fm) which is served by [Codeberg pages](https://codeberg.page)

The plan is to sunset the github.io domain and move over to ranger.fm in the long term.

To deploy the page, currently you need to update the master branch on both github and codeberg:

- [https://github.com/ranger/ranger.github.io](https://github.com/ranger/ranger.github.io)
- [https://codeberg.org/ranger/pages](https://codeberg.org/ranger/pages)
