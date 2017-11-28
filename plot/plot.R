ggplot(data = genres, aes(x = gross_coef,y = score.coef))+
  geom_point(size =2,color = "steelblue")+
  geom_text(label=paste(genres$genres),colour="black",size=4
            , hjust = -0.1, alpha =0.7)+
  ggtitle("Genres Coefficient")+
  xlab("Gross Coefficient")+
  ylab("Score Coefficient")

ggplot(data = actors, aes(x = gross_coef,y = score_coef))+
  geom_point(size =2,color = "steelblue")+
  geom_text(label=paste(actors$actors),colour="black",size=4
            , hjust = -0.1,alpha = 0.7)

ggplot(data = directors, aes(x = gross_coef,y = score_coef))+
  geom_point(size =2,color = "steelblue")+
  geom_text(label=paste(directors$directors),colour="black",size=4
            , hjust = -0.1,alpha = 0.7)+
  ggtitle("Directors Coefficient")+
  xlab("Gross Coefficient")+
  ylab("Score Coefficient")

ggplot(data = directors, aes(x = gross_coef,y = score_coef))+
  geom_point(size =2,color = "steelblue")+
  geom_text(label=paste(directors$directors),colour="black",size=4
            , hjust = -0.1,alpha = 0.7)+
  ggtitle("Directors Coefficient")+
  xlab("Gross Coefficient")+
  ylab("Score Coefficient")

actors_filters = actors %>% 
  mutate(Attribute = "Actors") %>% 
  filter(actors %in% c("Livvy Stubenrauch",
                       "Maurice LaMarche",
                       "Keir O'Donnell",
                       "Billy Boyd",
                       "Don Rickles",
                       "John Ratzenberger",
                       "Jess Harnell",
                       "Orlando Bloom",
                       "Jennifer Lawrence",
                       "Hayley Atwell",
                       "Robert Downey Jr.",
                       "Jessica Capshaw",
                       "Christian Bale",
                       "Natalie Portman",
                       "Julia Ormond",
                       "Emma Stone",
                       "Tom Cruise"))

directors_filters = directors %>% 
  mutate(Attribute = "Directors") %>% 
  filter(directors %in% c("Chris Buck",
                          "Lee Unkrich",
                          "Tim Miller",
                          "Peter Jackson",
                          "Colin Trevorrow",
                          "Anthony Russo",
                          "Francis Lawrence"))
colnames(actors_filters)[1]="name"
colnames(directors_filters)[1]="name"

plot_data = rbind(actors_filters,directors_filters)

ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
  geom_point(size =3,aes(color = Attribute))+
  geom_text(label=paste(plot_data$name),colour="black",size=4
            , vjust = 1,alpha = 0.7)+
  ggtitle("Actors and Directors' Coefficients")+
  xlab("Gross Coefficient")+
  ylab("Score Coefficient")


colnames(actors)[1]="name"
colnames(directors)[1]="name"

actors = actors %>% 
  mutate(Attribute = "Actors")

directors = directors %>% 
  mutate(Attribute = "Directors")

rbind_data = rbind(actors,directors)

ggplot(data = rbind_data, aes(x = gross_coef,y = score_coef))+
R version 3.4.1 (2017-06-30) -- "Single Candle"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from C:/Users/Zhuoqun Sheng/Desktop/IMDb-5000/.RData]

> library(dplyr)

Attaching package: �dplyr�

The following objects are masked from �package:stats�:

    filter, lag

The following objects are masked from �package:base�:

    intersect, setdiff, setequal, union

> library(plyr)
------------------------------------------------------------------------
You have loaded plyr after dplyr - this is likely to cause problems.
If you need functions from both plyr and dplyr, please load plyr first, then dplyr:
library(plyr); library(dplyr)
------------------------------------------------------------------------

Attaching package: �plyr�

The following objects are masked from �package:dplyr�:

    arrange, count, desc, failwith, id, mutate, rename,
    summarise, summarize

> library(ggplot2)
Find out what's changed in ggplot2 at
http://github.com/tidyverse/ggplot2/releases.
> actors = plyr::join(read.csv("actors_score.csv")[,2:3],
+                     read.csv("actors_gross.csv")[,2:3],
+                     type = "left", 
+                     by = "actors")
> 
> keywords = plyr::join(read.csv("keywords_score.csv")[,2:3],
+                       read.csv("keywords_gross.csv")[,2:3],
+                       type = "right", 
+                       by = "keywords")
> directors = plyr::join(read.csv("directors_score.csv")[,2:3],
+                        read.csv("directors_gross.csv")[,2:3],
+                        type = "right", 
+                        by = "directors")
> genres_score = read.csv("genres_score.csv")[,2:3] 
> genres_gross = read.csv("genres_gross.csv")[,2:3]
> colnames(genres_score)=c("genres","score.coef")
> genres = plyr::join(genres_score,
+                     genres_gross,
+                     type = "right", 
+                     by = "genres")
> actors_filters = actors %>% 
+   mutate(attribute = "Actors")
> View(actors_filters)
> View(actors_filters)
> View(actors)
> View(actors)
> actors_filters = actors %>% 
+   mutate(attribute = "Actors") %>% 
+   filter(actors %in% c("Livvy Stubenrauch",
+                        "Maurice Lamarche",
+                        "Keir O'Donneil",
+                        "Billy Boyd",
+                        "Don Rickles",
+                        "John Ratzenberger",
+                        "Jess Harnell",
+                        "Oriando Bloom",
+                        "Jennifer Lawrance",
+                        "Hayley Atwell",
+                        "Robert Downey Jr.",
+                        "Jessica Capshaw",
+                        "Christian Bale",
+                        "Natalie Portman",
+                        "Julia Ormond",
+                        "Emma Stone",
+                        "Tom Cruise"))
> View(actors_filters)
> View(actors_filters)
> actors_filters = actors %>% 
+   mutate(attribute = "Actors") %>% 
+   filter(actors %in% c("Livvy Stubenrauch",
+                        "Maurice LaMarche",
+                        "Keir O'Donnell",
+                        "Billy Boyd",
+                        "Don Rickles",
+                        "John Ratzenberger",
+                        "Jess Harnell",
+                        "Oriando Bloom",
+                        "Jennifer Lawrance",
+                        "Hayley Atwell",
+                        "Robert Downey Jr.",
+                        "Jessica Capshaw",
+                        "Christian Bale",
+                        "Natalie Portman",
+                        "Julia Ormond",
+                        "Emma Stone",
+                        "Tom Cruise"))
> View(actors_filters)
> View(actors_filters)
> actors_filters = actors %>% 
+   mutate(attribute = "Actors") %>% 
+   filter(actors %in% c("Livvy Stubenrauch",
+                        "Maurice LaMarche",
+                        "Keir O'Donnell",
+                        "Billy Boyd",
+                        "Don Rickles",
+                        "John Ratzenberger",
+                        "Jess Harnell",
+                        "Orlando Bloom",
+                        "Jennifer Lawrence",
+                        "Hayley Atwell",
+                        "Robert Downey Jr.",
+                        "Jessica Capshaw",
+                        "Christian Bale",
+                        "Natalie Portman",
+                        "Julia Ormond",
+                        "Emma Stone",
+                        "Tom Cruise"))
> directors_filters = directors %>% 
+   mutate(attribute = "Directors") %>% 
+   filter(directors %in% c("Chris Buck",
+                           "Lee Unkrich",
+                           "Tim Miller",
+                           "Peter Jackson",
+                           "Colin Trevorrow",
+                           "Anthony Russo",
+                           "Francis Lawrence"))
> rbind(actors_filters,directors_filters)
Error in match.names(clabs, names(xi)) : 
  names do not match previous names
> ?rbind
> plot_data = rbind(actors_filters,directors_filters)
Error in match.names(clabs, names(xi)) : 
  names do not match previous names
> rownames(directors)
   [1] "1"    "2"    "3"    "4"    "5"    "6"    "7"    "8"   
   [9] "9"    "10"   "11"   "12"   "13"   "14"   "15"   "16"  
  [17] "17"   "18"   "19"   "20"   "21"   "22"   "23"   "24"  
  [25] "25"   "26"   "27"   "28"   "29"   "30"   "31"   "32"  
  [33] "33"   "34"   "35"   "36"   "37"   "38"   "39"   "40"  
  [41] "41"   "42"   "43"   "44"   "45"   "46"   "47"   "48"  
  [49] "49"   "50"   "51"   "52"   "53"   "54"   "55"   "56"  
  [57] "57"   "58"   "59"   "60"   "61"   "62"   "63"   "64"  
  [65] "65"   "66"   "67"   "68"   "69"   "70"   "71"   "72"  
  [73] "73"   "74"   "75"   "76"   "77"   "78"   "79"   "80"  
  [81] "81"   "82"   "83"   "84"   "85"   "86"   "87"   "88"  
  [89] "89"   "90"   "91"   "92"   "93"   "94"   "95"   "96"  
  [97] "97"   "98"   "99"   "100"  "101"  "102"  "103"  "104" 
 [105] "105"  "106"  "107"  "108"  "109"  "110"  "111"  "112" 
 [113] "113"  "114"  "115"  "116"  "117"  "118"  "119"  "120" 
 [121] "121"  "122"  "123"  "124"  "125"  "126"  "127"  "128" 
 [129] "129"  "130"  "131"  "132"  "133"  "134"  "135"  "136" 
 [137] "137"  "138"  "139"  "140"  "141"  "142"  "143"  "144" 
 [145] "145"  "146"  "147"  "148"  "149"  "150"  "151"  "152" 
 [153] "153"  "154"  "155"  "156"  "157"  "158"  "159"  "160" 
 [161] "161"  "162"  "163"  "164"  "165"  "166"  "167"  "168" 
 [169] "169"  "170"  "171"  "172"  "173"  "174"  "175"  "176" 
 [177] "177"  "178"  "179"  "180"  "181"  "182"  "183"  "184" 
 [185] "185"  "186"  "187"  "188"  "189"  "190"  "191"  "192" 
 [193] "193"  "194"  "195"  "196"  "197"  "198"  "199"  "200" 
 [201] "201"  "202"  "203"  "204"  "205"  "206"  "207"  "208" 
 [209] "209"  "210"  "211"  "212"  "213"  "214"  "215"  "216" 
 [217] "217"  "218"  "219"  "220"  "221"  "222"  "223"  "224" 
 [225] "225"  "226"  "227"  "228"  "229"  "230"  "231"  "232" 
 [233] "233"  "234"  "235"  "236"  "237"  "238"  "239"  "240" 
 [241] "241"  "242"  "243"  "244"  "245"  "246"  "247"  "248" 
 [249] "249"  "250"  "251"  "252"  "253"  "254"  "255"  "256" 
 [257] "257"  "258"  "259"  "260"  "261"  "262"  "263"  "264" 
 [265] "265"  "266"  "267"  "268"  "269"  "270"  "271"  "272" 
 [273] "273"  "274"  "275"  "276"  "277"  "278"  "279"  "280" 
 [281] "281"  "282"  "283"  "284"  "285"  "286"  "287"  "288" 
 [289] "289"  "290"  "291"  "292"  "293"  "294"  "295"  "296" 
 [297] "297"  "298"  "299"  "300"  "301"  "302"  "303"  "304" 
 [305] "305"  "306"  "307"  "308"  "309"  "310"  "311"  "312" 
 [313] "313"  "314"  "315"  "316"  "317"  "318"  "319"  "320" 
 [321] "321"  "322"  "323"  "324"  "325"  "326"  "327"  "328" 
 [329] "329"  "330"  "331"  "332"  "333"  "334"  "335"  "336" 
 [337] "337"  "338"  "339"  "340"  "341"  "342"  "343"  "344" 
 [345] "345"  "346"  "347"  "348"  "349"  "350"  "351"  "352" 
 [353] "353"  "354"  "355"  "356"  "357"  "358"  "359"  "360" 
 [361] "361"  "362"  "363"  "364"  "365"  "366"  "367"  "368" 
 [369] "369"  "370"  "371"  "372"  "373"  "374"  "375"  "376" 
 [377] "377"  "378"  "379"  "380"  "381"  "382"  "383"  "384" 
 [385] "385"  "386"  "387"  "388"  "389"  "390"  "391"  "392" 
 [393] "393"  "394"  "395"  "396"  "397"  "398"  "399"  "400" 
 [401] "401"  "402"  "403"  "404"  "405"  "406"  "407"  "408" 
 [409] "409"  "410"  "411"  "412"  "413"  "414"  "415"  "416" 
 [417] "417"  "418"  "419"  "420"  "421"  "422"  "423"  "424" 
 [425] "425"  "426"  "427"  "428"  "429"  "430"  "431"  "432" 
 [433] "433"  "434"  "435"  "436"  "437"  "438"  "439"  "440" 
 [441] "441"  "442"  "443"  "444"  "445"  "446"  "447"  "448" 
 [449] "449"  "450"  "451"  "452"  "453"  "454"  "455"  "456" 
 [457] "457"  "458"  "459"  "460"  "461"  "462"  "463"  "464" 
 [465] "465"  "466"  "467"  "468"  "469"  "470"  "471"  "472" 
 [473] "473"  "474"  "475"  "476"  "477"  "478"  "479"  "480" 
 [481] "481"  "482"  "483"  "484"  "485"  "486"  "487"  "488" 
 [489] "489"  "490"  "491"  "492"  "493"  "494"  "495"  "496" 
 [497] "497"  "498"  "499"  "500"  "501"  "502"  "503"  "504" 
 [505] "505"  "506"  "507"  "508"  "509"  "510"  "511"  "512" 
 [513] "513"  "514"  "515"  "516"  "517"  "518"  "519"  "520" 
 [521] "521"  "522"  "523"  "524"  "525"  "526"  "527"  "528" 
 [529] "529"  "530"  "531"  "532"  "533"  "534"  "535"  "536" 
 [537] "537"  "538"  "539"  "540"  "541"  "542"  "543"  "544" 
 [545] "545"  "546"  "547"  "548"  "549"  "550"  "551"  "552" 
 [553] "553"  "554"  "555"  "556"  "557"  "558"  "559"  "560" 
 [561] "561"  "562"  "563"  "564"  "565"  "566"  "567"  "568" 
 [569] "569"  "570"  "571"  "572"  "573"  "574"  "575"  "576" 
 [577] "577"  "578"  "579"  "580"  "581"  "582"  "583"  "584" 
 [585] "585"  "586"  "587"  "588"  "589"  "590"  "591"  "592" 
 [593] "593"  "594"  "595"  "596"  "597"  "598"  "599"  "600" 
 [601] "601"  "602"  "603"  "604"  "605"  "606"  "607"  "608" 
 [609] "609"  "610"  "611"  "612"  "613"  "614"  "615"  "616" 
 [617] "617"  "618"  "619"  "620"  "621"  "622"  "623"  "624" 
 [625] "625"  "626"  "627"  "628"  "629"  "630"  "631"  "632" 
 [633] "633"  "634"  "635"  "636"  "637"  "638"  "639"  "640" 
 [641] "641"  "642"  "643"  "644"  "645"  "646"  "647"  "648" 
 [649] "649"  "650"  "651"  "652"  "653"  "654"  "655"  "656" 
 [657] "657"  "658"  "659"  "660"  "661"  "662"  "663"  "664" 
 [665] "665"  "666"  "667"  "668"  "669"  "670"  "671"  "672" 
 [673] "673"  "674"  "675"  "676"  "677"  "678"  "679"  "680" 
 [681] "681"  "682"  "683"  "684"  "685"  "686"  "687"  "688" 
 [689] "689"  "690"  "691"  "692"  "693"  "694"  "695"  "696" 
 [697] "697"  "698"  "699"  "700"  "701"  "702"  "703"  "704" 
 [705] "705"  "706"  "707"  "708"  "709"  "710"  "711"  "712" 
 [713] "713"  "714"  "715"  "716"  "717"  "718"  "719"  "720" 
 [721] "721"  "722"  "723"  "724"  "725"  "726"  "727"  "728" 
 [729] "729"  "730"  "731"  "732"  "733"  "734"  "735"  "736" 
 [737] "737"  "738"  "739"  "740"  "741"  "742"  "743"  "744" 
 [745] "745"  "746"  "747"  "748"  "749"  "750"  "751"  "752" 
 [753] "753"  "754"  "755"  "756"  "757"  "758"  "759"  "760" 
 [761] "761"  "762"  "763"  "764"  "765"  "766"  "767"  "768" 
 [769] "769"  "770"  "771"  "772"  "773"  "774"  "775"  "776" 
 [777] "777"  "778"  "779"  "780"  "781"  "782"  "783"  "784" 
 [785] "785"  "786"  "787"  "788"  "789"  "790"  "791"  "792" 
 [793] "793"  "794"  "795"  "796"  "797"  "798"  "799"  "800" 
 [801] "801"  "802"  "803"  "804"  "805"  "806"  "807"  "808" 
 [809] "809"  "810"  "811"  "812"  "813"  "814"  "815"  "816" 
 [817] "817"  "818"  "819"  "820"  "821"  "822"  "823"  "824" 
 [825] "825"  "826"  "827"  "828"  "829"  "830"  "831"  "832" 
 [833] "833"  "834"  "835"  "836"  "837"  "838"  "839"  "840" 
 [841] "841"  "842"  "843"  "844"  "845"  "846"  "847"  "848" 
 [849] "849"  "850"  "851"  "852"  "853"  "854"  "855"  "856" 
 [857] "857"  "858"  "859"  "860"  "861"  "862"  "863"  "864" 
 [865] "865"  "866"  "867"  "868"  "869"  "870"  "871"  "872" 
 [873] "873"  "874"  "875"  "876"  "877"  "878"  "879"  "880" 
 [881] "881"  "882"  "883"  "884"  "885"  "886"  "887"  "888" 
 [889] "889"  "890"  "891"  "892"  "893"  "894"  "895"  "896" 
 [897] "897"  "898"  "899"  "900"  "901"  "902"  "903"  "904" 
 [905] "905"  "906"  "907"  "908"  "909"  "910"  "911"  "912" 
 [913] "913"  "914"  "915"  "916"  "917"  "918"  "919"  "920" 
 [921] "921"  "922"  "923"  "924"  "925"  "926"  "927"  "928" 
 [929] "929"  "930"  "931"  "932"  "933"  "934"  "935"  "936" 
 [937] "937"  "938"  "939"  "940"  "941"  "942"  "943"  "944" 
 [945] "945"  "946"  "947"  "948"  "949"  "950"  "951"  "952" 
 [953] "953"  "954"  "955"  "956"  "957"  "958"  "959"  "960" 
 [961] "961"  "962"  "963"  "964"  "965"  "966"  "967"  "968" 
 [969] "969"  "970"  "971"  "972"  "973"  "974"  "975"  "976" 
 [977] "977"  "978"  "979"  "980"  "981"  "982"  "983"  "984" 
 [985] "985"  "986"  "987"  "988"  "989"  "990"  "991"  "992" 
 [993] "993"  "994"  "995"  "996"  "997"  "998"  "999"  "1000"
 [ reached getOption("max.print") -- omitted 465 entries ]
> colnames(directors)=
+ ?rbind
> colnames(directors)
[1] "C:/PROGRA~1/R/R-34~1.1/library/base/help/cbind"
[2] NA                                              
[3] NA                                              
> View(directors)
> View(directors)
> library(dplyr)
> library(plyr)
> library(ggplot2)
> actors = plyr::join(read.csv("actors_score.csv")[,2:3],
+                     read.csv("actors_gross.csv")[,2:3],
+                     type = "left", 
+                     by = "actors")
> 
> keywords = plyr::join(read.csv("keywords_score.csv")[,2:3],
+                       read.csv("keywords_gross.csv")[,2:3],
+                       type = "right", 
+                       by = "keywords")
> directors = plyr::join(read.csv("directors_score.csv")[,2:3],
+                        read.csv("directors_gross.csv")[,2:3],
+                        type = "right", 
+                        by = "directors")
> genres_score = read.csv("genres_score.csv")[,2:3] 
> genres_gross = read.csv("genres_gross.csv")[,2:3]
> colnames(genres_score)=c("genres","score.coef")
> genres = plyr::join(genres_score,
+                     genres_gross,
+                     type = "right", 
+                     by = "genres")
> actors_filters = actors %>% 
+   mutate(attribute = "Actors") %>% 
+   filter(actors %in% c("Livvy Stubenrauch",
+                        "Maurice LaMarche",
+                        "Keir O'Donnell",
+                        "Billy Boyd",
+                        "Don Rickles",
+                        "John Ratzenberger",
+                        "Jess Harnell",
+                        "Orlando Bloom",
+                        "Jennifer Lawrence",
+                        "Hayley Atwell",
+                        "Robert Downey Jr.",
+                        "Jessica Capshaw",
+                        "Christian Bale",
+                        "Natalie Portman",
+                        "Julia Ormond",
+                        "Emma Stone",
+                        "Tom Cruise"))
> directors_filters = directors %>% 
+   mutate(attribute = "Directors") %>% 
+   filter(directors %in% c("Chris Buck",
+                           "Lee Unkrich",
+                           "Tim Miller",
+                           "Peter Jackson",
+                           "Colin Trevorrow",
+                           "Anthony Russo",
+                           "Francis Lawrence"))
> colnames(directors)
[1] "directors"  "score_coef" "gross_coef"
> colnames(directors)[1]="names"
> colnames(directors)
[1] "names"      "score_coef" "gross_coef"
> colnames(directors)[1]="name"
> colnames(actors_filters)[1]="name"
> colnames(directors_filters)[1]="name"
> plot_data = rbind(actors_filters,directors_filters)
> View(plot_data)
> View(plot_data)
> , hjust = -0.1,alpha = 0.7)+
Error: unexpected ',' in ","
>   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in ggtitle("Actors and Directos Coefficient") + xlab("Gross Coefficient") : 
  non-numeric argument to binary operator
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,color = attribute)+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , hjust = -0.1,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in layer(data = data, mapping = mapping, stat = stat, geom = GeomPoint,  : 
  object 'attribute' not found
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , hjust = -0.1,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> actors_filters = actors %>% 
+   mutate(Attribute = "Actors") %>% 
+   filter(actors %in% c("Livvy Stubenrauch",
+                        "Maurice LaMarche",
+                        "Keir O'Donnell",
+                        "Billy Boyd",
+                        "Don Rickles",
+                        "John Ratzenberger",
+                        "Jess Harnell",
+                        "Orlando Bloom",
+                        "Jennifer Lawrence",
+                        "Hayley Atwell",
+                        "Robert Downey Jr.",
+                        "Jessica Capshaw",
+                        "Christian Bale",
+                        "Natalie Portman",
+                        "Julia Ormond",
+                        "Emma Stone",
+                        "Tom Cruise"))
> directors_filters = directors %>% 
+   mutate(Attribute = "Directors") %>% 
+   filter(directors %in% c("Chris Buck",
+                           "Lee Unkrich",
+                           "Tim Miller",
+                           "Peter Jackson",
+                           "Colin Trevorrow",
+                           "Anthony Russo",
+                           "Francis Lawrence"))
Error in filter_impl(.data, quo) : Result must have length 1465, not 3
> colnames(actors_filters)[1]="name"
> colnames(directors_filters)[1]="name"
> plot_data = rbind(actors_filters,directors_filters)
Error in match.names(clabs, names(xi)) : 
  names do not match previous names
> colnames(actors_filters)[1]="name"
> colnames(directors_filters)[1]="name"
> plot_data = rbind(actors_filters,directors_filters)
Error in match.names(clabs, names(xi)) : 
  names do not match previous names
> directors_filters = directors %>% 
+   mutate(Attribute = "Directors") %>% 
+   filter(directors %in% c("Chris Buck",
+                           "Lee Unkrich",
+                           "Tim Miller",
+                           "Peter Jackson",
+                           "Colin Trevorrow",
+                           "Anthony Russo",
+                           "Francis Lawrence"))
Error in filter_impl(.data, quo) : Result must have length 1465, not 3
> actors_filters = actors %>% 
+   mutate(Attribute = "Actors") %>% 
+   filter(actors %in% c("Livvy Stubenrauch",
+                        "Maurice LaMarche",
+                        "Keir O'Donnell",
+                        "Billy Boyd",
+                        "Don Rickles",
+                        "John Ratzenberger",
+                        "Jess Harnell",
+                        "Orlando Bloom",
+                        "Jennifer Lawrence",
+                        "Hayley Atwell",
+                        "Robert Downey Jr.",
+                        "Jessica Capshaw",
+                        "Christian Bale",
+                        "Natalie Portman",
+                        "Julia Ormond",
+                        "Emma Stone",
+                        "Tom Cruise"))
> directors_filters = directors %>% 
+   mutate(Attribute = "Directors") %>% 
+   filter(directors %in% c("Chris Buck",
+                           "Lee Unkrich",
+                           "Tim Miller",
+                           "Peter Jackson",
+                           "Colin Trevorrow",
+                           "Anthony Russo",
+                           "Francis Lawrence"))
Error in filter_impl(.data, quo) : Result must have length 1465, not 3
> directors = plyr::join(read.csv("directors_score.csv")[,2:3],
+                        read.csv("directors_gross.csv")[,2:3],
+                        type = "right", 
+                        by = "directors")
> directors_filters = directors %>% 
+   mutate(Attribute = "Directors") %>% 
+   filter(directors %in% c("Chris Buck",
+                           "Lee Unkrich",
+                           "Tim Miller",
+                           "Peter Jackson",
+                           "Colin Trevorrow",
+                           "Anthony Russo",
+                           "Francis Lawrence"))
> colnames(actors_filters)[1]="name"
> colnames(directors_filters)[1]="name"
> plot_data = rbind(actors_filters,directors_filters)
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , hjust = -0.1,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in FUN(X[[i]], ...) : object 'attribute' not found
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , hjust = -0.1,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> , hjust = -0.1,vjust = -0.1,alpha = 0.7)+
Error: unexpected ',' in ","
>   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in ggtitle("Actors and Directos Coefficient") + xlab("Gross Coefficient") : 
  non-numeric argument to binary operator
> , hjust = -0.1,alpha = 0.7)+
Error: unexpected ',' in ","
>   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in ggtitle("Actors and Directos Coefficient") + xlab("Gross Coefficient") : 
  non-numeric argument to binary operator
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , hjust = -0.1,alpha = 0.7)
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , hjust = -0.1,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")
> , hjust = -0.1,alpha = 0.7)+
Error: unexpected ',' in ","
>   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in ggtitle("Actors and Directos Coefficient") + xlab("Gross Coefficient") : 
  non-numeric argument to binary operator
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , hjust = -0.1,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> , vjust = -0.1,alpha = 0.7)+
Error: unexpected ',' in ","
>   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in ggtitle("Actors and Directos Coefficient") + xlab("Gross Coefficient") : 
  non-numeric argument to binary operator
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = -0.1,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 0.1,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 0.3,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 0.7,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 1,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 1,alpha = 0.7)+
+   scale_x_continuous(limits = c(-1.7))
>   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in ggtitle("Actors and Directos Coefficient") + xlab("Gross Coefficient") : 
  non-numeric argument to binary operator
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 1,alpha = 0.7)+
+   scale_x_continuous(limits = c(-1.7))
>   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in ggtitle("Actors and Directos Coefficient") + xlab("Gross Coefficient") : 
  non-numeric argument to binary operator
> gplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 1,alpha = 0.7)+
+   scale_x_continuous(limits = c(-1,7))
Error in gplot(data = plot_data, aes(x = gross_coef, y = score_coef)) : 
  could not find function "gplot"
>   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in ggtitle("Actors and Directos Coefficient") + xlab("Gross Coefficient") : 
  non-numeric argument to binary operator
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 1,alpha = 0.7)+
+   scale_x_continuous(limits = c(-1,7))+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Warning messages:
1: Removed 1 rows containing missing values (geom_point). 
2: Removed 1 rows containing missing values (geom_text). 
> , vjust = 1,alpha = 0.7)+
Error: unexpected ',' in ","
>   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in ggtitle("Actors and Directos Coefficient") + xlab("Gross Coefficient") : 
  non-numeric argument to binary operator
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 1,alpha = 0.7)+
+   ggtitle("Actors and Directos Coefficient")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 1,alpha = 0.7)+
+   ggtitle("Actors and Directos' Coefficients")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 1,alpha = 0.7)+
+   ggtitle("Actors and Directors' Coefficients")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> ggplot(data = plot_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =3,aes(color = Attribute))+
+   geom_text(label=paste(plot_data$name),colour="black",size=4
+             , vjust = 1,alpha = 0.7)+
+   ggtitle("Actors and Directors' Coefficients")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> colnames(actors)[1]="name"
> colnames(directors)[1]="name"
> rbind_data = rbind(actors,directors)
> ggplot(data = rbind_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =3,aes(color = Attribute))+
+   ggtitle("Actors and Directors' Coefficients")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
Error in FUN(X[[i]], ...) : object 'Attribute' not found
> actors = actors %>% 
+   mutate(Attribute = "Actors")
> actors = actors %>% 
+   mutate(Attribute = "Actors")
> directors = directos %>% 
+   mutate(Attribute = "Directors")
Error in eval(lhs, parent, parent) : object 'directos' not found
> directors = directors %>% 
+   mutate(Attribute = "Directors")
> rbind_data = rbind(actors,directors)
> ggplot(data = rbind_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =3,aes(color = Attribute))+
+   ggtitle("Actors and Directors' Coefficients")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> ggplot(data = rbind_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =1,aes(color = Attribute))+
+   ggtitle("Actors and Directors' Coefficients")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> ggplot(data = rbind_data, aes(x = gross_coef,y = score_coef))+
+   geom_point(size =2,aes(color = Attribute))+
+   ggtitle("Actors and Directors' Coefficients")+
+   xlab("Gross Coefficient")+
+   ylab("Score Coefficient")
> 
  geom_point(size =2,aes(color = Attribute))+
  ggtitle("Actors and Directors' Coefficients")+
  xlab("Gross Coefficient")+
  ylab("Score Coefficient")
