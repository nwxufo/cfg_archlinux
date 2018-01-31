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

blog-stop:
	( \
    source ${BLOG_PATH}/bin/activate;\
	jupyter-notebook stop;\
	deactivate;\
	)

jupyter-notebook: blog
