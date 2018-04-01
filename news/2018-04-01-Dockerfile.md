<div class="metadata date">2018-04-01</div>
<div class="metadata author">hut</div>

# Dockerfile

Finally, the much requested feature to integrate ranger with docker has been
implemented!  Simply install docker and type:

    git clone https://github.com/ranger/ranger.git
    cd ranger
    docker build -t ranger/ranger:latest ranger .
    docker run -it ranger/ranger ranger

Et voilà! You now can enjoy ranger in a freshly baked docker container! :)
