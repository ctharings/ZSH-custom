# commands to control local mysql-server installation
# paths are for osx installation via macports

alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'
alias mysqlrestart='sudo /usr/local/mysql/support-files/mysql.server restart'

alias mysqlstatus='mysqladmin5 -u root -p ping'

# Set MYSQL_DIR if it isn't already defined
[[ -z "$MYSQL_DIR" ]] && export MYSQL_DIR="/usr/local/mysql/bin"

# Try to load mysql only if command not already available
if ! type "mysql" &> /dev/null; then
    # Load mysql if it exists
    [[ -f "$MYSQL_DIR/mysql" ]] && export PATH="$MYSQL_DIR:$PATH"
fi