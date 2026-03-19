
#使用man查看英文man手册
alias man='man -M /usr/share/man'
# 设置中文man别名
alias cman='man -M /usr/share/man/zh_CN'

# valgrind内存泄漏检测
alias vgr='valgrind \
    --tool=memcheck \
    --leak-check=full \
    --show-leak-kinds=all \
    --track-origins=yes'

# 输出到文件
alias vgrl='valgrind \
    --tool=memcheck \
    --leak-check=full \
    --show-leak-kinds=all \
    --track-origins=yes \
    --log-file=valgrind.log'

# 切换到快捷目录
alias cdsnip='cd ~/.local/share/nvim/lazy/friendly-snippets/snippets/'
alias cdw='cd ~/coding-exercises/APUE.3e/'
