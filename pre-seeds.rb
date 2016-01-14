# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# TOPICS

Salesman.create(email: "kevin@kkr.com", password: "123", territory: "Europe")
Salesman.create(email: "kns@kkr.com", password: "123", territory: "Asia")
Salesman.create(email: "richard@kkr.com", password: "123", territory: "Americas")
Salesman.create(email: "africa@kkr.com", password: "123", territory: "Africa")


WorkOrder.create(origin: 6, destination: 10, containers: 100, boat_id: 4, name: "Merck", description: "Shippment of pharmaceuticals to be distributed throughout Eastern Africa.  Terms: FOB Destination", complete: False, salesman_id: 1, route_id: 1)


BoatWorkOrders.create(boat_id: 4, work_order_id: 1)


SalesmanBoats.create(salesman_id: 1, boat_id: 4)

Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)
Container.create(work_order_id: 1, weight: 2, cargo_type: 1)

PortManager.create(email: "Shanghai@KKR.com", password: "123", location: "Shanghai")
PortManager.create(email: "Singapore@KKR.com", password: "123", location: "Singapore")
PortManager.create(email: "LA@KKR.com", password: "123", location: "Los Angeles")
PortManager.create(email: "Savannah@KKR.com", password: "123", location: "Savannah")
PortManager.create(email: "Rotterdam@KKR.com", password: "123", location: "Rotterdam")
PortManager.create(email: "Hamburg@KKR.com", password: "123", location: "Hamburg")
PortManager.create(email: "Panama@KKR.com", password: "123", location: "Panama")
PortManager.create(email: "Santos@KKR.com", password: "123", location: "Santos")
PortManager.create(email: "Durban@KKR.com", password: "123", location: "Durban")
PortManager.create(email: "Kenya@KKR.com", password: "123", location: "Kenya")

Boat.create(name: "Edmund Fitzgerald", container_limit: "300", port: "Panama", at_sea: False)
Boat.create(name: "Orca", container_limit: "300", port: "Hamburg", at_sea: False)
Boat.create(name: "Captayannis", container_limit: "100", port: "Durban", at_sea: False)
Boat.create(name: "USS Arizona", container_limit: "100", port: "Kenya", at_sea: False)
Boat.create(name: "Foxhound", container_limit: "300", port: "Santos", at_sea: False)
Boat.create(name: "Sportivo ", container_limit: "50", port: "Kenya", at_sea: False)
Boat.create(name: "Lusitania", container_limit: "50", port: "Savannah", at_sea: False)
Boat.create(name: "Sansinena", container_limit: "20", port: "Los Angeles", at_sea: False)
Boat.create(name: "Exxon Valdez", container_limit: "20", port: "Singapore", at_sea: False)
Boat.create(name: "Suilven", container_limit: "300", port: "Rotterdam", at_sea: True)
Boat.create(name: "The Bismarck", container_limit: "10", port: "Kenya", at_sea: True)
Boat.create(name: "Costa Concordia", container_limit: "50", port: "Shanghai", at_sea: True)
Boat.create(name: "Sewol", container_limit: "50", port: "Shanghai", at_sea: False)
Boat.create(name: "Maple Lea", container_limit: "300", port: "Savannah", at_sea: False)
Boat.create(name: "Titanic", container_limit: "200", port: "Los Angeles", at_sea: False)
Boat.create(name: "Dona Paz", container_limit: "200", port: "Singapore", at_sea: False)
Boat.create(name: "Le Joola", container_limit: "100", port: "Shanghai", at_sea: False)
Boat.create(name: "Vasa", container_limit: "100", port: "Panama", at_sea: False)
Boat.create(name: "World Discoverer", container_limit: "100", port: "Singapore", at_sea: False)
Boat.create(name: "Schooner Sweepstakes", container_limit: "10", port: "Kenya", at_sea: False)
Boat.create(name: "Sea Lion", container_limit: "50", port: "Hamburg", at_sea: False)
Boat.create(name: "El Faro", container_limit: "300", port: "Durban", at_sea: False)
Boat.create(name: "Flinterstar", container_limit: "300", port: "Kenya", at_sea: False)




















 = Container.create(category: "News")
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

Boat.create(name: "Edmund Fitzgerald", container_limit: "300", port: "Panama", at_sea: False)
Boat.create(name: "Orca", container_limit: "300", port: "Hamburg", at_sea: False)
Boat.create(name: "Captayannis", container_limit: "100", port: "Durban", at_sea: False)
Boat.create(name: "USS Arizona", container_limit: "100", port: "Hamburg", at_sea: True)
Boat.create(name: "Foxhound", container_limit: "300", port: "Santos", at_sea: False)
Boat.create(name: "Sportivo ", container_limit: "50", port: "Kenya", at_sea: False)
Boat.create(name: "Lusitania", container_limit: "50", port: "Savannah", at_sea: False)
Boat.create(name: "Sansinena", container_limit: "20", port: "Los Angeles", at_sea: False)
Boat.create(name: "Exxon Valdez", container_limit: "20", port: "Singapore", at_sea: False)
Boat.create(name: "Suilven", container_limit: "300", port: "Rotterdam", at_sea: True)
Boat.create(name: "The Bismarck", container_limit: "10", port: "Kenya", at_sea: False)
Boat.create(name: "Costa Concordia", container_limit: "50", port: "Shanghai", at_sea: True)
Boat.create(name: "Sewol", container_limit: "50", port: "Shanghai", at_sea: False)
Boat.create(name: "Maple Lea", container_limit: "300", port: "Savannah", at_sea: False)
Boat.create(name: "Titanic", container_limit: "200", port: "Los Angeles", at_sea: False)
Boat.create(name: "Dona Paz", container_limit: "200", port: "Singapore", at_sea: False)
Boat.create(name: "Le Joola", container_limit: "100", port: "Shanghai", at_sea: False)
Boat.create(name: "Vasa", container_limit: "100", port: "Panama", at_sea: False)
Boat.create(name: "World Discoverer", container_limit: "100", port: "Singapore", at_sea: False)
Boat.create(name: "Schooner Sweepstakes", container_limit: "10", port: "Kenya", at_sea: False)
Boat.create(name: "Sea Lion", container_limit: "50", port: "Hamburg", at_sea: False)
Boat.create(name: "El Faro", container_limit: "300", port: "Durban", at_sea: False)
Boat.create(name: "Flinterstar", container_limit: "300", port: "Kenya", at_sea: False)


Work_order.create(origin: "Hamburg", destination: "Kenya", containers: 100, boat_id: 4, name: "Blum", description: "Shippment of kitcken cabinet hardware to be distributed throughout Eastern Africa.  Terms: FOB Destination", complete: False)




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

