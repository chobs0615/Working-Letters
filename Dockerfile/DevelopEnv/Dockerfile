FROM ubuntu:latest
MAINTAINER chobs <chobs0615@gmail.com>

# Install Application
RUN apt-get update -q
RUN apt-get install -y vim ctags cscope dos2unix
RUN apt-get install -y git subversion
RUN apt-get install -y curl wget
RUN apt-get clean

# Add user and group
RUN groupadd -g 1000 chobs
RUN useradd -u 1000 -g 1000 -G sudo -m chobs

# Switch user
USER chobs
WORKDIR /home/chobs

# Vim configuration
ADD ./vimrc /home/chobs/.vimrc
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN vim -c PlugInstall -c q -c q
RUN sed -i -e 's/lan mes en_US/lan mes POSIX/g' ~/.vim/plugged/visualmark/plugin/visualmark.vim

# bashrc
RUN echo "bind 'set completion-ignore-case On'" >> ~/.bashrc
RUN echo "export PROMPT_DIRTRIM=3" >> ~/.bashrc
RUN echo "alias cd2='cd ../../'" >> ~/.bashrc
RUN echo "alias cd3='cd ../../../'" >> ~/.bashrc
RUN echo "alias cd4='cd ../../../../'" >> ~/.bashrc
RUN echo "alias cd5='cd ../../../../../'" >> ~/.bashrc
RUN echo "alias cd6='cd ../../../../../../'" >> ~/.bashrc
RUN echo "alias cd7='cd ../../../../../../../'" >> ~/.bashrc
RUN echo "alias cd8='cd ../../../../../../../../'" >> ~/.bashrc
RUN echo "parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\\\1)/' ; }" >> ~/.bashrc
RUN echo "PS1='\${debian_chroot:+(\$debian_chroot)}\[\\\033[01;32m\]\u@\h\[\\\033[00m\]:\[\\\033[01;34m\]\w\[\\\033[33m\]\$(parse_git_branch)\[\\\033[00m\]\\\$ '" >> ~/.bashrc
