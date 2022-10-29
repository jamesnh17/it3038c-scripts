***Explanation***
    -Commiting your work to github may already be as simple as a few commands, but why not make it even easier & eliminate time wasted typing-->
git status, git commit, git push; over and over. With a little implementation now, we can save more time later.


**Disclaimer**
    - This is for PERSONAL use only, doing this in a production environment could mean accidentally overwriting the wrong branch, even with the "failsafes"
I wrote to point out your current working branch.

-The link below is a previously written tutorial by Saurav Jaiswal, my own is similar but not the same. You may use Saurav's version if you cannot get my own to work.

https://dev.to/sauravjaiswalsj/automating-git-push-with-just-a-single-bash-command-460n


**Use**
- Like always, naming & copying the file into the appropriate directory is a must. For explanation, my file is named gitpush.sh
    -Once the file is saved, you must then give it "executable" writes. Do this by going into terminal and typing -->

        $ sudo chmod +x gitpush.sh

    -You should then need to provide your sudo pw
    -To allow you to globally run your script, you will want to add it to your /usr/local/bin foler. -->

        sudo cp gitpush.sh /usr/local/bin

    -You may now call gitpush.sh from terminal whenever you would like to commit to your git repository.