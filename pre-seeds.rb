# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# TOPICS
 = Topic.create(category: "News")
ent = Topic.create(category: "Entertainment")



Salesman.create(email: "kevin@kkr.com", password: "123", territory: "Europe")
Salesman.create(email: "kns@kkr.com", password: "123", territory: "Asia")
Salesman.create(email: "richard@kkr.com", password: "123", territory: "Americas")
Salesman.create(email: "africa@kkr.com", password: "123", territory: "Africa")

Port_manager.create(email: "Shanghai@KKR.com", password: "123", location: "Shanghai")
Port_manager.create(email: "Singapore@KKR.com", password: "123", location: "Singapore")
Port_manager.create(email: "LA@KKR.com", password: "123", location: "Los Angeles")
Port_manager.create(email: "Savannah@KKR.com", password: "123", location: "Savannah")
Port_manager.create(email: "Rotterdam@KKR.com", password: "123", location: "Rotterdam")
Port_manager.create(email: "Hamburg@KKR.com", password: "123", location: "Hamburg")
Port_manager.create(email: "Panama@KKR.com", password: "123", location: "Panama")
Port_manager.create(email: "Santos@KKR.com", password: "123", location: "Santos")
Port_manager.create(email: "Durban@KKR.com", password: "123", location: "Durban")
Port_manager.create(email: "Kenya@KKR.com", password: "123", location: "Kenya")

Boat.create(name: "Edmund Fitzgerald", container_limit: "300", port: "Panama", at_sea: "TRUE")
Boat.create(name: "Orca", container_limit: "300", port: "Hamburg", at_sea: "TRUE")
Boat.create(name: "Captayannis", container_limit: "100", port: "Durban", at_sea: "TRUE")
Boat.create(name: "USS Arizona", container_limit: "100", port: "Santos", at_sea: "TRUE")
Boat.create(name: "Foxhound", container_limit: "300", port: "Santos", at_sea: "TRUE")
Boat.create(name: "Sportivo ", container_limit: "50", port: "Kenya", at_sea: "TRUE")
Boat.create(name: "Lusitania", container_limit: "50", port: "Savannah", at_sea: "TRUE")
Boat.create(name: "Sansinena", container_limit: "20", port: "Los Angeles", at_sea: "TRUE")
Boat.create(name: "Exxon Valdez", container_limit: "20", port: "Singapore", at_sea: "TRUE")
Boat.create(name: "Suilven", container_limit: "300", port: "Rotterdam", at_sea: "TRUE")
Boat.create(name: "The Bismarck", container_limit: "10", port: "Kenya", at_sea: "TRUE")
Boat.create(name: "Costa Concordia", container_limit: "50", port: "Shanghai", at_sea: "TRUE")
Boat.create(name: "Sewol", container_limit: "50", port: "Shanghai", at_sea: "FALSE")
Boat.create(name: "Maple Lea", container_limit: "300", port: "Savannah", at_sea: "FALSE")
Boat.create(name: "Titanic", container_limit: "200", port: "Los Angeles", at_sea: "FALSE")
Boat.create(name: "Dona Paz", container_limit: "200", port: "Singapore", at_sea: "FALSE")
Boat.create(name: "Le Joola", container_limit: "100", port: "Shanghai", at_sea: "FALSE")
Boat.create(name: "Vasa", container_limit: "100", port: "Panama", at_sea: "FALSE")
Boat.create(name: "World Discoverer", container_limit: "100", port: "Singapore", at_sea: "FALSE")
Boat.create(name: "Schooner Sweepstakes", container_limit: "10", port: "Kenya", at_sea: "FALSE")
Boat.create(name: "Sea Lion", container_limit: "50", port: "Hamburg", at_sea: "FALSE")
Boat.create(name: "El Faro", container_limit: "300", port: "Durban", at_sea: "FALSE")
Boat.create(name: "Flinterstar", container_limit: "300", port: "Kenya", at_sea: "FALSE")


Work_order.create(origin: "Hamburg", destination: "Kenya", containers: 100, boat_id: 4)


At sea should not be a boolean!!!!!!!

fs = Article.create(title: "Something happened in the Middle East", body: "orem ipsum dolor sit amet, ius at novum
dissentiunt. Nemore audiam insolens ea mea. Vel te dicunt eripuit, est amet
gubergren in, eu his quaeque facilisis. Cu labore malorum usu, ius causae
equidem temporibus no. Cu nam offendit hendrerit, duo an malis officiis
nominati.\n Fugit legimus mandamus est ex. Vis ex nonumy laoreet abhorreant,
per te omnium probatus eleifend. Ad facer senserit pro. At cum etiam fabulas
impedit, prima argumentum cu ius. /n Vix dignissim similique et, ad meis
persius liberavisse mel, sea integre nominati cu. At assum facete aliquam per,
platonem scripserit mea an. Amet malorum tibique his et, ut ullum complectitur
pro. Cu ius maiorum argumentum, ei sit alii vituperatoribus, ea cum habeo
prodesset mediocritatem. Ut adhuc senserit gloriatur eos. Falli putant ei cum,
at facer consequuntur delicatissimi cum, eleifend corrumpit ex usu. \n
Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu.", image_url: "news.jpg", staff_id: 8) 
fs.topics.push(news)

ge = Article.create(title: "Tax Payers to build owner of sports team a new place for him to charge them to watch his team", body: "Lorem ipsum dolor sit amet, doming cetero sit ex. Pri ea noluisse pertinax. Cu mollis tincidunt mediocritatem eos. Cu patrioque prodesset mel, sit ea sententiae reprehendunt. Ea consulatu argumentum sea. Regione ancillae persequeris te mei, regione sensibus usu at. Ut duis inimicus eam, soluta audiam iudicabit vel at. \n
At fabulas docendi electram sed, cetero aliquando prodesset an vis. Assum intellegam deterruisset vis te, idque choro iudico eu has. Ea mel ubique consetetur philosophia. Ut vix soluta graece. Ad erant mandamus mei. Ea est ceteros officiis, quo stet insolens hendrerit ut, ea mei suavitate patrioque.\n
\n 
Id has suas dicunt, ne ius quot dictas. Sea in feugiat propriae. Vix ea aperiam ocurreret. Eu aperiri argumentum mea, usu elitr imperdiet ea. Ne vix utamur omnesque salutatus. In mel clita admodum, vim id debitis scribentur delicatissimi. Vim reque elitr saperet id, et his natum nullam petentium, vis an nostro facete audiam.\n
\n 
Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n
\n 
Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\n
\n 
Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
\n 
Mei apeirian consequat eu. At qui tollit equidem. Ne mutat ullamcorper suscipiantur pro, qui quas noster no. Alia oportere eam ne.", image_url: "stadium.jpg", staff_id: 7)
ge.topics.push(sports)




g = Article.create(title: "Sports Team Wins Sporting Event", body: "Lorem ipsum dolor sit amet, doming cetero sit ex. Pri ea noluisse pertinax. Cu mollis tincidunt mediocritatem eos. Cu patrioque prodesset mel, sit ea sententiae reprehendunt. Ea consulatu argumentum sea. Regione ancillae persequeris te mei, regione sensibus usu at. Ut duis inimicus eam, soluta audiam iudicabit vel at. \n
At fabulas docendi electram sed, cetero aliquando prodesset an vis. Assum intellegam deterruisset vis te, idque choro iudico eu has. Ea mel ubique consetetur philosophia. Ut vix soluta graece. Ad erant mandamus mei. Ea est ceteros officiis, quo stet insolens hendrerit ut, ea mei suavitate patrioque.\n
\n 
Id has suas dicunt, ne ius quot dictas. Sea in feugiat propriae. Vix ea aperiam ocurreret. Eu aperiri argumentum mea, usu elitr imperdiet ea. Ne vix utamur omnesque salutatus. In mel clita admodum, vim id debitis scribentur delicatissimi. Vim reque elitr saperet id, et his natum nullam petentium, vis an nostro facete audiam.\n
\n 
Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n
\n 
Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\n
\n 
Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
\n 
Mei apeirian consequat eu. At qui tollit equidem. Ne mutat ullamcorper suscipiantur pro, qui quas noster no. Alia oportere eam ne.", image_url: "sports.jpg", staff_id: 1)
g.topics.push(sports)


g = Article.create(title: "Speed drinking competition to consider ban on Kessel Run Ale", body: "Lorem ipsum dolor sit amet, doming cetero sit ex. Pri ea noluisse pertinax. Cu mollis tincidunt mediocritatem eos. Cu patrioque prodesset mel, sit ea sententiae reprehendunt. Ea consulatu argumentum sea. Regione ancillae persequeris te mei, regione sensibus usu at. Ut duis inimicus eam, soluta audiam iudicabit vel at. \n
At fabulas docendi electram sed, cetero aliquando prodesset an vis. Assum intellegam deterruisset vis te, idque choro iudico eu has. Ea mel ubique consetetur philosophia. Ut vix soluta graece. Ad erant mandamus mei. Ea est ceteros officiis, quo stet insolens hendrerit ut, ea mei suavitate patrioque.\n
\n 
Id has suas dicunt, ne ius quot dictas. Sea in feugiat propriae. Vix ea aperiam ocurreret. Eu aperiri argumentum mea, usu elitr imperdiet ea. Ne vix utamur omnesque salutatus. In mel clita admodum, vim id debitis scribentur delicatissimi. Vim reque elitr saperet id, et his natum nullam petentium, vis an nostro facete audiam.\n

Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
\n 
Mei apeirian consequat eu. At qui tollit equidem. Ne mutat ullamcorper suscipiantur pro, qui quas noster no. Alia oportere eam ne.", image_url: "kessel-drunk.png", staff_id: 1)
g.topics.push(sports)


d = Article.create(title: "Movie Star to Star in Movie", body: "Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\r\n
\n 
Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
", image_url: "ent.jpg", staff_id: 2)
d.topics.push(ent)

zoir = Article.create(title: "Seinfeld star to step down from the 'Human Fund'", body: "Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.
\n Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu.\n Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\nEa reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.
", image_url: "george.png", staff_id: 5)
zoir.topics.push(ent)

kve = Article.create(title: "Is lunch the best time to learn?", body: "Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.
\n Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu.\n Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\nEa reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.
", image_url: "food-1.jpg", staff_id: 4)
kve.topics.push(food)

dp = Article.create(title: "Star Wars is different than Star Trek, reports claim", body: "Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\r\n

Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
", image_url: "ent.jpg", staff_id: 6)
dp.topics.push(ent)

fsu = Article.create(title: "September-Third is looking to change weddings.", body: "orem ipsum dolor sit amet, ius at novum
dissentiunt. Nemore audiam insolens ea mea. Vel te dicunt eripuit, est amet
gubergren in, eu his quaeque facilisis. Cu labore malorum usu, ius causae
equidem temporibus no. Cu nam offendit hendrerit, duo an malis officiis
nominati.\n Fugit legimus mandamus est ex. Vis ex nonumy laoreet abhorreant,
per te omnium probatus eleifend. Ad facer senserit pro. At cum etiam fabulas
impedit, prima argumentum cu ius. /n Vix dignissim similique et, ad meis
persius liberavisse mel, sea integre nominati cu. At assum facete aliquam per,
platonem scripserit mea an. Amet malorum tibique his et, ut ullum complectitur
pro. Cu ius maiorum argumentum, ei sit alii vituperatoribus, ea cum habeo
prodesset mediocritatem. Ut adhuc senserit gloriatur eos. Falli putant ei cum,
at facer consequuntur delicatissimi cum, eleifend corrumpit ex usu. \n
Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu.", image_url: "sept-third.jpg", staff_id: 8) 
fsu.topics.push(biz)


ile = Article.create(title: "Double Jeopardy postponed until next week", body: "Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu. Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\n

Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
", image_url: "jeopardy.jpg", staff_id: 6)

ile.topics.push(sports)

i = Article.create(title: "Report: Mumblr struggles to communicate with investors", body: "Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu. Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\n

Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
", image_url: "business2.jpg", staff_id: 6)
i.topics.push(biz)

dp = Article.create(title: "Leash & Collar loses ten dogs in a major leash entanglement", body: "Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\r\n

Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
", image_url: "leash-collar-logo.png", staff_id: 6)
dp.topics.push(news)

i = Article.create(title: "Alan use to work in finance", body: "Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu. Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\n

Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
", image_url: "business.jpg", staff_id: 1)
i.topics.push(biz)


z = Article.create(title: "After complaints from customers, Chipotle says all food will be at least 80% E.coli free at all locations", body: "Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.
\n Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu.\n Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\nEa reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.
", image_url: "food.jpg", staff_id: 2)
z.topics.push(food)


il = Article.create(title: "Seth's daily salads", body: "Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu. Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\n

Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
", image_url: "food-2.jpg", staff_id: 2)
il.topics.push(food)


kv = Article.create(title: "Kevin's reviews: best places to grab lunch with your ex! ", body: "Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.
\n Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu.\n Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

\n Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\nEa reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.
", image_url: "food-1.jpg", staff_id: 1)
kv.topics.push(food)


zoi = Article.create(title: "Vino Vitae: Perfect for drinking alone", body: "Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.
\n Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu.\n Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\nEa reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.
", image_url: "wine.png", staff_id: 5)
zoi.topics.push(food)

dz = Article.create(title: "Charity established to benefit the 76ers needs your help", body: "Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

\n Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\r\n

Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
", image_url: "sports-1.png", staff_id: 1)
dz.topics.push(sports)

ff = Article.create(title: "Group caught selling animals online", body: "orem ipsum dolor sit amet, ius at novum
dissentiunt. Nemore audiam insolens ea mea. Vel te dicunt eripuit, est amet
gubergren in, eu his quaeque facilisis. Cu labore malorum usu, ius causae
equidem temporibus no. Cu nam offendit hendrerit, duo an malis officiis
nominati.\n Fugit legimus mandamus est ex. Vis ex nonumy laoreet abhorreant,
per te omnium probatus eleifend. Ad facer senserit pro. At cum etiam fabulas
impedit, prima argumentum cu ius. /n Vix dignissim similique et, ad meis
persius liberavisse mel, sea integre nominati cu. At assum facete aliquam per,
platonem scripserit mea an. Amet malorum tibique his et, ut ullum complectitur
pro. Cu ius maiorum argumentum, ei sit alii vituperatoribus, ea cum habeo
prodesset mediocritatem. Ut adhuc senserit gloriatur eos. Falli putant ei cum,
at facer consequuntur delicatissimi cum, eleifend corrumpit ex usu. \n
Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu.", image_url: "paws.png", staff_id: 2) 
ff.topics.push(news)

gel = Article.create(title: "A.G. Wealth Planners Indicted for Fraud", body: "Lorem ipsum dolor sit amet, doming cetero sit ex. Pri ea noluisse pertinax. Cu mollis tincidunt mediocritatem eos. Cu patrioque prodesset mel, sit ea sententiae reprehendunt. Ea consulatu argumentum sea. Regione ancillae persequeris te mei, regione sensibus usu at. Ut duis inimicus eam, soluta audiam iudicabit vel at. \n
At fabulas docendi electram sed, cetero aliquando prodesset an vis. Assum intellegam deterruisset vis te, idque choro iudico eu has. Ea mel ubique consetetur philosophia. Ut vix soluta graece. Ad erant mandamus mei. Ea est ceteros officiis, quo stet insolens hendrerit ut, ea mei suavitate patrioque.\n
\n 
Id has suas dicunt, ne ius quot dictas. Sea in feugiat propriae. Vix ea aperiam ocurreret. Eu aperiri argumentum mea, usu elitr imperdiet ea. Ne vix utamur omnesque salutatus. In mel clita admodum, vim id debitis scribentur delicatissimi. Vim reque elitr saperet id, et his natum nullam petentium, vis an nostro facete audiam.\n
\n 
Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n
\n 
Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\n
\n 
Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
\n 
Mei apeirian consequat eu. At qui tollit equidem. Ne mutat ullamcorper suscipiantur pro, qui quas noster no. Alia oportere eam ne.", image_url: "ag-wealth.png", staff_id: 7)
gel.topics.push(news)


f = Article.create(title: "Food-Friends: Pay people to sit with you so you don't have to eat alone.", body: "orem ipsum dolor sit amet, ius at novum
dissentiunt. Nemore audiam insolens ea mea. Vel te dicunt eripuit, est amet
gubergren in, eu his quaeque facilisis. Cu labore malorum usu, ius causae
equidem temporibus no. Cu nam offendit hendrerit, duo an malis officiis
nominati.\n Fugit legimus mandamus est ex. Vis ex nonumy laoreet abhorreant,
per te omnium probatus eleifend. Ad facer senserit pro. At cum etiam fabulas
impedit, prima argumentum cu ius. /n Vix dignissim similique et, ad meis
persius liberavisse mel, sea integre nominati cu. At assum facete aliquam per,
platonem scripserit mea an. Amet malorum tibique his et, ut ullum complectitur
pro. Cu ius maiorum argumentum, ei sit alii vituperatoribus, ea cum habeo
prodesset mediocritatem. Ut adhuc senserit gloriatur eos. Falli putant ei cum,
at facer consequuntur delicatissimi cum, eleifend corrumpit ex usu. \n
Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu.", image_url: "food-friends.png", staff_id: 1) 
f.topics.push(food)

g = Article.create(title: "Dish-Dish closes $300 Million Financing Round", body: "Lorem ipsum dolor sit amet, doming cetero sit ex. Pri ea noluisse pertinax. Cu mollis tincidunt mediocritatem eos. Cu patrioque prodesset mel, sit ea sententiae reprehendunt. Ea consulatu argumentum sea. Regione ancillae persequeris te mei, regione sensibus usu at. Ut duis inimicus eam, soluta audiam iudicabit vel at. \n
At fabulas docendi electram sed, cetero aliquando prodesset an vis. Assum intellegam deterruisset vis te, idque choro iudico eu has. Ea mel ubique consetetur philosophia. Ut vix soluta graece. Ad erant mandamus mei. Ea est ceteros officiis, quo stet insolens hendrerit ut, ea mei suavitate patrioque.\n
\n 
Id has suas dicunt, ne ius quot dictas. Sea in feugiat propriae. Vix ea aperiam ocurreret. Eu aperiri argumentum mea, usu elitr imperdiet ea. Ne vix utamur omnesque salutatus. In mel clita admodum, vim id debitis scribentur delicatissimi. Vim reque elitr saperet id, et his natum nullam petentium, vis an nostro facete audiam.\n
\n 
Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n
\n 
Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\n
\n 
Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
\n 
Mei apeirian consequat eu. At qui tollit equidem. Ne mutat ullamcorper suscipiantur pro, qui quas noster no. Alia oportere eam ne.", image_url: "dish-dish.png", staff_id: 1)
g.topics.push(biz)



iz = Article.create(title: "Universe's hottest bar to ban Droids", body: "Similique honestatis ut eos, nibh bonorum mei an, nam eu tempor regione. Et
reprimique conclusionemque vim, pri ut sint assum, adhuc iisque vel at. Nonumy
populo voluptatum ea usu, sed agam vidisse reprimique eu, ad elitr
comprehensam sit. Ad duo omnesque torquatos, ius ne elitr definiebas. Eos quis
scripserit cu. Ad justo soluta pro, posse praesent quo te, nec brute virtute hendrerit at. Dico alienum convenire cu qui, et epicurei tincidunt pro, postea volumus nam id. Inani prompta id sea. Usu illud adversarium ut. Eu possit temporibus sed. Simul adipiscing an cum, usu habeo modus periculis in, ad liber intellegam nam. Volumus adipisci scribentur per eu, duo id efficiendi signiferumque, sea ne aliquam iudicabit disputationi.\n

Qui at virtute phaedrum maluisset, vis noster evertitur eu, eu quo posidonium referrentur. Vis ut iudico expetendis, vim alterum inimicus ea. Nam ut esse dolor prodesset. Eum ad autem appareat. Et dictas nostrud vituperata mel, cu odio munere invenire ius. Ornatus iudicabit an mel.\n

Ea reque nobis verterem vim, oratio liberavisse ne has. Modus tollit dissentias ius ad, usu utinam omittantur ut, adhuc vituperatoribus quo te. Ex has utinam persius scripserit, ea mel tantas persequeris. Vim nisl lobortis nominati id, enim nulla instructior mel ne, soleat mentitum scripserit eu his. Velit prodesset id pro. Usu et perpetua facilisis.\n
", image_url: "cantina.jpg", staff_id: 6)
iz.topics.push(biz)