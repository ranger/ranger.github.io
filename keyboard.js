var navclass = "kbnav";

function kbNav(key) {

    // convert HTMLCollection to array for indexing
    var navlinks = [].slice.call(document.getElementsByClassName(navclass));
    var navindex = -1; // initialize counter before the first post

    var currentfocus = document.activeElement; // get current index of focused post

    // get current post index
    if ( currentfocus.className.includes(navclass) ) {
        navindex = navlinks.indexOf(currentfocus);
    }

    // increment post index
    if ( key === 'j' && navindex < navlinks.length - 1 ) {
        navindex++;
    } else if (key === 'k' && navindex > 0 ) {
        navindex--;
    } else if (key === 'g') {
        navindex = 0;
    } else if (key === 'G') {
        navindex = navlinks.length - 1;
    }

    // move focus
    navlinks[navindex].focus();
}

function kbLaunch() {
    var currentfocus = document.activeElement; // get current index of focused post
    // open focused link
    if ( currentfocus.className.includes(navclass) ) {
        window.location.href = currentfocus;
    }

}

Mousetrap.bind({
    'j': function() { kbNav('j'); },
    'k': function() { kbNav('k'); },
    'g g': function() { kbNav('g'); },
    'G': function() { kbNav('G'); },
    'l': function() { kbLaunch(); },
    'g h': function() { window.location.href = "index.html"; }
})
