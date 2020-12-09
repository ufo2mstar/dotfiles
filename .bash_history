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
cd 08-10-2020/
source ~/dotfiles/.script.qry.sh
qry -a -o -r eu -t 2020/08/08/** -f any-nonspaced_andReasonablyEscaped~string -- "grep -P 'this'"
qry -a -o -r eu -t '2020/08/08/**' -f any-nonspaced_andReasonablyEscaped~string -- "grep -P 'this'"
coc "clean up qry script and add output file name"
conf log
cd kk/
lat
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
git origin
git --help
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
bbark -b 4 -r eu
bbark -b 4 -r eu grep error
bbark -b 4 -r eu "grep error"
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
c add .
gem list
bundle install --local
wc -l .bash_history
brazil
b
toolbox
which toolbox
cd EeylopsContexts/
cd EeylopsCore/
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
ccm -m "WIP: add ruby scripts"
ccm "WIP: add ruby scripts"
kinit -f
sudo jamf policy -event profile-internally-signed-certificates
sudo jamf policy -event profile-chrome
ccm "move bbark to separate file"
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
echo $lastfile
alias s
zsh
ca dotfiles/.
ca scripts/.
git add
cm "move ./workspace* items to ./scripts"
ccm "move ./workspace* items to ./scripts"
c log
cpush
c dag
cd src/EeylopsCore
qry -t "2020/09/04/15" -- "grep -C10 'Failure while evaluating predicate.'"
qry -- "grep -C10 'Failure'"
qry -r eu -- "grep '307' "
qry -r eu -- "grep 'EVENT_307' "
cd src/EeylopsSerialization/
alias bed
cr --help
cd -i EeylopsContexts -i EeylopsControlPlane -i EeylopsCore -i EeylopsEvaluator -i EeylopsSerialization
alias brc
brc bbf
brc format
cd EeylopsCore
cd src/EeylopsEvaluator/
history
la
conf config --list
git add -u 
ccm "Add mac home dotfiles"
cd scripts/wiki/
rspec wiki_grapher_spec.rb preset_slapshot_indiv
rspec wiki_grapher_spec.rb -e preset_slapshot_indiv
cd src/EeylopsControlPlane/
bbr
cd textedit/
ruby json_converters.rb [exec] ControlPlane event:AsyncEventTrigger(eventTriggerId=urn:eeylops:etid:e1190014-a64e-486e-a089-59b5ecc67ad6, initialTriggerTime=2020-09-23T22:39:15.774Z, initialRenderFailureTime=Optional.empty, triggeringRetry=0, renderingRetry=0, stage=TEST, region=NA, blueprintName=OwenBlueprint, sourceEventJson={"marketplaceId":"1","jamesQueryResults":{"isSmileOrder":false,"isOrderB2B":false,"isUFGOrder":false,"isOrderApprovalRequired":false,"containsPrimeSurpriseBoxBuildingItems":false,"orderHasMembershipItems":false,"isXAAOrder":false,"isOrderTeen":false,"isGamma":false,"isPpiOrder":false,"isZapposMafia":false,"hasPrimeNowInfo":false,"isAFN":true,"isOrderItemAssociation":false,"isHeavyBulkyScheduledDelivery":false,"isPharmacyOrder":false,"2":true,"isOrderSVA":false,"hasBudget":false,"isMomentsOrder":false,"isSarekOrder":false,"isHFCOrder":false,"isOwnerNile":false,"isFreshOrder":false,"isOrderCorporateGC":false,"isUpFrontChargeOrder":false,"isTrialOrder":false},"orderId":"902-6353659-5775039","purchaseId":"903-3942233-0275839","daysUntilCancel":"2","orderingRealm":"USAmazon","eventType":"PaymentHardDeclined"}, predicateContextJsonOverride=Optional.empty, delayedEvalPredicateContextJsonOverride=Optional.empty)
ruby json_converters.rb 
ruby json_converters.rb "[exec] ControlPlane event:AsyncEventTrigger(eventTriggerId=urn:eeylops:etid:e1190014-a64e-486e-a089-59b5ecc67ad6, initialTriggerTime=2020-09-23T22:39:15.774Z, initialRenderFailureTime=Optional.empty, triggeringRetry=0, renderingRetry=0, stage=TEST, region=NA, blueprintName=OwenBlueprint, sourceEventJson={"marketplaceId":"1","jamesQueryResults":{"isSmileOrder":false,"isOrderB2B":false,"isUFGOrder":false,"isOrderApprovalRequired":false,"containsPrimeSurpriseBoxBuildingItems":false,"orderHasMembershipItems":false,"isXAAOrder":false,"isOrderTeen":false,"isGamma":false,"isPpiOrder":false,"isZapposMafia":false,"hasPrimeNowInfo":false,"isAFN":true,"isOrderItemAssociation":false,"isHeavyBulkyScheduledDelivery":false,"isPharmacyOrder":false,"2":true,"isOrderSVA":false,"hasBudget":false,"isMomentsOrder":false,"isSarekOrder":false,"isHFCOrder":false,"isOwnerNile":false,"isFreshOrder":false,"isOrderCorporateGC":false,"isUpFrontChargeOrder":false,"isTrialOrder":false},"orderId":"902-6353659-5775039","purchaseId":"903-3942233-0275839","daysUntilCancel":"2","orderingRealm":"USAmazon","eventType":"PaymentHardDeclined"}, predicateContextJsonOverride=Optional.empty, delayedEvalPredicateContextJsonOverride=Optional.empty)"
ruby json_converters.rb '[exec] ControlPlane event:AsyncEventTrigger(eventTriggerId=urn:eeylops:etid:e1190014-a64e-486e-a089-59b5ecc67ad6, initialTriggerTime=2020-09-23T22:39:15.774Z, initialRenderFailureTime=Optional.empty, triggeringRetry=0, renderingRetry=0, stage=TEST, region=NA, blueprintName=OwenBlueprint, sourceEventJson={"marketplaceId":"1","jamesQueryResults":{"isSmileOrder":false,"isOrderB2B":false,"isUFGOrder":false,"isOrderApprovalRequired":false,"containsPrimeSurpriseBoxBuildingItems":false,"orderHasMembershipItems":false,"isXAAOrder":false,"isOrderTeen":false,"isGamma":false,"isPpiOrder":false,"isZapposMafia":false,"hasPrimeNowInfo":false,"isAFN":true,"isOrderItemAssociation":false,"isHeavyBulkyScheduledDelivery":false,"isPharmacyOrder":false,"2":true,"isOrderSVA":false,"hasBudget":false,"isMomentsOrder":false,"isSarekOrder":false,"isHFCOrder":false,"isOwnerNile":false,"isFreshOrder":false,"isOrderCorporateGC":false,"isUpFrontChargeOrder":false,"isTrialOrder":false},"orderId":"902-6353659-5775039","purchaseId":"903-3942233-0275839","daysUntilCancel":"2","orderingRealm":"USAmazon","eventType":"PaymentHardDeclined"}, predicateContextJsonOverride=Optional.empty, delayedEvalPredicateContextJsonOverride=Optional.empty)'
ruby jc.rb '[exec] ControlPlane event:AsyncEventTrigger(eventTriggerId=urn:eeylops:etid:e1190014-a64e-486e-a089-59b5ecc67ad6, initialTriggerTime=2020-09-23T22:39:15.774Z, initialRenderFailureTime=Optional.empty, triggeringRetry=0, renderingRetry=0, stage=TEST, region=NA, blueprintName=OwenBlueprint, sourceEventJson={"marketplaceId":"1","jamesQueryResults":{"isSmileOrder":false,"isOrderB2B":false,"isUFGOrder":false,"isOrderApprovalRequired":false,"containsPrimeSurpriseBoxBuildingItems":false,"orderHasMembershipItems":false,"isXAAOrder":false,"isOrderTeen":false,"isGamma":false,"isPpiOrder":false,"isZapposMafia":false,"hasPrimeNowInfo":false,"isAFN":true,"isOrderItemAssociation":false,"isHeavyBulkyScheduledDelivery":false,"isPharmacyOrder":false,"2":true,"isOrderSVA":false,"hasBudget":false,"isMomentsOrder":false,"isSarekOrder":false,"isHFCOrder":false,"isOwnerNile":false,"isFreshOrder":false,"isOrderCorporateGC":false,"isUpFrontChargeOrder":false,"isTrialOrder":false},"orderId":"902-6353659-5775039","purchaseId":"903-3942233-0275839","daysUntilCancel":"2","orderingRealm":"USAmazon","eventType":"PaymentHardDeclined"}, predicateContextJsonOverride=Optional.empty, delayedEvalPredicateContextJsonOverride=Optional.empty)'
ruby jc.rb
ca ./scripts/.
ca ./scripts/*
ccm "add textedit scripts"
c push
c push origin
%HOME
alias ss
cr -i EeylopsContexts -i EeylopsControlPlane -i EeylopsCore -i EeylopsEvaluator -i EeylopsSerialization
l
npm
which node
gem i rails
ep
alias
rails uninstall
where bundler
which where
bi where
where
echo $PATH
which tails
which rails
nvm use 12.14
npm i yarn
gem i bundler
bundle upgrade
bin/rails sbundle -v
rails generate --help
rails generate rspec:install
railss
rails g controller WikiIgrapher index
npm install -g mdb-cli
mdb init
mdb login
bundler -v
rails setup
rails update
bin/update
sprockets-rails -v
gem list spr
yarn install popper jquery
yarn add popper jquery
yarn add @types/popper
yarn add "@types/popper"
yarn add "@types/jquery"
ssh vairang
rails s
yarn install --check-files
rails generate scaffold preview
rake
 bin/rails db:migrate RAILS_ENV=test
node -v
npm -v
npm install yarn
npm install -g npm
yarn -v
bin/rails generate migration Previews str_input:string:index json_output:text
bin/rails generate migration AddParamsToPreviews str_input:string:index json_output:text
bin/rails db:migrate
bundle install
rake routes
gem install localtunnel
localtunnel
npm install -g localtunnel
localtunnel 3000
alias lt
lt
lt --port 3000
lt --port 80
ping localhost
ping http://192.168.1.213/
ping 192.168.1.213
ping 192.168.1.213:3000
npx localtunnel --port 3000
alias bwd
git push
 git push --set-upstream origin mainline
cd workplace/
bwp RailsOctaneTemplates
brazil --setup
brazil --htlp
brazil --help
brazil setup
brazil setup ruby
brazil setup --ruby
toolbox update
bb spec
bwp
brazil setup platform-support
bbre
ndss
yarn run
yarn start:dev
cd .rbenv/
cd versions/
which nvm
cd
rbenv list
rbenv install list
rbenv install --list
rbenv -v
rbenv
rbenv global
rbenv local
which gem
whereis ruby
ppath
cd /Users/narensub/.rbenv/shims/ruby
cd /Users/narensub/.rbenv/shims/
rbenv which
rbenv which ruby
nvm
nvm -v
nvm versions
nvm list
npm install --global sort-package-json
cat package.json 
yarn add core-js@3
bin/webpack-dev-server --profile --json > stats.json
yarn add prettier -D
yarn add eslint eslint-config-prettier -D
yarn add eslint eslint-config-prettier eslint-plugin-import eslint-plugin-prettier eslint-plugin-sort-imports-es6-autofix -D
npx webpack
webpack --help
webpack --hot
bin/webpack-dev-server --hot
yarn add jest jest-config jest-each jest-each-table jest-mock-console -D
git clone https://github.com/vaibhavr4/QuickScriptsProto.git
npm i
yarn add -D speed-measure-webpack-plugin
yarn add -D webpack
bin/rails -v
rails -v
which ruby
ruby -v
webpack
webpack-dev-server
npm run start
bin/rails s
yarn add -D ts-jest
yarn add -D babel-loader @babel/core @babel/preset-env
tsc
yarn add -D @babel/plugin-transform-runtime
npm start
babel
npm ls -g
npm ls -g --depth 0
npm i -g babel-cli
babel -v
babel --version
yarn add -D webpack-bundle-analyzer
bin/webpack-dev-server --mode=development
yarn add -D @typescript-eslint/parser
yarn add -D @typescript-eslint/eslint-plugin
qry -o -- 'grep "Error"'
qry -o -- 'grep "Failed"'
qry -o -- 'grep -C10 "Failed"'
qry -o -- 'grep -C20 "Failed"'
pey
qry -o -- 'grep -C10 "\[ERROR\]"'
qry -o -- 'grep -C10 "[ERROR]"'
qry -o -t '2020/10/21/19' -- 'grep -C10 "[ERROR]"'
qry -o -t '2020/10/21/19' -- 'grep -C10 "\[ERROR\]"'
qry -o -t '2020/10/21/19' -- 'grep -C10 "ERROR"'
qry -o -t '2020/10/21/17' -- 'grep -C10 "ERROR"'
qry -o -t '2020/10/21/17' -- 'grep -C10 "21 Oct 2020 17:00:05,157 [ERROR] a134d56a-965e-4afc-a91a-035781e8ef74 (control-plane-thread-234) com.amazon.eeylops.controlplane.async.TriggeredEventQueueConsumer: Failed triggering notification for event (triggeringRetry: 17, renderingRetry: 0): AsyncEventTrigger(eventTriggerId=urn:eeylops:etid:d1d200b5-a03d-4bf0-9685-a7b76f659c05, initialTriggerTime=2020-10-21T13:42:38.767Z, initialRenderFailureTime=Optional.empty, triggeringRetry=17, renderingRetry=0, stage=PROD, region=NA, blueprintName=UnifiedEventBlueprint, sourceEventJson={"marketplaceId":"A2EUQ1WTGCTBG2","containerId":"201006081448504062778710201AZ","orderId":"702-7916582-5109831","orderingShipmentId":"DhhKDRcRz","trackingId":"4006318296179501","packageId":1,"eventCode":"EVENT_404","eventOccurrenceDate":"2020-10-16T16:04:58Z"}, predicateContextJsonOverride=Optional.empty, delayedEvalPredicateContextJsonOverride=Optional.empty)"'
qry -o -t '2020/10/21/17' -- 'grep -A10 "Failed triggering notification for event"'
zgrep 'ERROR' apollo/env/EeylopsService/var/output/logs/application.log.2020-10-21-20 | grep -v 'Failed to determine weblab treatment using isLnftFailure field' | grep 'blueprintName=GmpShipmentStatusEventBlueprint' | grep -Po '\"standardCarrierAlphaCode\"\:\"[\w_]+' | sort | uniq -c | sort -rn
qry -o -t '2020/10/21/20' -- 'grep -A10 "ERROR"'
pry
qry -o -t '2020/10/21/22' -- 'grep -B5 -A10 "This MetricDescriptorsRecorder has finalized recording and cannot record new metrics"'
qry -o -t '2020/10/21/21' -- 'grep -B5 -A10 "This MetricDescriptorsRecorder has finalized recording and cannot record new metrics"'ß
qry -o -t '2020/10/21/21' -- 'grep -B5 -A10 "This MetricDescriptorsRecorder has finalized recording and cannot record new metrics"'
qry -o -t '2020/10/21/21' -- 'grep -B5 -A10 "has finalized recording and cannot record new metrics"'
qry -o -t '2020/10/21/21' -- 'grep -C10 "has finalized recording and cannot record new metrics"'
qry -o -t '2020/10/21/21' -- "grep -C10 'has finalized recording and cannot record new metrics'"
qry -o -t '2020/10/21/21' -- "grep 'bddc5b04-5d0f-4718-af0b-efd850d955b0'"
qry -o -t '2020/10/21/21' -- "grep 'Evaluated successfully with Context'"
qry -o -t '2020/10/21/21' -- "grep 'AR0MLTXMM6JRY'"
qry -o -t '2020/10/21/21' -- "grep 'Failed in OptIn Workflow'"
ks
pwd
cd src/
qry -o -t '2020/10/21/21' -- "grep 'ea3df788-e675-4c00-aeba-96872eec61ae'"
qry -o -t '2020/10/21/21' -- "grep '219e410b-d504-49be-b61c-33075980b10a'"
bbf && bb
nohup
qry -- "grep -C10 'Failure while'"
qry
qry -t "2020/10/20/09"-- "grep -C10 'A283RJD52BT5NK'"
qry -t "2020/10/20/09" -- "grep -C10 'A283RJD52BT5NK'"
qry -t "2020/10/20/16" -- "grep -C10 'A283RJD52BT5NK'"
qry -o -- 'grep -C10 "OptIn"'
qry -o -- 'grep -C2 "OptIn"'
qry -o -- 'grep -C2 "OptInMetric"'
qry -- 'grep -C2 "OptInMetric"'
qry -t "2020/10/23/20" -- "grep -C10 '112-3821987-780665801'"
qry -t "2020/10/23/20" -- "grep ''"
qry -t "2020/10/23/20" -- "grep 'OptInConfirmation'"
qry -t "2020/10/23/21" -- "grep 'OptInConfirmation'"
qry -t "2020/10/23/21" -- "grep '00~112-3821987-78066580'"
qry -t "2020/10/23/20" -- "grep '112-3821987-78066580'"
qry -w -t "2020/10/23/20" -- "grep 'GSF_US_OPTINCONF_USECASE_SMS_307085'"
qry -w -t "2020/10/23/20" -- "grep 'GSF'"
qry -w -t "2020/10/23/20" -- "grep ''"
qry -w -t "2020/10/23/19" -- "grep '112-3821987-78066580'"
qry -w -t "2020/10/23/20" -- "grep '112-3821987-78066580'"
qry -w -t "2020/10/23/20" -- "grep -P '112-3821987-78066580|112-1333866-3105030|112-4218870-3501010'"
qry -t "2020/10/23/21" -- "grep -P '112-3821987-78066580|112-1333866-3105030|112-4218870-3501010'"
ssh eeylops-onebox-na-1e-e54d1b07
ssh eeylops-onebox-na-1e-e54d1b07.us-east-1.amazon.com
qry -t "2020/10/23/20" -- "grep -P '112-3821987-78066580|112-1333866-3105030|112-4218870-3501010'"
ssh cs-timber-fs-iad-1d-654113c3.us-east-1.amazon.co
ssh cs-timber-fs-iad-1d-654113c3.us-east-1.amazon.com
qry -t "2020/10/23/20" -- "grep -P 'OptInConfirmation'"
qry -t "2020/10/23/22" -- "grep -P 'OptInConfirmation'"
qry -t "2020/10/23/21" -- "grep -P 'OptInConfirmation'"
ssh eeylops-timber-fs-iad-1a-b98398c0.us-east-1.amazon.com
qry -t "2020/10/23/22" -- "grep -P 'bc523dfd-beb8-4b6d-9acf-051e6a11decc'"
qry -t "2020/10/24/{00,01}" -- "grep -P 'OptInConfirmation'"
tmux
qry -t "2020/10/23/21" -- "grep -P 'OptInConfirmation|AYWE1S8TF9GMZ|A3RCQAS5DUW3PG|AP6XSHOQXZER0|A1MVBN8UYPUIYM|A2NQE3NABM9WEJ|A1A8PEUJ25GW5E|A2BFZQ6OLIQIWD|A16BC6DWZ5W26F' -C5"
qry -t "2020/10/24/{00,01}" -- "grep -P -C2 'OptInConfirmation|AYWE1S8TF9GMZ|A3RCQAS5DUW3PG|AP6XSHOQXZER0|A1MVBN8UYPUIYM|A2NQE3NABM9WEJ|A1A8PEUJ25GW5E|A2BFZQ6OLIQIWD|A16BC6DWZ5W26F'"
ta
fzf alias
vim
cat .tmux.conf 
vim .tmux.conf 
cd src/EeylopsService
cr-pull CR-35079488:1
ca
cas
ca -s
cau
ca -u
ccm "Add path adjustment"
cs
cp
alias | fzf
st
cd cdd
ss
65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;37M65;34;37M65;34;37M65;34;37M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;33M65;34;33M65;34;33M65;34;33M65;34;33M65;34;33M65;34;33M65;34;33M65;34;33M65;34;33M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M65;34;38M
tls
0;56;10M0;56;10m
qry -t "2020/10/27/18" -- "grep -P '112-6660839-5893068|112-3320110-8771446|A2BFZQ6OLIQIWD' -C15"
cd EeylopsPredicates/
cd src/EeylopsPredicates/
qry -t 2020/10/29/12 -- grep -P 'A2BFZQ6OLIQIWD|114-8635436-1595418' -C15
qry -t "2020/10/29/01" -- "grep -P 'A2BFZQ6OLIQIWD|114-8635436-1595418' -C15"
qry -t "2020/10/29/12" -- "grep -P 'A2BFZQ6OLIQIWD|114-8635436-1595418' -C15"
bbf
npm clean
which npm
npm run clean
npm ci
yarn i
cd lib/
bran
ruby bran
ruby bran.rb
ruby bran.rb tree
ruby bran.rb tree components.yml
ruby bran.rb components.yml
ruby brandon.rb 
t
/bin/bash  /Volumes/workplace/local/repos/QuickScriptsOnRails/rb_prettier.sh 
rspec
bundle exec rspec
which webpack
webpack -v
bundle i
bundle config build.nio4r --with-cflags="-std=c99"
bundle
bin/webpack
cd src/EeylopsCore/
bwd
bb
git status
yarn i "eslint-plugin-prettier/react
"
yarn i eslint-plugin-prettier/react
yarn add eslint-plugin-prettier/react
yarn add -D eslint-plugin-prettier/react
prettier
yarn upgrade
yarn global add typescript@latest
tsc -v
yarn add -D sort-package-json
npx sort-package-json
yarn install --save @types/ace
npm install --save @types/ace
yarn add @types/ace
yarn add -D eslint-plugin-react-hooks
yarn add -D eslint-plugin-react react-performance react-hooks
yarn upgrade --latest
npx create-next-app nextjs-blog --use-npm --example "https://github.com/vercel/next-learn-starter/tree/master/learn-starter"
yarn add @types/react-router-dom
npm run dev
qry -t "2020/11/09/18" -- "grep -P 'Evaluated OptInDetail'"
qry -t "2020/11/09/18" -- "grep -P 'ZCLEIDVUZ5DPYG7JKMWEG12DDIL1SUT4UA3MU4TUS1LIDDTPXTQ2EIA2OX4TK2M7' -C15"
cd EeylopsControlPlane/
cr
qry -t "2020/11/09/18" -- "grep -P 'Failed to extract target data from Slapshot contract result: {}'"
qry -t "2020/11/10/20" -- "grep -P 'Failed to extract target data from Slapshot contract result: {}'"
qry -t "2020/11/10/22" -- "grep -P 'ERROR' -C 15"
ssh narensub@eeylops-timber-fs-iad-1a-b98398c0.us-east-1.amazon.com
zz
brazil versionset clone --from Eeylops/mainline --to EeylopsDryRuns/dry-cr-$USER-$(date "+%Y-%m-%d") && brazil workspace --use --vs EeylopsDryRuns/dry-cr-$USER-$(date "+%Y-%m-%d")
brazil versionset clone --from Eeylops/mainline --to EeylopsDryRuns/dry-testing-$USER-$(date "+%Y-%m-%d")
d
git clone https://github.com/pkellner/pluralsight-course-using-react-hooks.git
yarn install -D react-json-print
yarn add -D react-json-print
nds
yarn add -D react-json-view
qry -t "2020/11/10/22" -- "grep -P 'prune' -C 15"
qry -t "2020/11/10/22" -- "grep -P 'gss' -C 15"
qry -t "2020/11/10/22" -- "grep -P 'Pruned.*OptIn' -C 15"
cd timber/11-17-2020/
ggrep -P 'prune.*optin' 15-38-27_P-NA_2020-11-10-22_file_name.txt | tee filter.txt 
ggrep -P 'Pruned' 15-38-27_P-NA_2020-11-10-22_file_name.txt | tee filter.txt 
which touch
touch 1_run_webpack.sh
touch 2_run_rails.sh
bin/rails s -e development
bin/webpack-dev-server
yarn remove react-scripts
yarn add -D react-test-renderer
yarn add js-yaml
yarn add -D @types/js-yaml
yarn add jest-webpack-resolver -D
bash 1_serve_webpack.sh 
yarn add -D react-error-boundary
exit
/bin/bash  /Volumes/workplace/local/repos/QuickScriptsOnRails/1_serve_webpack.sh 
yarn add -D enzyme-adapter-react-16 enzyme
yarn add -D 
yarn add -D react-testing-library
yarn remove -D react-testing-library
yarn remove react-testing-library
yarn remove -D @testing-library/react
yarn add -D @testing-library/react
cd 
cd workplace/local/
cd repos/
cd QuickScriptsProto/
git clone --bare https://github.com/ufo2mstar/react-typescript-rails-simple-integration.git
cd react-typescript-rails-simple-integration.git/
git push --mirror https://github.com/ufo2mstar/QuickScripts.git
rm -rf react-typescript-rails-simple-integration.git/
cd QuickScripts
git config
git config --list
git rebase --root -i
git filter-branch --env-filter 'GIT_COMMITTER_DATE=$GIT_AUTHOR_DATE; export GIT_COMMITTER_DATE'
git filter-branch --env-filter 'GIT_COMMITTER_DATE=$GIT_AUTHOR_DATE; export GIT_COMMITTER_DATE' -f
git filter-branch --commit-filter -f '
git filter-branch --commit-filter '
        fi' HEAD -f
git filter-branch -f --commit-filter '
        if [ "$GIT_AUTHOR_EMAIL" = "1llyanovohatskyy@gmail.com" ];
        then
                GIT_AUTHOR_NAME="Naren Siva Subramani";
                GIT_AUTHOR_EMAIL="narensub@amazon.com";
        else
                git commit-tree "$@";
        fi' HEAD
GIT_COMMITTER_DATE="Mon 04 Apr 2010 14:56:00 EST" git commit --amend --no-edit --date "Thu 01 Oct 2020 21:00:00 EST"
GIT_COMMITTER_DATE="Thu 01 Oct 2020 21:00:00 EST" git commit --amend --no-edit --date "`date`"
GIT_COMMITTER_DATE="`date`" git commit --amend --no-edit --date "`date`"
git rebase -i --root
brew install git-redat
brew tap PotatoLabs/homebrew-git-redate
brew install git-redate
git redate -c 100
git redate -c 300
git redate
git dag
git redate --all
git redate --help
git redate -c
git-redate --all
git clone https://github.com/ufo2mstar/QuickScripts.git
/bin/bash  /Volumes/workplace/local/repos/QuickScriptsOnRails/2_serve_rails.sh 
bin/rails db:migrate RAILS_ENV=development
s
npm install -g yarn
which yarn
yarn add query-string
cd workplace/local/repos/QuickScripts
./2_serve_rails.sh
bash ./2_serve_rails.sh
ipconfig
yarn add react-copy-to-clipboard
yarn add react-toastify
yarn add @types/react-toastify
yarn add xstate
/bin/bash  /Volumes/workplace/local/repos/QuickScripts/2_serve_rails.sh 
yarn add darkreader
yarn add intro.js-react
ls
git clone https://github.com/MaximeHeckel/react-hook-context-emotion-dark-mode.git
cs react-hook-context-emotion-dark-mode/
cd react-hook-context-emotion-dark-mode/
yarn add -D framer-motion
yarn add -D @emotion/styled
yarn add @emotion/react
cd..
git clone https://github.com/MaximeHeckel/gatsby-theme-maximeheckel.git
cd gatsby-theme-maximeheckel/
yarn install
yarn add emotion-theming Mousetrap
yarn add emotion-theming mousetrap
yarb start
yarn start
/bin/bash  /Volumes/workplace/local/repos/QuickScripts/1_serve_webpack.sh 
Xcode openssl zlib readline
openssl
which zlib
zlib
bi Xcode
bi xcodegen
xcode
Xcode
xcodegen
cd workplace/local/repos/
git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git
./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer
bi zlib
which zlib
zlib
bi readline
which zlib
bi zlib
pip
which pip
which python
python3
cd workplace/local/repos/
./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer
bi openssl
brew upgrade openssl@1.1
brew info zlib
brew install zlib openssl readline
CFLAGS="-I$(brew --prefix openssl)/include -I$(brew --prefix readline)/include -I$(xcrun --show-sdk-path)/usr/include" LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix readline)/lib -L$(brew --prefix zlib)/lib"
./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer | tee 'bundled_inst.txt'
yarn add bootstrap-switch-button-react
yarn add react-split
eb
c
c log
alias c | fzf
alias | fzf
cs
ca
cs
cad
cs
cd
config | f
config | fzf
alias | fzf
ca .
ls
cs
ca .bash_history
cs
la
la bash
