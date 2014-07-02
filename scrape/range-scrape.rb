require 'rubygems'
require 'mechanize'
require 'nokogiri'
require 'pry'

a = ["Aaron Bruno", "Adam Gontier", "Adam Lambert", "Adam Levine", "Adam Savage", "Adam Young", "Adele", "Alanis Morrissette", "Alen Islamović", "Aleksandr Gradsky (Александр Градский) ", "Alex Kapranos", "Alex Turner", "Alicia Keys", "Alice Cooper", "Alison Goldfrapp", "Alvin Lee", "Amy Lee", "Anastacia", "Andi Deris", "Andrea Bocelli", "Andre Matos", "Andrew Eldritch", "Andrew Latimer", "Andrew Mailloux", "Andrew Vanwyngarden", "Andy Samberg", "Anette Olzon", "Anne Hathaway", "Anneke van Giersbergen", "Annie Haslam", "Annie Lennox", "Ann Wilson", "Anoji Matsuoka", "Anssi Känsälä", "Anthony Kiedis", "Antti Hyyrynen", "Arin Hanson", "Ari Koivunen", "Arnim Teutoburg-Weiß", "Art Garfunkel", "Avril Lavigne", "Axl Rose"]
b = ["Barry Gibb", "Barry Palmer", "Barry White", "Bat For Lashes", "Beau Bokan", "Ben Howard", "Benjamin Kowalewicz", "Ben McMillan", "Beth Gibbons", "Big Dad Rich", "Billie Holiday", "Bill Medley", "Billy Corgan", "Billy Gibbons", "Billy Idol", "Billy Joel", "Billy Sheehan", "Birdy", "Björk ", "Blackie Lawless", "Blaze Bayley", "Bobby Hatfield", "Bobby Kimball", "Bob Catley", "Bob Dylan", "Bono", "Bon Scott", "Boy George", "Brad Delp", "Brandon Boyd", "Brandon Flowers", "Brendan Perry", "Brendon Urie", "Brent Smith", "Bret Michaels", "Brian May", "Brian Molko", "Brian Wilson", "Bridgit Mendler", "Brittany Howard", "Brody Dalle", "Brolle Jr", "Bruce Dickinson", "Bruce Springsteen", "Bruno Mars", "Bryan Adams", "Burke Shelley", "Burton Cummings"]
c = ["Captain Beefheart", "Carl Albert", "Carl Anderson", "Carlos Vives", "Carl Wilson", "Casey Abrams", "Cedric Bixler-Zavala", "CeeLo Green", "Chad Gray", "Chad Kroeger", "Chad Petree", "Chang Yu-Sheng (张雨生)", "Charles Manson", "Charlie Dominici", "Charlie Simpson", "Chester Bennington", "Chris Barretto", "Chris Carrabba", "Chris Cornell", "Chris Corner", "Chris de Burgh", "Chris Isaak", "Chris Jericho", "Chris Martin", "Chris Paul Basso", "Chris Squire", "Christina Aguilera", "Christopher Lee", "Christopher R. Sabat", "Chris Wolstenholme", "Chino Moreno", "Chuck Schuldiner", "Claudio Sanchez", "Clint Boge", "Clint Eastwood", "Colin Blunstone", "Corey Glover", "Corey Taylor", "Colton Dixon", "Craig Owens", "Criss Angel", "Cristina Llanos", "Cristina Scabbia", "Cyndi Lauper"]
d = ["Damian Wilson", "Damnagoras", "Damon Albarn", "Dan Auerbach", "Dallas Taylor", "Dan Arlie", "Dan Cleary", "Daniel Brecher", "Daniel Gildenlöw", "Daniel Heiman", "Daniel MacMaster", "Dan McCafferty", "Danny Elfman", "Danny Jones", "Danny Worsnop", "Dan Swanö", "Dappy", "Daron Malakian", "Darroh Sudderth", "Dave Gahan", "Dave Grohl", "Dave Mustaine", "Dave Wanless", "Dave Williams", "Dave Wyndorf", "David Bowie", "David Byrne", "David Byron", "David Cook", "David Coverdale", "David DeFeis", "David Draiman", "David Gilmour", "David Lee Roth", "David Ruffin", "David Surkamp", "D.C. Cooper", "Deborah (Debbie) Harry", "Dee Snider", "Demi Levato", "Dennis DeYoung", "Deryck Whibley", "Devin Townsend", "Dexter Holland", "Don Dokken", "Doogie White", "Doug Brown", "Doug Pinnick", "Doug Walker", "Drake Bell"]
e = ["Ed Blaylock", "Eddie Vedder", "Edie Brickell", "Edu Falaschi", "Ellie Goulding", "Elly Jackson", "Elton John", "Elvis Presley", "Eminem", "Enrique Bunbury", "Enya", "Eric Adams", "Eric Carr", "Eric Clapton", "Eric Clayton", "Eric Martin", "Eric Sean Nally", "Eric Wagner", "Erik Grönwall", "Espen Gustavsen", "Ezra Koenig"]
f = ["Fish", "Floor Jansen", "Florence Welch", "Fluttershy", "Franck Garcia", "Frank Marino", "Frank Ocean", "Frank Sinatra", "Frank Zappa", "Fred Burman", "FreddeGredde", "Freddie Mercury", "Fred Durst"]
g = ["Gary Barlow", "Gary Cherone", "Gary Moore", "Geddy Lee", "Gene Simmons", "Geoff Tate", "George Harrison", "George Michael", "Gerard Way", "Glenn Danzig", "Glenn Hughes", "Godforbid", "Gord Downie", "Gotye", "Grace Slick", "Graham Bonnet", "Graham Nash", "Greg Lake", "Greg Puciato", "Guilherme de Sá", "Gustavo Cerati"]
h = ["Hansi Kürsch", "Happy Rhodes", "Harry \"The Tyrant\" Conklin", "Harry McVeigh", "Hayley Williams", "Heath King", "Heikki Pöyhiä", "Helen Marnie", "Hope Sandoval", "Howard Jones", "Huey Lewis", "Hugh Laurie"]
i = ["Ian Astbury", "Ian Curtis", "Ian Gillan", "Ian Kenny", "Ian Watkins", "ICS Vortex", "Iggy Pop", "Ivan Rebroff"]
j = ["Jack Black", "Jackie Wilson", "Jack Russell", "Jack White", "Jacoby Shaddix", "Jahméne Douglas", "Jake Shears", "Jakob Samuel", "James Blunt", "James Bourne", "James Christian", "James Earl Jones", "James Hetfield", "James LaBrie", "James Morrison", "Jan Jämte ", "Jani Lane", "Janis Joplin", "Janove Ottesen", "Jared Leto", "Jari Mäenpää", "Jarle Bernhoft", "Jason McMaster", "JC Chasez", "J.D. Sumner", "Jeff Buckley", "Jeff Keith", "Jeff Lynne", "Jeff Martin (Racer X)", "Jeff Martin (The Tea Party)", "Jeff Scott Soto", "Jens Westin", "Jerry Cantrell", "Jim Carrey", "Jim Gillette", "Jimi Hendrix", "Jim Morrison", "Jimmy Barnes", "Jimmy Ellis", "Jimmy Gnecco", "Jimmy \"The Rev\" Sullivan", "Jim Parsons", "Jizzy Pearl", "Joakim Nilsson", "Joakim Thåström", "Jocke Berg", "Joe Duplantier", "Joe Elliot", "Joel O'Keeffe", "Joe Lynn Turner", "Joey Belladonna", "Joey Tempest", "John Arch", "John Corabi", "John DiMaggio", "John Englebert", "John Entwhistle", "John Farnham", "John Fogerty", "John Garcia", "John \"Harv\" Harbinson", "John Lennon", "Johnny Cash", "Johnny Cook", "Johnny Gioeli", "Johnny Robinson", "Johnny Winter", "John Petrucci", "John Sykes", "John West", "Jon Anderson", "Jon Bon Jovi", "Jon Foreman", "Jonny Lindkvist", "Jon Oliva", "Jon Schaffer", "Jónsi Þór Birgisson", "Jordan Rudess", "Jørn Lande", "José Andrëa", "Jose Vicente Broseta", "Josh Groban", "Josh Homme", "Josh Turner", "JP Leppäluoto", "Judika", "Julian Casablancas", "Justin Bieber", "Justin Hawkins", "Justin Timberlake"]
k = ["Kai Hansen", "Karen Carpenter", "Karen O", "Kari Tapio", "Kate Bush", "Katharine McPhee", "Katy Perry", "Kellin Quinn", "Kelly Clarkson", "Kelly Holland", "Kelly Jones", "Kenny Hickey", "Ken Tamplin", "Kesha Sebert (Ke$ha)", "Kevin Ayers", "Kevin DuBrow", "Kim Benzie", "Kimbra", "King Diamond", "Kip Winger", "Kirka", "Klaus Meine", "Klaus Nomi", "Klayton", "Kurt Cobain", "KT Tunstall", "Kyo"]
l = ["Lady Gaga", "Lana Del Rey", "Lance King", "Lauri Ylönen", "Layne Staley", "Lemmy Kilmister", "Lenny Kravitz", "Leo Jiménez", "Les Claypool", "Levi Stubbs", "Liam Gallagher", "Lights Poxleitner", "Lil' Jon", "Lily Allen", "Lindsey Buckingham", "Lisa Gerrard", "Liv Kristine", "Liz Fraser", "Lou Gramm", "Luciano Pavarotti"]
m = ["Manuel Munoz", "Marc Bolan", "Marcelo Corvalan", "Marco Borsato", "Marco Hietala", "Mariah Carey", "Maria McKee ", "Marian Gold", "Marie Fredriksson", "Marilyn Manson", "Marina Diamandis", "Mark Boals", "Mark Feehily", "Mark Hoppus", "Mark Slaughter", "Markus Krunegård", "Martin Grech", "Martin Johnson", "Martin L. Gore", "Mats Levén", "Matt Barlow", "Matt Bellamy", "Matt Heafy", "Matt Tuck", "Matthew Rose", "Matthias Blad", "Max Bacon", "Maximum the Ryō", "Maynard James Keenan", "Meat Loaf", "Michael Bolton", "Michael Hutchence", "Michael Jackson", "Michael \"Jag\" Jagmin", "Michael Kiske", "Michael Monroe", "Michael Poulsen", "Michael Stipe", "Michael Winslow", "Michele Luppi", "Mickey Thomas", "Mick Hucknall", "Mick Jagger", "Midge Ure", "Midnight", "Miguel Bose", "Mikael Åkerfeldt", "Mike Baker", "Mike Love", "Mike Patton", "Mike Oldfield", "Mike Portnoy", "Miljenko Matijevic", "Mille Petrozza", "Minnie Riperton", "Mira Aroyo", "Morrissey", "Morten Harket", "Moto Boy", "M. Shadows", "Myles Kennedy"]
n = ["Nanna Bryndís Hilmarsdóttir", "Nate Ruess", "Neil Diamond", "Neil Patrick Harris", "Nick Drake", "Nick Pitera", "Nick Schilder", "Nils Frykdahl", "Nils K. Rue", "Nils Patrik Johansson", "Nina Hagen", "Nino Bravo", "Noddy Holder", "Noel Gallagher"]
o = ["Oliver Hartmann", "Østen Bergøy", "Ozzy Osbourne"]
p = ["Patrick Stump", "Patrick Wolf", "Paul Gilbert", "Paul McCartney", "Paul Rodgers", "Paul Shortino", "Paul Simon", "Paul Stanley", "PelleK", "Perry Farrell", "Pete Ham", "Pete Parkkonen", "Peter Cetera", "Peter Criss", "Peter Gabriel", "Peter Hammill", "Peter Steele", "Peter Straker", "Peter Sundell", "Peter Tägtgren", "Pete Townshend", "Phil Anselmo", "Phil Collins", "Philip Bailey", "Phil Lynott", "Phil X", "P!nk", "PJ Harvey", "Prince"]
q = ["Quorthon"]
r = ["Ragnar \"Raggi\" Þórhallsson", "Raine Maida", "Ralf Gyllenhammer", "Ralf Scheepers", "Ralph Saenz (Michael Starr)", "Rance Allen", "Randy Jackson", "Ray Gillen", "Rebecca Black", "Ricardo Mollo", "Richard Ashcroft", "Richard Marx", "Richard Page", "Richard Patrick", "Richard Wright", "Richie Kotzen", "Richie Sambora", "Rick Davies", "Ricky Martin", "Rik Emmett", "Ringo Starr", "Robbie Williams", "Rob Dougan", "Robert Johnson", "Rob Halford", "Robert Lowe", "Robert Plant", "Roberto Tiranti", "Robert Smith", "Robin Stjernberg", "Rob Rock", "Rob Zombie", "Rod Stewart", "Rody Walker", "Roger Daltrey", "Roger Hodgson", "Roger Waters", "Roger Taylor", "Roland Orzabal", "Ronnie James Dio", "Ronnie Van Zandt", "Rory Gallagher", "Roy Khan", "Roy Orbison", "Rufus Wainwright", "Russell Allen"]
s = ["Sammy Davis Jr.", "Sarah Vaughan", "Scott Stapp", "Scott Weiland", "Selena Gomez", "Serj Tankian", "Sebastian Bach", "Shakira", "Shane Told", "Sharon den Adel", "Sherrick", "Simone Simons", "Simon Harris", "Simon Le Bon", "Sinéad O'Connor", "Siouxsie Sioux", "Ski", "Spencer Sotelo", "Stefan Zell", "Stephen Fredrick", "Steve Balsamo", "Steve Hogarth", "Steve Lee", "Steve Marriott", "Steven Page", "Steven Tyler", "Steve Perry", "Steve Vai", "Steve Walsh", "Stevie Nicks", "Stevie Ray Vaughan", "Stevie Winwood", "Stevie Wonder", "Sting", "Stromae - Paul Van Haver", "Stu Block", "Sully Erna", "Syd Barrett"]
t = ["Tania Braz", "Tarja Turunen", "Taylor Hawkins", "Tay Zonday", "Ted Neeley", "Tegan and Sara", "The Edge", "Thijs van Leer", "Thomas \"G. Warrior\" Fischer", "Thom Yorke", "Thurl Ravenscroft", "Till Lindemann", "Tim Aymar", "Tim Buckley", "Tim Charles", "Tim Curry", "Tim Minchin", "Tim Neighbors", "Timo Kotipelto", "Tim Owens", "Timo Tolkki", "Tina Turner", "Tiny Tim", "Tipi Johnson", "Tito Larriva", "Tiziano Ferro", "Tobias Sammet", "Todd Hall", "Todd La Torre", "Todd Rundgren", "Tom Araya", "Tom Cruise", "Tom Delonge", "Tom Jones", "Tom Mallicoat", "Tommy Giles Rogers", "Tommy Salmela", "Tom Petty", "Tom Waits", "Tony Harnell", "Tony Kakko", "Tony Martin", "Tony Moore", "Tooru \"Kyo\" Nishimura", "Trent Reznor", "Trevor Rabin"]
u = ["Urban breed"]
v = ["Van Morrison", "Vibeke Stene", "Ville Valo", "Vince Neil", "Vinnie Vincent", "Vitas (Витас)"]
w = ["Warrel Dane", "Waylon Jennings", "\"Weird Al\" Yankovic", "Wes Borland", "Whitfield Crane", "Whitney Houston", "Woody Leffel"]
x = []
y = ["Yngwie J. Malmsteen", "Yohio"]
z = ["Zack de la Rocha", "Zak Stevens", "Zooey Deschanel", "Zoran Mišić", "Z.P. Theart", "Zubin Varla"]
