#!/usr/bin/env bash

ORIGINAL_REPO='git://github.com/vadus1/rails_template.git'

usage()
{
  printf "%b" "
Запуск

 ./bootstrap <ИМЯ_ПРОЕКТА> --git <git_repo>
"
}

set_name()
{
  name=$1
  if echo $name | grep -e '^[A-Z]' > /dev/null; then
    echo "Название проекта: $name"
  elif [ -z "$name" ]; then
    usage
    exit 2
  else
    echo "Проект должен называться с заглавной буквы, $name не подходит."
    exit 4
  fi
}

set_name $1
shift

while (( $# > 0 ))
do
  token="$1"
  shift
  case "$token" in
    --git)
      git=$1
      echo "Кину проект в репозиторий: $git"
      shift
      ;;
    help|usage)
      usage
      exit 0
      ;;
    *)
      usage
      exit 12
      ;;
  esac
done

if [ -n "$name" ]; then
  lc_name=`echo $name | tr '[A-Z]' '[a-z]'`
  dest=$lc_name

  echo "Создаю проект в каталоге $dest"

  if git clone --depth 1 --branch master $ORIGINAL_REPO $dest && cd $dest; then
    rm -rf .git

    echo "Именую проект"
    perl -i -p -e "s/RailsTemplate/$name/g" */**/*.rb **/*.rb Rakefile
    perl -i -p -e "s/Rails_Template/$name/g" ./config/secrets.yml

    echo "Устанавливаю настройки базы"
    cp ./config/database.yml.example ./config/database.yml
    perl -i -p -e "s/Rails_Template/$lc_name/g" ./config/database.yml

    pwd | grep -v rails_template | rm ./bootstrap.sh # Самоуничтажаемся

    bundle

    if [ -n "$git" ]; then
      git init
      git remote add origin $git
      git add .
      git commit -m 'first commit'
      git push
    fi

  else
    echo "Ощутил проблемы при клонировании шаблона"
  fi

else
  usage
  exit 2
fi