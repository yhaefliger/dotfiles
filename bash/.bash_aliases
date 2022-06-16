alias ll='ls -la'
alias aqw="artisan queue:work --queue='high,default'"
alias npw="npm run watch"
alias npb="npm run build"
alias npd="npm run dev"
alias npc="npm run codegen"
# openstack connect && set export DISPLAY= to prevent python output to DISPLAY set by Cypress (windows VcXsrv)
alias opc="export DISPLAY= && source $HOME/stack.sh"
alias phpswitch="sudo update-alternatives --config php"
#pestphp
alias p='vendor/bin/pest'
alias pf='vendor/bin/pest --filter'
#phpunit
alias pu='vendor/bin/phpunit'
alias puu='vendor/bin/phpunit --testsuite unit'
alias puk='vendor/bin/phpunit --testsuite kernel'
alias pul='vendor/bin/phpunit --testsuite functional'
alias pug='vendor/bin/phpunit --group'
alias puf='vendor/bin/phpunit --filter='
#laravel sail
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
#larave envoy
alias envoy='vendor/bin/envoy'
