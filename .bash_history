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
ppath
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
"
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
cd 
ca .
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
conf config --list
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
ks
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
ggrep -n '009f0639-4865-473e-af1a-3d18d2122ca2' "ssampapplication.log.2020-06-25-23.eeylops-onebox-na-1e-e54d1b07.us-east-1.amazon.com.txt" 
ggrep -n '009f0639-4865-473e-af1a-3d18d2122ca2' "ssampapplication.log.2020-06-25-23.eeylops-onebox-na-1e-e54d1b07.us-east-1.amazon.com.txt" | tee 'eg.txt'
head -n1000 ssampapplication.log.2020-06-25-23.eeylops-onebox-na-1e-e54d1b07.us-east-1.amazon.com.txt > ss.txt
ggrep -oP "\] (.*) \(" "ss.txt" 
ggrep -oP "\] (.*) \(" "ss.txt" ggrep -oP "\] (.*) \(" "ss.txt" | sort | uniq -c | sort -rn
ggrep -oP "\] (.*) \(" "ss.txt" | sort | uniq -c | sort -rn
ggrep -oP "\] ([a-z0-9-]+) \(" "ss.txt" 
ggrep -oP "\] ([a-z0-9-]+) \(" "ss.txt" | sort | uniq -c | sort -rn
ggrep -oP "\] ([a-z0-9-]+) \(" "ssampapplication.log.2020-06-25-23.eeylops-onebox-na-1e-e54d1b07.us-east-1.amazon.com.txt" | sort | uniq -c | sort -rn
ggrep -oP "\] ([a-z0-9-]+) \(" "ss.txt" | sort | uniq -c | sort -rn | tee ss-counts.txt
ggrep -n "c233a239-2820-4675-9109-60f15f494c2b" "ss.txt" | tee ss-max.txt
ggrep -n "c233a239-2820-4675-9109-60f15f494c2b" "ssa.txt" | tee ssa-ss-max.txt
ggrep -n "c233a239-2820-4675-9109-60f15f494c2b" "ssampapplication.log.2020-06-25-23.eeylops-onebox-na-1e-e54d1b07.us-east-1.amazon.com.txt" | tee ssa-ss-max.txt
ggrep -oP "\] ([a-z0-9-]+) \(" "ssampapplication.log.2020-06-25-23.eeylops-onebox-na-1e-e54d1b07.us-east-1.amazon.com.txt" | sort | uniq -c | sort -rn | tee ssa-counts.txt
ggrep -n "aef91093-e686-4772-9224-35f4defdd9f7" "ssampapplication.log.2020-06-25-23.eeylops-onebox-na-1e-e54d1b07.us-east-1.amazon.com.txt" | tee "ssa-max.txt"
ggrep -n "ff80440c-0894-42cf-84ea-551f22a90144" "rr.txt" | tee "rr-ff80440c-0894-42cf-84ea-551f22a90144.txt"
id="f7e229a1-8b46-450a-bea8-5c09eb0bfb33" && ggrep -n "$id" "rr.txt" | tee "rr-${id}.txt"
echo 'foosomethingbar' | grep -Po '(?<=foo).*?(?=bar)'
echo 'foosomethingbar' | ggrep -Po '(?=foo).*?(?=bar)'
echo 'foosomethingbar' | ggrep -Po '(?<=foo).*?(?<=bar)'
echo 'foosomethingbar' | ggrep -Po '(?<=foo).*?(?=bar)'
echo 'foosomethingbar' | ggrep -Po '(?<=foo).*?'
echo 'foosomethingbar' | ggrep -Po '(?<=foo).*'
echo 'foosomethingbar' | ggrep -Po '(?<=foo).*(?.*)'
echo 'foosomethingbar' | ggrep -Po '(?<=foo).*(?=.*)'
echo 'foosomethingbar' | ggrep -Po '(?<=foo).* (?=.*)'
echo 'foosomething bar' | ggrep -Po '(?<=foo).* (?=.*)'
echo 'foosomething bar' | ggrep -Po '(?<=foo).* '
echo 'foosomething bar' | ggrep -Po '(?<=foo).* .*'
cat "ss.txt"  | grep -Po '(?<=\]) ([a-z0-9-]+)? (?=\())'
cat "ss.txt"  | ggrep -Po '(?<=\]) ([a-z0-9-]+)? (?=\())'
cat "ss.txt"  | ggrep -Po '(?<=\]) ([a-z0-9-]+)? (?=\()'
cat "ss.txt"  | grep -Po '(?<=\]) ([a-z0-9-]+)? (?=\(.+AHAJ0V6RRRTDF)' | uniq -c
cat "ss.txt"  | ggrep -Po '(?<=\]) ([a-z0-9-]+)? (?=\(.+AHAJ0V6RRRTDF)' | uniq -c
cat "ss.txt"  | ggrep -Po '(?<=\]) ([a-z0-9-]+)? (?=\(.+ATVPDKIKX0DER)' | uniq -c
cat "ss.txt"  | ggrep -Po '(?<=\]) ([a-z0-9-]+)? (?=\(.+ATVPDKIKX0DER)' | sort | uniq -c
cat "ss.txt"  | ggrep -Po '(?<=\]) ([a-z0-9-]+)? (?=\(.+ATVPDKIKX0DER)' | sort | uniq | sort -r
cat "ss.txt"  | ggrep -Po '(?<=\]) ([a-z0-9-]+)? (?=\(.+ATVPDKIKX0DER)' | sort | uniq -c | sort -r
cat "ss.txt"  | ggrep -Po '(?<=\]) ([a-z0-9-]+)? (?=\(.+ATVPDKIKX0DER)' | sort | uniq -c | sort -rn
qry -a -o -r eu -t "2020/08/08/**" -f "kod this" "grep -P 'this'"
lth
exit
cd 08-10-2020/
source ~/dotfiles/.script.qry.sh
qry -a -o -r eu -t 2020/08/08/** -f any-nonspaced_andReasonablyEscaped~string -- "grep -P 'this'"
qry -a -o -r eu -t '2020/08/08/**' -f any-nonspaced_andReasonablyEscaped~string -- "grep -P 'this'"
coc "clean up qry script and add output file name"
conf log
cd kk/
lat
lt
lta
ltr
lts
lr
git shortlong
git shortlog
git log
cat mt.sh 
curl midway.amazon.com
curl https://midway-auth.amazon.com/
curl http://localhost:8080/deep_ping
curl http://localhost/deep_ping
curl curl -kvv https://psss-4ul-p-1b-1-1e-677d3ccf.us-east-1.amazon.com:7243/sping
conf dag
kod 
coc "update console colors, docs, todos"
c show
c
c grep
which c
alias c
nl
which nl
nl --help
htop
pwd
ca ~/dotfiles/.
klist
klist -l
$0
echo "$0"
res
resp
resp=$(curl https://midway-auth.amazon.com/login);
$ if [ "Midway Authentication Portal" == "${resp}" ]; then echo "connected" fi;
$ if [[ "Midway Authentication Portal" == "${resp}" ]]; then echo "connected" fi;
$ if [[ "Midway Authentication Portal" =~ "${resp}" ]]; then echo "connected" fi;
$ if [[ "Midway Authentication Portal" =~ "${resp}" ]]; then echo "connected" fi
auto-enroll-wpa-vpn -f
vpn
ip
tcp
nmap
curl ifconfig
curl ifconfig*
curl ifconfig.me
scutil --nc list
scutil --nc list | grep Connected
scutil --nc list | grep ''
ifconfig
curl https://midway-auth.amazon.com/login
ifconfig | fzf
echo ' bad \"  string"' | sed -E 's/([^\]|^)"/\1\\"/g'
str
str '{1: "kod", [" kod sar"] }'
ca dotfiles/.script.textedit.sh 
coc "add simple scripts and plan for amz vpn lookup"
cd dotfiles/
source ./.source.loadorder.sh 
ca .gitignore
coc "add ordered loader"
c remote
c remote --list
c remotes
git branch
git branch-r
git remote add origin https://github.com/ufo2mstar/dotfiles.git
git branch -r
git status
git origin
git --help
git push
git push --set-upstream origin mac
git branch master
qey
qry -r eu -t "08/19/20" -f "dialup-check" "grep -oP 'EVENT_307'"
qry -r eu -t "08/19/19" -f "dialup-check" "grep -oP 'EVENT_307'"
qry -r eu -t "2020/08/19/19" -f "dialup-check" "grep -oP 'EVENT_307'"
head -n10  $lastfile
head -n20  $lastfile
vim $lastfile
cad
ca .bashrc
r20
r2o
git remote add gitfarm ssh://git.amazon.com/pkg/Narensub-dotfiles
git remote -v
git push --set-upstream gitfarm mac
grep -w
if (printf '%s\n' "${array1[@]}" | grep -xq $a); then     echo "it's in"; fi'
'; 
array1=(prova1 prova2 slack64)
echo $done
echo $done[0]
echo ${done[0]}
xs
ggrep
bbark -b 4
which pyenv
which rbenv
which nvm
bbark -b 4 -r eu
bbark -b 4 -r eu grep error
bbark -b 4 -r eu "grep error"
ss
bbark
bbark -r eu
00~array1=() array1+=prova1 
if (printf '%s\n' "${array1[@]}" | grep -xq $a); then     echo "it's in"; fi01~; 
array1=()
array1+=prova1 
array1+=prova2 
array1+=slack64
a=slack64
if (printf '%s\n' "${array1[@]}" | grep -xq $a); then     echo "it's in"; fi
array1+=(slack64)
array1=(slack64)
echo ${array[@]}
echo $array
echo ${array[0]}
echo ${array1[0]}
echo ${array1}
array1+=(slack640)
array1+=lack640
echo ${array1[@]}
echo ${done[@]}
bundle install
ruby -v
bundle i
c add .
which gem
gem list
bundle install --local
wc -l .bash_history
brazil
b
alias
toolbox
zz
which toolbox
cd EeylopsContexts/
cd EeylopsCore/
cd
cd workplace/
cd CarnacEventListenerService/
bwpp
cs workspace_ruby/.
cs workspace_ruby/**/.
cs workspace_ruby/scripts/.
alias cs
cs workspace_ruby/scripts/wiki/.
ca workspace_ruby/**/.
ck
coc -m "WIP: add ruby scripts"
alias | fzf
ccm -m "WIP: add ruby scripts"
ccm "WIP: add ruby scripts"
cp
cd src/EeylopsCore/
kinit -f
sudo jamf policy -event profile-internally-signed-certificates
sudo jamf policy -event profile-chrome
pry
ccm "move bbark to separate file"
cd src/
qry -- "grep 'slapshot'"
qry -t "2020/09/04/15" -- "grep 'ERROR'"
qry -t "2020/09/04/16" -- "grep 'slapshot'"
qry -t "2020/09/04/15" -- "grep 'slapshot'"
qry -t "2020/09/04/15" -- "grep 'contract'"
qry -t "2020/09/04/15" -- "grep '27c998e1-ff0b-418e-a17a-faf8a3663748'"
qry -t "2020/09/04/15" -- "grep -C10 'contract'"
qry -t "2020/09/04/15" -- "grep -C10 'Exception from subcontract'"
qry -t "2020/09/04/16" -- "grep -C10 'Exception from subcontract' | grep 'ShipTrackContext'"
qry -t "2020/09/04/15" -- "grep -C10 'Exception from subcontract' | grep 'ShipTrackContext'"
qry -t "2020/09/04/15" -- "grep -C10 'Exception from subcontract' | grep -C10 'ShipTrackContext'"
qry -t "2020/09/04/15" -- "grep -C10 'GetLineItem'"
fd
qry
echo $lastfile
alias s
zsh
ssh eeylops-timber-fs-iad-1a-b98398c0.us-east-1.amazon.com
ca
ca dotfiles/.
ca scripts/.
git add
git add -u 
cm "move ./workspace* items to ./scripts"
ccm "move ./workspace* items to ./scripts"
c log
cpush
c push
cs
c dag
c push origin
cd src/EeylopsCore
qry -t "2020/09/04/15" -- "grep -C10 'Failure while evaluating predicate.'"
qry -- "grep -C10 'Failure'"
qry -r eu -- "grep '307' "
qry -r eu -- "grep 'EVENT_307' "
qry -- "grep -C10 'Failure while'"
cd src/EeylopsSerialization/
brazil versionset clone --from Eeylops/mainline --to EeylopsDryRuns/dry-cr-$USER-$(date "+%Y-%m-%d") && brazil workspace --use --vs EeylopsDryRuns/dry-cr-$USER-$(date "+%Y-%m-%d")
alias bed
alias bwd
cr --help
cd -i EeylopsContexts -i EeylopsControlPlane -i EeylopsCore -i EeylopsEvaluator -i EeylopsSerialization
cd EeylopsControlPlane/
alias brc
brc bbf
brc format
cd EeylopsCore
bbf && bb
cd src/EeylopsEvaluator/
history
bbf
bb
bwd
cr -i EeylopsContexts -i EeylopsControlPlane -i EeylopsCore -i EeylopsEvaluator -i EeylopsSerialization
s
bbr
ndss
cd..
la
d
nds
ls
s
ls
cs
conf config --list
