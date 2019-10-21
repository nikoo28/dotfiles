PS1='\[\e[0;32m\][\[\e[0;32m\]\u\[\e[0;32m\]@\h \[\e[0;35m\]\w\[\e[0;32m\] \[\e[1;33m\]\A\[\e[0;32m\]]\$\[\e[0m\] '

export PROMPT_COMMAND=__prompt_command  # Func to gen PS1 after CMDs

function __prompt_command() {
    local EXIT="$?"             # This needs to be first

    local RCol='\[\e[0m\]'

    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'

    if [ $EXIT != 0 ]; then
        PS1="\[\e[0;31m\][\[\e[0;31m\]\u\[\e[0;31m\]@\h \[\e[0;35m\]\w\[\e[0;31m\] \[\e[1;33m\]\A\[\e[0;31m\]]\$\[\e[0m\] "      # Add red if exit code non 0
    else
        PS1="\[\e[0;32m\][\[\e[0;32m\]\u\[\e[0;32m\]@\h \[\e[0;35m\]\w\[\e[0;32m\] \[\e[1;33m\]\A\[\e[0;32m\]]\$\[\e[0m\] "
    fi
}

#export JAVA_HOME
export JAVA_HOME=`/usr/libexec/java_home v`
export PATH=$PATH:$JAVA_HOME/bin

#export HADOOP_HOME
export HADOOP_HOME=/Applications/Softwares/hadoop-2.6.5
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin

#export SPARK_HOME
export SPARK_HOME=/Applications/Softwares/spark-2.1.0-bin-hadoop2.6
export PATH=$PATH:$SPARK_HOME/bin

#export PSQL_HOME
#export PSQL_HOME=/Applications/Postgres.app/Contents/Versions/9.6
#export PATH=$PATH:$PSQL_HOME/bin

#export MONGODB_HOME
export MONGODB_HOME=/Applications/Softwares/mongodb-osx-x86_64-3.4.4
export PATH=$PATH:$MONGODB_HOME/bin

#export WINRAR_HOME
export WINRAR_HOME=/Applications/WinRAR/
export PATH=$PATH:$WINRAR_HOME/

#export PLATFORM_TOOLS
export PLATFORM_TOOLS=/Users/nikoo28/Library/Android/sdk/platform-tools/
export PATH=$PATH:$PLATFORM_TOOLS

#export CATALINA_HOME
export CATALINA_HOME=/Applications/Softwares/apache-tomcat-9.0.1
export PATH=$PATH:$CATALINA_HOME/bin

#export GLASSFISH_HOME
export GLASSFISH_HOME=/Applications/Softwares/glassfish5
export PATH=$PATH:$GLASSFISH_HOME/bin

#Set Alias
alias st="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias start-hadoop="start-dfs.sh; start-yarn.sh"
alias stop-hadoop="stop-dfs.sh; stop-yarn.sh"

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export SANS_ANACONDA="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

alias perseus="export PATH="\$SANS_ANACONDA" && echo Medusa decapitated."
alias medusa="export PATH="/Applications/anaconda/bin:\$SANS_ANACONDA" && echo Perseus defeated."

brew () {
  perseus
  command brew "$@"
  medusa
}
