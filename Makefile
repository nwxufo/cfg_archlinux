#Build Blog System based on Pelican corresponding the editor jupyter notebook.
#2018年 01月 31日 星期三 13:57:55

# support for command 'source'.
SHELL=/bin/bash

#target directory
BLOG_PATH=/srv/test/MyBlog.env

blog:
	( \
	source ${BLOG_PATH}/bin/activate;\
	cd ${BLOG_PATH}/content;\
#	jupyter-notebook --log-level 50 &;\
	jupyter-notebook &\
	)

stop-blog:
	( \
    source ${BLOG_PATH}/bin/activate;\
	jupyter-notebook stop;\
	deactivate;\
	)
stop-notebook: stop-blog
notebook: blog
#jupyter-notebook: blog

git-sync:
	#. /home/fenghuo
	(\
	cd /home/fenghuo \
	git status\
	git remote -v\
	git push origin ubuntu-fh\
	)
	#. /home/fenghuo/Documents
	(\
	cd /home/fenghuo/Documents \
	git status\
	git push origin fenghuo\
	)
		#. /srv/test/makeBlogSys
	(\
	cd /srv/test/makeBlogSys \
	git status\
	git push origin master\
	)
	#. /home/workbench/coding-interview-university
	(\
	cd /home/workbench/coding-interview-university \
	git status\
	git push origin my\
	)
	#. /srv/test/TurtlServer.deploy
	#. /srv/test/AnkiServer.deploy

