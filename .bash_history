wc -l 11-39-36-P-EU_08-06-070809_FR-IT-UK.txt 
wc -l *
head -n20 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt 
head -n20 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt > simpler.txt
head -n200 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt > simpler.txt
head -n2000 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt > simpler.txt
ggrep -P "GmpShipmentStatusEvent.*EVENT_307.*APJ6JRA9NG5V4" 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt 
ggrep -C 10 -P "GmpShipmentStatusEvent.*EVENT_307.*APJ6JRA9NG5V4" 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt | tee
ggrep -C 10 -P "GmpShipmentStatusEvent.*EVENT_307.*APJ6JRA9NG5V4" 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt | tee kod.txt
ggrep -C 10 -P "GmpShipmentStatusEvent.*EVENT_307.*A1F83G8C2ARO7P" 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt | tee UKkod.txt
touch uk7.txt
ggrep -C 5 -P "scheduled-delivery" 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt | tee sd-7.txt
ec -l history
wc -l history
cd timber/2020-08-06/
ggrep -P "AMZN_UK" -C 3 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt 
ggrep -P "AMZN_UK_SH" -C 3 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt 
ggrep -P "AMZN_UK_SH" -C 10 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt | tee uk_sh.txt
ggrep -P "AMZN_UK_SH" -C 10 8-12-23-18-P-EU_08-06-09_FR-IT-UK.txt | tee uk_sh-8.txt
head -n10 7-11-39-36-P-EU_08-06-07_FR-IT-UK.txt 
head -n10 8-12-23-18-P-EU_08-06-09_FR-IT-UK.txt 
head -n10 9-12-24-22-P-EU_08-06-08_FR-IT-UK.txt 
ggrep -P "AMZN_UK_SH" -C 10 9-12-24-22-P-EU_08-06-08_FR-IT-UK.txt | tee uk_sh-81.txt
datetime="08/04/06" && search=" grep -C 10 'EVENT_307.*AMZN_ES_SH_SD.*orderIdsToOrderingShipmentIds'" && mkdir -p "$(date +%Y-%m-%d)" && lastfile="$(date +%Y-%m-%d/%H-%M-%S)-P-EU_08-04-06_ES-307.txt" && time ssh narensub@eeylops-timber-fs-dub-1b-630996ff.eu-west-1.amazon.com "zgrep '' /timber/eeylops-dev+prod@amazon.com/EeylopsService/EU/Prod/application.log/2020/$datetime/*.gz | $search " | tee -a $lastfile
cat .gitignore
ll
tim -d
which tim
declare -f tim
tim
tim -h
foo -a kod -h
pp
which tr
tr --help
mkdir --help
man mkdir
echo $HOME
echo ~
~ || $BOME
echo ~ || $BOME
echo $BOME || ~
echo $BOME && ~
qry eu
foo 
foo -a -b kod -h
foo -a kk -b kod -h
foo -b kk -a kod -h
foo -h
foo
foo -a
foo -a kod
foo -b kod
man tee
qry na
mkdir kk
rmdir kk
mkdir -p kk
datetime="2020/08/04/06" && echo tr '/' '-' datetime
datetime="2020/08/04/06" && echo $(tr '/' '-' datetime)
datetime="2020/08/04/06" && echo ${tr '/' '-' datetime}
datetime="2020/08/04/06" && tr '/' '-' datetime
datetime="2020/08/04/06" && echo tr '/' '-' < datetime
datetime="2020/08/04/06" && echo tr '/' '-' < $datetime
datetime="2020/08/04/06" && echo tr '/' '-' <<< $datetime
datetime="2020/08/04/06" && tr '/' '-' << $datetime
datetime="2020/08/04/06" && tr '/' '-' <<< $datetime
datetime="2020/08/04/06" && tr '/' '-' <<< $datetime | tr '-' '='
datetime="2020/08/04/06/**/{06,12}" | sed 's/[^0-9]*/-/g'
datetime="2020/08/04/06/**/{06,12}" | sed 's/[^0-9]*/-/g' | echo
datetime="2020/08/04/06/**/{06,12}" | sed 's/[^0-9]*/-/g' | cat
datetime="2020/08/04/06/**/{06,12}" | sed 's/[^0-9]*/-/g' datetime
datetime="2020/08/04/06/**/{06,12}" | sed 's/[^0-9]*/-/g'$datetime
datetime="2020/08/04/06/**/{06,12}" | sed 's/[^0-9]*/-/g' $datetime
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed 's/[^0-9]{1}/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed 's/[^\d]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed 's/\w/-/g'
man tr
file_region=echo $region| tr "[:lower:]" "[:upper:]"
echo $region
echo $region|tr '[a-z]' '[A-Z]'
file_region=echo $region|tr '[a-z]' '[A-Z]'
echo file_region=echo $region|tr '[a-z]' '[A-Z]'
echo file_region=$(echo $region|tr '[a-z]' '[A-Z]')
file_region=$(echo $region|tr '[a-z]' '[A-Z]')
echo $file_region
echo $datetime 
file_datetime=echo $datetime | sed 's/[^0-9]*/-/g'
file_datetime=$(echo ${datetime} | sed 's/[^0-9]*/-/g')
file_datetime=$(echo ${datetime} | sed 's/[^0-9]+/-/g')
file_datetime=$(echo ${datetime} | sed 's/[^0-9]+/-/g') && echo $file_datetime
file_datetime=$(echo ${datetime} | sed 's/[0-9]+/-/g') && echo $file_datetime
file_datetime=$(echo ${datetime} | sed 's/[^0-9]+/--/g') && echo $file_datetime
file_datetime=$(echo ${datetime} | sed 's/[^0-9]*/-/g') && echo $file_datetime
file_datetime=$(echo ${datetime} | sed 's/[^0-9]/-/g') && echo $file_datetime
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed 's/[^0-9]*/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed 's/[^0-9]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed 's/[^0-9]+/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed --posix 's/[^0-9]+/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed --posix 's/[^\d]+/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -e 's/[^\d]+/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -e 's/[^\d]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -e 's/[\d]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -e 's/[\w]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -e 's/[\w]+/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -eir 's/[\w]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -ir 's/[\w]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -i -r 's/[\w]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -r 's/[\w]/-/g'
man sed
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -E 's/[\w]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -E 's/[\d]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -E 's/0-9/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -E 's/[0-9]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -E 's/[^0-9]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -E 's/[^\d]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -E 's/[^\D]/-/g'
datetime="2020/08/04/06/**/{06,12}" | echo $datetime | sed -E 's/[^\digit]/-/g'
echo **
echo '**'
echo 'dd**'
datetime='2020/08/04/06/**/{06,12}' | echo $datetime
$datetime
datetime='2020/08/04/06/**/{06,12}' | echo ${datetime}
datetime="2020/08/04/06/**/{06,12}" | echo ${datetime}
datetime="2020/08/04/06/**/{06,12}" | echo "${datetime}"
datetime="2020/08/04/06/**/{06,12}" | echo "$datetime"
datetime="2020/08/04/06/**/{06,12}"
datetime="2020/08/04/06/**/{06,12}" && echo "$datetime"
[A
echo $datetime
echo $datetime | sed 's/[^0-9]/-/g'
echo {1..5}
echo {01..5}
echo {01..05}
echo {'01'..'05'}
datetime="2020/08/04/06/**/{06,12}" && echo $datetime | sed 's/[^0-9]+/-/g'
datetime="2020/08/04/06/**/{06,12}" && echo $datetime | sed -E 's/[^0-9]/-/g'
datetime="2020/08/04/06/**/{06,12}" && echo $datetime | sed -E 's/[^0-9]*/-/g'
datetime="2020/08/04/06/**/{06,12}" && echo $datetime | sed -E 's/[^0-9]+/-/g'
datetime="2020/08/04/06/**/{06,12}" && file_datetime=$(echo ${datetime} | sed -E 's/[^0-9]+/-/g') && ${file_datetime%-}
datetime="2020/08/04/06/**/{06,12}" && file_datetime=$(echo ${datetime} | sed -E 's/[^0-9]+/-/g') && echo ${file_datetime%-}
echo $file_datetime
datetime="2020/08/04/06/**/{06,12}" && file_datetime=$(echo ${datetime} | sed -E 's/[^0-9]+/-/g'| ${?%-})
env
source dotfiles/.script.qry.sh 
qry -a
set -e
qry -o
qry -o -w
kod(){   return "kod"; }
echo `""`
echo `"''"`
echo "''"
echo '""'
echo '"'
echo '"'"
echo `"k'`
echo '''
echo '\''
'
echo 'Don'\''t walk!'
source ~/dotfiles/.script.qry.sh 
qry kk
source ~/dotfiles/.script.qry.sh && qry kk
source ~/dotfiles/.script.qry.sh && qry
STR="hello world"
echo ${STR^}
echo ${STR,}
echo "$a" | tr '[:upper:]' '[:lower:]'
echo "$STR" | tr '[:upper:]' '[:lower:]'
kod
test
word=something
first=${word::1}
echo first
echo $first
fate
date "+%s"
date "%s"
date +%Y-%m-%d/%H-%M-%S
date +%Y/%m/%d/%H-%M-%S
date %Y/%m/%d/%H-%M-%S
date -%Y/%m/%d/%H-%M-%S
cal
ca 2020
cal 2020
date +%Y/%m/%d/%H/
qry -a -p -r eu -t "2020/08/08/**" -f "test" -- "grep 'this'"
qry -a -o -r eu -t "2020/08/08/**" -f "test" -- "grep 'this'"
qry -w -o -r eu -t "2020/08/08/**" -f "test" "grep 'this'"
cd 2020-08-06/
cd 2020-08-08/
cat 00-30-37_P-NA_2020-08-08-00_\$\{filename\}.txt 
cat 00-55-43_P-NA_2020-08-08-00_\$\{filename\}.txt 
cat 00-56-54_P-NA_2020-08-08-00_\$\{filename\}.txt 
bash 00-56-54_P-NA_2020-08-08-00_\$\{filename\}.txt 
bash cat 00-56-54_P-NA_2020-08-08-00_\$\{filename\}.txt 
cat 01-05-27_P-NA_2020-08-08-01_file_name.txt 
cat 01-06-06_P-NA_2020-08-08-01_file_name.txt 
datetime="2020/08/08/01" && search="ll" && filename="file_name" && lastfile="/Users/narensub/timber/2020-08-08/01-06-30_P-NA_2020-08-08-01_${filename}.txt" && mkdir -p "$(dirname "$lastfile")" && touch "$lastfile" && time ssh narensub@eeylops-timber-fs-iad-1a-b98398c0.us-east-1.amazon.com "zgrep '' /timber/eeylops-dev+prod@amazon.com/EeylopsService/NA/Prod/application.log/$datetime/*.gz | \
qry -a -o -r eu -t "2020/08/08/**" -f "test" "grep 'this'"
datetime="2020/08/08/**" && search="grep
'this'" && filename="test" && lastfile="/Users/narensub/timber/2020-08-08/01-07-20_O-EU_2020-08-08_${filename}.txt" && mkdir -p "$(dirname "$lastfile")" && touch "$lastfile" && time ssh narensub@eeylops-timber-fs-dub-1b-630996ff.eu-west-1.amazon.com "zgrep '' /timber/eeylops-dev+prod@amazon.com/EeylopsService/EU/OneBox/Prod/application.log/$datetime/*.gz | \
cat 01-07-20_O-EU_2020-08-08_test.txt 
datetime="2020/08/08/**" && search="grep -P 'this'" && filename="test" && lastfile="/Users/narensub/timber/2020-08-08/01-14-10_O-EU_2020-08-08_${filename}.txt" && mkdir -p "$(dirname "$lastfile")" && touch "$lastfile" && time ssh narensub@eeylops-timber-fs-dub-1b-630996ff.eu-west-1.amazon.com "zgrep '' /timber/eeylops-dev+prod@amazon.com/EeylopsService/EU/OneBox/Prod/application.log/$datetime/*.gz | \
cat query
cat 01-14-10_O-EU_2020-08-08_test.txt 
head -n10 01-14-10_O-EU_2020-08-08_test.txt 
coc "add easy timber log search script - qry WIP"
print '\n%20s\n' | tr ' ' '-'
printf '\n%20s\n' | tr ' ' '-'
printf '\n%20s\n\n' | tr ' ' '-'
k=$(printf '\n%20s\n\n' | tr ' ' '-')
k
`'ls'`
echo $_lastfile
$SECONDS
echo $SECONDS
date
date "+%c"
echo "\n\n$(date)\n"
printf "\n\n$(date)\n"
source ~/dotfiles/.script.qry.sh && qry ll
datetime="2020/08/08/**" \ && search="grep -P 'this'" \ && filename="test" \ && lastfile="/Users/narensub/timber/2020-08-08/13-12-06_O-EU_2020-08-08_${filename}.txt" \ && mkdir -p "$(dirname "$lastfile")" && touch "$lastfile" \ && time ssh narensub@eeylops-timber-fs-dub-1b-630996ff.eu-west-1.amazon.com \ "zgrep '' /timber/eeylops-dev+prod@amazon.com/EeylopsService/EU/OneBox/Prod/application.log/$datetime/*.gz | \ $search " | \ tee -a $lastfile
source ~/dotfiles/.script.qry.sh && qry -a -o -r eu -t "2020/08/08/**" -f "test" "grep -P 'this'"
query=
echo $query
aa="datetime="2020/08/08/**" \ && search="grep -P 'this'""
aa="datetime=2020/08/08/** \ && search=grep -P 'this'"
tr " \ " " " a
tr " \ " " " aa
echo aa | tr " \ " " "
echo $aa | tr " \ " " "
echo $aa | tr " \\ " " "
  echo $query
cd 2020
cd 2020/08/08/
bi qdirstat
cat 15-35-05_O-EU_2020-08-08_test.txt 
git clone https://github.com/shundhammer/qdirstat.git
cd qdirstat/
qmake
make
cd timber/
cat 16-34-38_O-EU_2020-08-08_test.txt 
qry -h
  draw_sep(){     echo $(printf "%$1s" | tr " " "${$2:-"-"}")   }
draw_sep
draw_sep(){     echo $(printf "%$1s" | tr " " "${$2:--}")   }
  draw_sep(){     echo $(printf "%$1s" | tr " " "${2:-"-"}")   }
draw_sep 20
cd 08-08-2020/
cat 22-37-23_O-EU_2020-08-08_test.txt 
a
aa=${date}
aa
$aa
aa=$(date)
echo $aa
bb=$(date)
$aa-$bb
start=`date +%s`
echo $start
echo $start ${start:0:1}
tic
toc
ca ~/.gitignore
qry -a -o -r eu -t "2020/08/08/**" -f "test" "grep -P 'this'"
coc "Upgrade qry script with duration and eval info - v0.2"
cat 23-38-21_O-EU_2020-08-08_test.txt 
cd 08-09-2020/
cat 00-08-24_O-EU_2020-08-08_test\ this.txt 
qry -a -o -r eu -t "2020/08/08/**" -f "test_this" "grep -P 'this'"
cat 00-10-18_O-EU_2020-08-08_test_this.txt 
cat 00-12-52_O-EU_2020-08-08_test\ this.txt 
datetime="2020/08/08/**" && search="grep -P 'this'" && filename="test this" && lastfile="/Users/narensub/timber/08-09-2020/00-12-52_O-EU_2020-08-08_${filename}.txt" && mkdir -p "$(dirname "$lastfile")" && touch "$lastfile" && time ssh narensub@eeylops-timber-fs-dub-1b-630996ff.eu-west-1.amazon.com "zgrep '' /timber/eeylops-dev+prod@amazon.com/EeylopsService/EU/OneBox/Prod/application.log/$datetime/*.gz | \
$search " | tee -a $lastfile
qry -a -o -r eu -t "2020/08/08/**" -f "test this" "grep -P 'this'"
cat 00-15-32_O-EU_2020-08-08_test
cat 00-15-32_O-EU_2020-08-08_test\ this.txt 
rm this.txt 
cat 00-20-26_O-EU_2020-08-08_kod
cat "00-20-26_O-EU_2020-08-08_kod this.txt" 
qry -a -o -r eu -t 2020/08/08/** -f kod this grep -P 'this'
cat this.txt 
qry -a -o -r eu -t 2020/08/08/** -f any-nonspaced_andReasonablyEscaped~string -- grep -P 'this'
cat 00-24-46_O-EU_2020-08-08_any-nonspaced_andReasonablyEscaped~string.txt 
cd random\ onebox\ gzs/
grap -n '' ssampapplication.log.2020-06-25-23.eeylops-onebox-na-1e-e54d1b07.us-east-1.amazon.com.txt | grep '009f0639-4865-473e-af1a-3d18d2122ca2' | tee 'eg-ss-rtn_del.txt'
ggrep -n '' ssampapplication.log.2020-06-25-23.eeylops-onebox-na-1e-e54d1b07.us-east-1.amazon.com.txt | grep '009f0639-4865-473e-af1a-3d18d2122ca2' | tee 'eg-ss-rtn_del.txt'

yarn add prettier-plugin-java --dev
npx prettier --write "**/*.java"
yarn add -D prettier
npx prettier
prettier -v
yarn add -D 
1.19.1
yarn add -D husky lint-staged
which prettier
prettier -c
prettier -c *
prettier -c **
npx prettier "**/*.java"
prettier
cs
cad
ca
c
cs
alias | fzf
alias cau="conf add -u"
