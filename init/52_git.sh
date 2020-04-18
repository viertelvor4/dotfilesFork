#cloning git porjects
e_header "Clonig git projects"
e_header "--> visitor guide cms"
cd /var/www/html
if [[ ! -d "visitorguide_cms" ]]; then
  git clone ssh://bb:7998/hal/base.git visitorguide_cms
  cd visitorguide_cms
  composer install
fi


