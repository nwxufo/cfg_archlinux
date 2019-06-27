
# Tools List
#
# Ebook Tools
ebook:
	calibre

SHELL=/bin/bash
BLOG_ENV_PATH=/srv/milo/blog.virtualenv

#BLOG_SPACE=/home/milo/workbench/MachineL
BLOG_SPACE=/home/milo/workbench/

mindmap:
	freeplane &

note: blog
blog:
	( \
	source ${BLOG_ENV_PATH}/bin/activate;\
	cd ${BLOG_SPACE}/; \
#	jupyter-notebook --log-level 50 &;\
	jupyter-notebook &\
	)

xnote:stop-blog
stop-blog:
	( \
    source ${BLOG_ENV_PATH}/bin/activate;\
	jupyter-notebook stop;\
	deactivate;\
	)
stop-notebook: stop-blog
notebook: blog
#jupyter-notebook: blog

# Game List

enable-xbox360:
	sudo xboxdrv --daemon --detach --pid-file /var/run/xboxdrv.pid -c /etc/default/xboxdrv --detach-kernel-driver --deadzone 4000 --deadzone-trigger 10%

car_ding:
#game list 卡丁车
	supertuxkart -f

astromenace:
#game like 太空飞机大战
	astromenace

speed-dreams:
	speed-dreams
pai:

#taking a screenshot
#image viewer: imv
shot:
	scrot  -bs  

#一系列的字牌游戏
#pacman -S aisleriot
#	sol 
pycharm:
	/home/milo/BUILD/Pycharm/pycharm-2019.1.1/bin/pycharm.sh

#bugs
##=================
# Nvidia 是手动安装的，之前没有清理干净，后来又使用pacman安装的，现在借口省级了，导致了桌面没有打开，花费了8小时时间解决，又重新下载安装版本卸载旧有的驱动，并手动安装了最新版本，特此记录。
