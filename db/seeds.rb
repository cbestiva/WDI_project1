# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


markets = []
markets << Market.create(name: "Alemany Farmers' Market", address: "100 Alemany Blvd.", day: "Saturday", time: "6 a.m - 3 p.m", number: "415-647-9423", description: "The \"people's market\" and first in the state", lat: 37.736, lng: -122.410)
markets << Market.create(name: "Castro Farmers' Market", address: "Noe St. at Market St.", day: "Wednesday", time: "4 p.m - 8 p.m", description: "March 12 - December 17, 2014", lat: 37.764, lng: -122.433)
markets << Market.create(name: "Crocker Galleria Farmers' Market", address: "50 Post St.", day: "Thursday, Tuesday", time: "11 a.m - 3 p.m", number: "800-806-3276", description: "Thursdays year-round; Tuesdays starting June 4, 2014", lat: 37.789, lng: -122.403 )
markets << Market.create(name: "Divisadero Farmers' Market", address: "Grove St at Divisadero", day: "Sunday", time: "10 a.m - 2 p.m", lat: 37.776, lng: -122.438)
markets << Market.create(name: "Fern Alley Farmers' Market", address: "55 Fern St at Polk St", day: "Saturday", time: "10 a.m - 2 p.m", number: "800-949-3276", description: "June - November 2014", lat: 37.7882, lng: -122.420)
markets << Market.create(name: "Ferry Plaza Farmers' Market", address: "Ferry Building 1 Ferry Plaza", day: "Tuesday,\n Thursday,\n Saturday", time: "10 a.m - 2 p.m,\n 10 a.m - 2 p.m,\n 8 a.m - 2 p.m", number: "415-291-3276", description: "Year-round", lat: 37.795, lng: -122.393)
# markets << Market.create(name: "Ferry Plaza Farmers' Market", address: "Ferry Building 1 Ferry Plaza", day: "Thursday", time: "10 a.m - 2 p.m")
# markets << Market.create(name: "Ferry Plaza Farmers' Market", address: "Ferry Building 1 Ferry Plaza", day: "Saturday", time: "8 a.m - 2 p.m")
markets << Market.create(name: "Fillmore Farmers' Market", address: "O'Farrell at Fillmore, and Fillmore Center Plaza", day: "Saturday", time: "9 a.m - 1 p.m", lat: 37.783, lng: -122.433)
markets << Market.create(name: "Fort Mason Farmers' Market", address: "Fort Mason Center, Marina and Buchanan", day: "Sunday", time: "9:30 a.m - 1:30 a.m", description: "Year-round", lat: 37.805, lng: -122.434)
markets << Market.create(name: "Glen Park Village Farmers' Market", address: "Glen Park BART Station parking lot at Bosworth and Arlington", day: "Sunday", time: "10 a.m - 2 p.m", description: "March 30 - November 23, 2014", lat: 37.733, lng: -122.433)
markets << Market.create(name: "Heart of the City Farmers' Market", address: "United Nations Plaza, Market St., between Seventh and Eighth St", day: "Sunday,\n Wednesday,\n Friday", time: "7 a.m - 5 p.m,\n 7 a.m - 5:30 p.m,\n 7 a.m - 3 p.m", number: "415-558-9455", description: "Year-round", lat: 37.780, lng: -122.414)
# markets << Market.create(name: "Heart of the City Farmers' Market", address: "United Nations Plaza, Market St., between Seventh and Eighth St", day: "Wednesday", time: "7 a.m - 5:30 p.m")
# markets << Market.create(name: "Heart of the City Farmers' Market", address: "United Nations Plaza, Market St., between Seventh and Eighth St", day: "Friday", time: "7 a.m - 3 p.m")
markets << Market.create(name: "Inner Richmond Farmers' Market", address: "Clement St between 2nd and 4th Ave", day: "Sunday", time: "9 a.m - 2 p.m", description: "Year-round", lat: 37.783, lng: -122.461)
markets << Market.create(name: "Inner Sunset Farmers' Market", address: "8th Ave, parking lot between Judah and Irving", day: "Sunday", time: "9 a.m - 1 p.m", description: "Year-round", lat: 37.763, lng: -122.465)
markets << Market.create(name: "Kaiser Permanente Farmers' Market", address: "2425 Geary Blvd at St. Joseph's St", day: "Wednesday", time: "10 a.m - 2 p.m", number: "800-949-3276", description: "Year-round; Parking available at the Kaiser Hospital Garage at 2190 O'Farrell St", lat: 37.783, lng: -122.443)
markets << Market.create(name: "Mint Plaza Farmers' Market", address: "66 Mint St at the corner of Fifth and Mission St", day: "Thursday", time: "11 a.m - 2 p.m", description: "Year-round", lat: 37.783, lng: -122.407)
markets << Market.create(name: "Mission Bay Farmers' Market", address: "Gene Friend Way between 3rd and 4th St", day: "Wednesday", time: "10 a.m - 2 p.m", description: "April9 - December 10, 2014", lat: 37.769, lng: -122.390)
markets << Market.create(name: "Mission Community Market/Mercado Comunitario De La Mission", address: "Bartlett St at 22nd St", day: "Thursday", time: "4 p.m - 8 p.m", description: "January 23 - December 18, 2014 (closed on national holidays that fall on Thursdays", lat: 37.755, lng: -122.420)
markets << Market.create(name: "Noe Vally Farmers' Market", address: "3861 24th St between Vicksburg and Sanchez St", day: "Saturday", time: "8 a.m - 1 p.m", number: "415-248-1332", description: "Year-round; Live music at 10 a.m", lat: 37.751, lng: -122.429)
markets << Market.create(name: "Produce Market on the Square", address: "1111 O'Farrell St, Urban Life Center Auditorium", day: "Wednesday", time: "11 a.m - 12 p.m", lat: 37.785, lng: -122.424)
markets << Market.create(name: "Rincon Center Farmers' Market (Embarcadero)", address: "101 Spear St, Rincon Center food court/atrium", day: "Wednesday", time: "11 a.m - 2 p.m", lat: 37.792, lng: -122.393)
markets << Market.create(name: "Second Street Plaza Farmers' Market", address: "303 Second St. between Folsom and Harrison St", day: "Wednesday", time: "10 a.m - 2 p.m", description: "Year-round", lat: 37.786, lng: -122.396)
markets << Market.create(name: "Stonestown Farmers' Market", address: "West side parking lot behind Macy's off Buckingham Way", day: "Sunday", time: "9 a.m - 1 p.m", number: "415-564-8848", description: "Year-round", lat: 37.729, lng: -122.478)
markets << Market.create(name: "UCSF Parnassus Farmers' Market", address: "505 Parnassus Ave", day: "Wednesday", time: "10 a.m - 3 p.m", description: "Year-round", lat: 37.763, lng: -122.458)
markets << Market.create(name: "Upper Haight Farmers' Market", address: "Waller St at Stanyan St", day: "Wednesday", time: "3 p.m - 7 p.m", description: "April 2 - October 29, 2014", lat: 37.768, lng: -122.453)
markets << Market.create(name: "VA San Francisco Farmers' Market", address: "Veterans Dr, off Clement and 42nd Ave", day: "Wednesday", time: "10 a.m - 2 p.m", description: "Year-round", lat: 37.781, lng: -122.504)
markets << Market.create(name: "Yerba Buena Lane Farmers' Market", address: "Market St between Third and Fourth St", day: "Tuesday", time: "10 a.m - 3 p.m", description: "November 2013 - March 2014", lat: 37.787, lng: -122.405)


