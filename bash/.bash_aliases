alias ll='ls -la'
#alias aqw="artisan queue:work --queue='high,default'"
alias npw="npm run watch"
alias npb="npm run build"
alias npd="npm run dev"
alias npc="npm run codegen"
# openstack connect && set export DISPLAY= to prevent python output to DISPLAY set by Cypress (windows VcXsrv)
#alias opc="export DISPLAY= && source $HOME/stack.sh"
alias phpswitch="sudo update-alternatives --config php"
#pestphp
#alias p='vendor/bin/pest'
#alias pf='vendor/bin/pest --filter'
#phpunit
#alias pu='vendor/bin/phpunit'
#alias puu='vendor/bin/phpunit --testsuite unit'
#alias puk='vendor/bin/phpunit --testsuite kernel'
#alias pul='vendor/bin/phpunit --testsuite functional'
#alias pug='vendor/bin/phpunit --group'
#alias puf='vendor/bin/phpunit --filter='
#laravel sail
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias slu='sail up'
alias sld='sail stop'
#larave envoy
alias envoy='php ./vendor/bin/envoy'
alias deploy='php ./vendor/bin/envoy run deploy'
#laradock
alias laradock='cd laradock && docker compose exec --user=laradock workspace bash'
#docker
alias dps='docker ps'
alias dka='docker kill $(docker ps -q)'
#drush
alias drush='ddev drush'
#temp dtheme override for lando
alias dtheme='cd web && cd `drush ev "echo \Drupal::theme()->getActiveTheme()->getPath()"`'

#vessel
alias vsu='./vessel start'
alias vsd='./vessel down'
alias vss='./vessel exec app bash'
alias vsa='./vessel artisan'
alias vsc='./vessel composer'

alias s="kitty +kitten ssh"
alias rm=trash

alias da='ddev artisan'
alias dp='ddev php'
alias dc='ddev composer'
alias dpest='ddev php ./vendor/bin/pest'
alias dpint='ddev php ./vendor/bin/pint'
alias dmfs='ddev artisan migrate:fresh --seed'

alias share='php artisan app:share'
alias nah='git reset --hard && git clean -df'
