Setting up
	
	$ git clone https://github.com/fabiofalci/env.git ~/env
	$ echo "source ~/env/bash/bashrc" >> .bashrc

	# one one these
	$ echo "source ~/env/bash/defaults_macos" >> .bashrc
	$ echo "source ~/env/bash/defaults_linux" >> .bashrc

	$ ln -s ~/env/ack/ackrc ~/.ackrc

	$ ln -s ~/env/gitconfig/gitconfig .gitconfig
	$ ln -s ~/env/gitconfig/gitignore .gitignore_global

	$ ln -s ~/env/vim/vimrc .vimrc
	$ ln -s ~/env/vim/ .vim

	$ ln -s ~/env/bash/inputrc .inputrc

	$ ln -s ~/env/tmux/tmux.conf .tmux.conf

	$ ln -s ~/env/idea/ideavimrc .ideavimrc

	$ cat env/x/compose-key.sh > /etc/X11/xinit/xinitrc.d/60-compose-key.sh
	$ chmod 755 /etc/X11/xinit/xinitrc.d/60-compose-key.sh

	$ ln -s ~/env/i3/config ~/.i3/config
	$ cp ~/env/i3/i3status-config.template ~/.config/i3status/config
	$ sudo cp ~/env/i3/i3-temp.service /etc/systemd/system
	$ sudo systemctl enable i3-temp.service

	$ ln -s ~/env/i3/libinput-gestures.conf ~/.config/

	$ sudo ln -s /home/fabio/env/bash/global_profile.sh /etc/profile.d/global_profile.sh
	$ sudo ln -s /home/fabio/env/idea/98-idea.conf /etc/sysctl.d/98-idea.conf

	# apple keyboard
	$ sudo cp ~/env/keyboard/hid_apple.conf /etc/modprobe.d/hid_apple.conf

	# clone jenv
	$ git clone https://github.com/gcuisinier/jenv.git ~/.jenv
	$ jenv enable-plugin export
 	$ jenv enable-plugin maven

	# trackpad
	$ sudo ln -s ~/env/x/90-libinput.conf /etc/X11/xorg.conf.d/

	# pet
	$ ln -s ~/env/private/config_linux.toml ~/.config/pet/config.toml
	$ ln -s ~/env/private/config_macos.toml ~/.config/pet/config.toml

	# remind
	$ cp ~/env/remind/remind.service ~/.config/systemd/user/
	$ systemctl --user enable remind
	$ ln -s ~/env/private/reminders.rem ~/.config/remind/

	# ibm model m keys swap
	$ ln -s ~/env/keyboard/Xmodmap ~/.Xmodmap

	# termite
	$ ln -s ~/env/termite/config ~/.config/termite/config
