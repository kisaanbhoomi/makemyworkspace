## Git_Setup

> This Repo will explain about setting up the git

1.  Generate SSH key

        $ssh-keygen -t rsa -b 4096 -C "your_email@gmail.com" -f ~/.ssh/gosupplyo-your_githubusername

        $ssh-add ~/.ssh/gosuppylyo-your_githubusername

        Copy to clip board
        ~/.ssh/gosupplyo-your_githubusername.pub

        Go to your github.com web -> settings -> SSH and GPG Keys -> New SSH key -> Title ->  gosupplyo-your_githubusername -> paste -> Add SSH Key.

2.  Clone all the repos with SSH

        Example:

            $git clone git@github.com:kisaanbhoomi/loginservice.git
