#!/usr/bin/python3
# -*- coding: utf-8 -*-

# Ignore this file
# This is my personal python script
# That can capable for finding changes in my 'config' files
# And pushing to github

import os
import shutil
import hashlib
from rich.console import Console
from time import localtime, strftime


def findChecksum(file1):
	hasher = hashlib.sha256()
	with open(file1, "rb") as file:
		content = file.read()
		hasher.update(content) 
	return hasher.hexdigest()


done =[]
per = False
#  git_dir = "/home/pritam/Desktop/programing/github/my_config/linux_ubuntu/"
#  git_directory = "/home/pritam/Desktop/programing/github/my_config/"


def moveToGithub(file_path, file_name):
	global done
	global per
	path = file_path + file_name

	if os.path.exists(path):

		if os.path.exists(git_dir + file_name):

			if findChecksum(path) != findChecksum(git_dir + file_name):
				shutil.copy(path, git_dir + file_name)
				Console().log(f"[color(41) bold]{'UPDATE':15} [/]: Updated file '[color(41) bold underline]{file_name}[/]'")
				per += True
				done.append(file_name)

			else:
				Console().log(f"[color(13) bold]{'NO CHANGE':15} [/]: Nothing change in '[color(13) bold]{file_name}[/]'")

		else:
			shutil.copy(path, git_dir + file_name)
			Console().log(f"[color(11) bold]{'MOVED':15} [/]: Moved a copy of '[color(11) bold]{file_name}[/]'")
			per += True
			done.append(file_name)
		
	else:
		Console().log(f"[color(9) bold]{'FILE NOT FOUND':15} [/]: No directory '[color(14) bold underline]{path}[/]' :eyes: in your system")

# moveToGithub("/home/pritam/.oh-my-zsh/plugins/alias/", "alias.plugin.zsh")

if per:
	Console().print("\nWants to commit",style="color(25) bold" , end=" ")
	a = input("[y/n] ")
	if a.lower() == "n":
		exit(Console().print("ABORT COMMITING.",style="color(9) bold"))

	else:
		time = strftime("%d-%b-%Y, %H:%M:%S", localtime())
		os.chdir(git_directory)
		os.system("git pull origin main")
		os.system("git add .")
		os.system(f"git commit -m 'Till >>> {time}\n\nMAKE CHANGES IN {done}'")
		Console().print(f"\n[color(9) bold]{'COMMITED':7}[/] >>> '{len(done)}' files [color(11) bold]{done}[/]")

		Console().print(f"\nWants to push [color(11) bold]{done}[/]", style="bold" , end=" ")
		a = input("[y/n] > ")
		if a.lower() == "n":
			exit(Console().print("ABORT PUSHING.",style="color(9) bold"))

		else:
			os.system("git push origin main")

else:
	Console().print(f"\n[color(9) bold]NOTHING IS CHANGED[/] >>> [color(11) bold]All file are up to date, nothing to commit[/]")

exit()
