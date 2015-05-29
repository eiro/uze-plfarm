# debian system files needs patches to avoid warnings 
export DEBIAN_PREVENT_KEYBOARD_CHANGES=
export skip_global_compinit= 

# make local::lib happy
export PERL_LOCAL_LIB_ROOT

# make rtfarm happy (maybe need to be clean)
export RT_VER RT_ROOT ST_NAME ST_ROOT ST_PORT
export DB_TYPE DB_NAME DB_USER DB_PASS DB_HOST

# bootstrap plfarm (see the plfarm POD for details)
export RTFARM_ROOT=${RTFARM_ROOT:=$HOME}
export RTFARM_DIST=${RTFARM_DIST:=$RTFARM_ROOT/store}
export RTFARM_SITE=${RTFARM_SITE:=$RTFARM_ROOT/site}
export RTFARM_NGINX=$RTFARM_ROOT/etc/nginx
export RTFARM_SITES_ALL=$RTFARM_SITE/'*(N:r:t)'
export RTFARM_NGINX_ON=$RTFARM_NGINX/'*(N:r:t)' 
