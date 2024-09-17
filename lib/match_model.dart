class Match {
  final String homeTeam;
  final String awayTeam;
  final DateTime date;
  final String location;
  final int homeTeamScore;
  final int awayTeamScore;
  final List<String> goalScorers; // List of goal scorers by name
  final String manOfTheMatch;
  final String referee;
  final int attendance;
  final String description; // New field for an overall description of the match

  Match({
    required this.homeTeam,
    required this.awayTeam,
    required this.date,
    required this.location,
    required this.homeTeamScore,
    required this.awayTeamScore,
    required this.goalScorers,
    required this.manOfTheMatch,
    required this.referee,
    required this.attendance,
    required this.description, // Added description field
  });
}

Match liverpoolMilan = Match(
    homeTeam: "Liverpool",
    awayTeam: "AC Milan",
    date: DateTime(2005, 5, 25),
    location: "Atatürk Olympic Stadium, Istanbul",
    homeTeamScore: 3,
    awayTeamScore: 3,
    goalScorers: ["Maldini", "Crespo (2)", "Gerrard", "Šmicer", "Xabi Alonso"],
    manOfTheMatch: "Steven Gerrard",
    referee: "Manuel Mejuto González",
    attendance: 70024,
    description: "The Miracle of Istanbul. Considered one of the greatest matches in football history, the 2005 Champions League final saw AC Milan dominate the first half, with Paolo Maldini scoring the fastest goal in Champions League final history (51 seconds), and Hernán Crespo adding two more before halftime. Liverpool, 3-0 down at the break, looked down and out. \n\nHowever, in an incredible turnaround, captain Steven Gerrard led the charge, scoring a header in the 54th minute to give Liverpool hope. Moments later, Vladimir Šmicer scored a long-range effort, and by the 60th minute, Xabi Alonso completed the comeback by scoring the rebound from his own missed penalty. \n\nAfter a tense extra-time period where both teams had chances, the match went to penalties. Liverpool goalkeeper Jerzy Dudek's heroics during the penalty shootout, including a memorable save from Andriy Shevchenko, secured Liverpool’s fifth European Cup in dramatic fashion. \n\nThis match is often cited as the ultimate example of resilience and determination in football, immortalized in Liverpool folklore. It cemented Steven Gerrard’s legacy as one of the club’s all-time greats and solidified the 2005 Champions League final as one of the most iconic football moments of all time."
);

Match manchesterQueens = Match(
    homeTeam: "Manchester City",
    awayTeam: "Queens Park Rangers (QPR)",
    date: DateTime(2012, 5, 13),
    location: "Etihad Stadium, Manchester",
    homeTeamScore: 3,
    awayTeamScore: 2,
    goalScorers: ["Zabaleta", "Džeko", "Agüero", "Cissé", "Mackie"],
    manOfTheMatch: "Sergio Agüero",
    referee: "Mike Dean",
    attendance: 47435,
    description: "Agueroooo! This match produced one of the most iconic moments in Premier League history. On the final day of the 2011-2012 season, Manchester City and Manchester United were level on points, but City had the superior goal difference. The Premier League title came down to the final minutes of the final matchday, with City needing a win to secure their first top-flight title since 1968.\n\nCity started strong with Pablo Zabaleta scoring the opener, but QPR, fighting to avoid relegation, turned the game around with goals from Djibril Cissé and Jamie Mackie. With City trailing 2-1 and United winning their game, the title seemed to be slipping away.\n\nAs the clock hit 90 minutes, City fans were in despair. But in stoppage time, Edin Džeko equalized with a header from a corner, giving City a glimmer of hope. Moments later, Sergio Agüero picked up a pass from Mario Balotelli in the 94th minute, dribbled past a defender, and blasted the ball into the net. His goal clinched the title for City in the most dramatic fashion possible. The commentary call of 'Agueroooo!' by Martin Tyler has since become legendary.\n\nCity’s victory, their first Premier League title, was a watershed moment for the club and heralded the beginning of their modern era of dominance. It remains one of the greatest comebacks in football history, and Sergio Agüero's last-minute winner is often considered the greatest moment in Premier League history."
);

Match barcelonaPsg = Match(
    homeTeam: "Barcelona",
    awayTeam: "Paris Saint-Germain",
    date: DateTime(2017, 3, 8),
    location: "Camp Nou, Barcelona",
    homeTeamScore: 6,
    awayTeamScore: 1,
    goalScorers: ["Suárez", "Kurzawa (OG)", "Messi", "Neymar", "Sergi Roberto", "Cavani"],
    manOfTheMatch: "Neymar",
    referee: "Deniz Aytekin",
    attendance: 96380,
    description: "The greatest comeback in Champions League history, known as 'La Remontada.' Barcelona overturned a 4-0 first-leg deficit in the Round of 16 against Paris Saint-Germain to win 6-1 at the Camp Nou, advancing 6-5 on aggregate.\n\nAfter losing 4-0 in the first leg in Paris, Barcelona seemed all but eliminated. However, they made a spirited start at home, with Luis Suárez scoring early, followed by an own goal from PSG's Layvin Kurzawa and a penalty from Lionel Messi. At 3-0, Barcelona looked on the verge of an impossible comeback, but Edinson Cavani's away goal seemed to kill their hopes as PSG only needed to hold out for the last half-hour.\n\nThen came a dramatic final seven minutes. Neymar scored twice in quick succession, first with a sublime free-kick and then converting a penalty, making the score 5-1 on the night. In the dying seconds of stoppage time, Neymar lofted a pinpoint cross into the box, where Sergi Roberto surged forward to score the crucial goal in the 95th minute.\n\nWith that, Barcelona completed one of the most shocking and memorable comebacks in football history, advancing to the quarterfinals 6-5 on aggregate. Neymar was the standout performer, orchestrating the comeback with his two goals and assist. This game is widely regarded as the greatest comeback in Champions League history and remains a defining moment in Barcelona’s legacy."
);

Match germanyBrazil = Match(
    homeTeam: "Brazil",
    awayTeam: "Germany",
    date: DateTime(2014, 7, 8),
    location: "Estádio Mineirão, Belo Horizonte",
    homeTeamScore: 1,
    awayTeamScore: 7,
    goalScorers: ["Kroos", "Khedira", "Schürrle", "Müller", "Oscar"],
    manOfTheMatch: "Toni Kroos",
    referee: "Marco Rodríguez",
    attendance: 58141,
    description: "One of the most shocking and humiliating matches in World Cup history, often referred to as the 'Mineirazo'. In the 2014 World Cup semi-final, Germany dismantled host nation Brazil with a staggering 7-1 scoreline.\n\nWith key players Neymar and Thiago Silva absent, Brazil’s defense was in disarray. Germany scored 5 goals within the first 29 minutes, leaving the stadium and entire nation in disbelief. Goals from Thomas Müller, Miroslav Klose (breaking the record for most World Cup goals), Toni Kroos, and Sami Khedira ensured Germany were 5-0 up by halftime. Andre Schürrle added two more goals in the second half before Brazil's Oscar scored a late consolation goal in the 90th minute.\n\nThis match has since become symbolic of Brazil's footballing collapse, as it marked the heaviest defeat the national team has ever experienced in a World Cup and their first home defeat in a competitive match since 1975. It was a watershed moment in football, with Germany going on to win the 2014 World Cup, while Brazil's humiliating defeat became the talking point of the tournament. Toni Kroos was awarded Man of the Match for his commanding performance in the midfield, scoring twice and playing a crucial role in the historic victory."
);


Match realMadridAtletico = Match(
    homeTeam: "Real Madrid",
    awayTeam: "Atlético Madrid",
    date: DateTime(2014, 5, 24),
    location: "Estádio da Luz, Lisbon",
    homeTeamScore: 4,
    awayTeamScore: 1,
    goalScorers: ["Godín", "Ramos", "Bale", "Marcelo", "Ronaldo"],
    manOfTheMatch: "Gareth Bale",
    referee: "Björn Kuipers",
    attendance: 60976,
    description: "Real Madrid secured their long-awaited 10th European title, famously known as 'La Decima'. The 2014 UEFA Champions League final between cross-city rivals Real Madrid and Atlético Madrid was one of the most dramatic finals in recent memory.\n\nAtlético Madrid took the lead in the first half when Diego Godín capitalized on a mistake by Iker Casillas, heading the ball into the net to give Atlético a 1-0 advantage. As the match progressed, it seemed Atlético were going to win their first-ever Champions League title, but in the 93rd minute of stoppage time, Sergio Ramos scored a towering header from a corner, sending the game into extra time.\n\nIn extra time, Real Madrid took control, with Gareth Bale scoring the crucial go-ahead goal in the 110th minute, followed by Marcelo’s powerful shot and Cristiano Ronaldo's penalty to complete a 4-1 victory. The match was a showcase of Real Madrid's resilience and Atlético’s heartbreak, with Ramos’ last-gasp header immortalized in football history. Gareth Bale was named Man of the Match for his crucial goal and tireless performance throughout the game. This victory marked Real Madrid’s first Champions League triumph since 2002 and solidified their place in European football dominance."
);

Match chelseaBarcelona = Match(
    homeTeam: "Chelsea",
    awayTeam: "Barcelona",
    date: DateTime(2009, 5, 6),
    location: "Stamford Bridge, London",
    homeTeamScore: 1,
    awayTeamScore: 1,
    goalScorers: ["Essien", "Iniesta"],
    manOfTheMatch: "Andrés Iniesta",
    referee: "Tom Henning Øvrebø",
    attendance: 37800,
    description: "The 2009 UEFA Champions League semifinal between Chelsea and Barcelona is remembered as one of the most dramatic and controversial matches in football history. Chelsea took the lead early in the match with a stunning volley from Michael Essien, setting the tone for a tense, hard-fought contest at Stamford Bridge.\n\nDespite Chelsea's defensive dominance and multiple penalty claims being denied by referee Tom Henning Øvrebø, Barcelona maintained their composure. Chelsea felt aggrieved by several controversial decisions that denied them clear penalty opportunities throughout the match, sparking frustration on the pitch and among their fans.\n\nIn the 93rd minute, with Barcelona on the brink of elimination, Andrés Iniesta scored a brilliant long-range equalizer that sent the Spanish club through to the final on away goals. The last-minute goal silenced Stamford Bridge and became an iconic moment in Barcelona's history. Despite Chelsea's protests and post-match controversies surrounding Øvrebø's officiating, Barcelona advanced to the final, where they would eventually lift the Champions League trophy.\n\nIniesta’s dramatic late strike and the refereeing controversies made this match one of the most talked-about in modern football, with Chelsea's heartbreak and Barcelona's triumph taking center stage."
);

Match italyFrance = Match(
    homeTeam: "Italy",
    awayTeam: "France",
    date: DateTime(2006, 7, 9),
    location: "Olympiastadion, Berlin",
    homeTeamScore: 1,
    awayTeamScore: 1,
    goalScorers: ["Zidane (pen)", "Materazzi"],
    manOfTheMatch: "Fabio Cannavaro",
    referee: "Horacio Elizondo",
    attendance: 69000,
    description: "The 2006 FIFA World Cup final between Italy and France will forever be remembered for one of the most shocking moments in football history—Zinedine Zidane's infamous headbutt. In the first half, Zidane gave France an early lead with a coolly taken Panenka-style penalty, but Italy quickly responded with a powerful header from Marco Materazzi, making it 1-1.\n\nAs the match went into extra time, tensions flared between Zidane and Materazzi, culminating in Zidane's headbutt on the Italian defender, earning him a red card and sending him off in what was his final professional match. Zidane's dismissal overshadowed the rest of the game, but Italy remained composed.\n\nThe match was ultimately decided by a penalty shootout after both sides failed to score during extra time. Italy won 5-3 on penalties, with Fabio Cannavaro leading the defense in a commanding display, and goalkeeper Gianluigi Buffon making key saves throughout the game. The win secured Italy their fourth World Cup title, and the dramatic match, along with Zidane's shocking exit, made it one of the most talked-about finals in World Cup history."
);

Match arsenalTottenham = Match(
    homeTeam: "Tottenham Hotspur",
    awayTeam: "Arsenal",
    date: DateTime(2004, 4, 25),
    location: "White Hart Lane, London",
    homeTeamScore: 2,
    awayTeamScore: 2,
    goalScorers: ["Vieira", "Pires", "Keane", "Defoe"],
    manOfTheMatch: "Patrick Vieira",
    referee: "Mark Halsey",
    attendance: 36206,
    description: "Arsenal secured their Premier League title in a dramatic North London Derby, famously clinching the championship at the home of their fierce rivals, Tottenham Hotspur. In this heated encounter, Arsenal needed just a point to be crowned champions, and they achieved that with a hard-fought 2-2 draw.\n\nThe Gunners took a 2-0 lead with goals from Patrick Vieira and Robert Pires, dominating the first half. However, Tottenham mounted a late comeback, with Jermain Defoe and Robbie Keane scoring to level the match. Keane's late penalty set up a nervy ending, but Arsenal held on to ensure their historic 'Invincibles' season continued unscathed.\n\nArsenal’s unbeaten run throughout the 2003-2004 season remains one of the greatest achievements in football, and the image of the players celebrating their title victory at White Hart Lane became iconic. Patrick Vieira's leadership and dynamic performance earned him the Man of the Match, as Arsenal celebrated their triumph in the backyard of their most bitter rivals."
);

Match spainNetherlands = Match(
    homeTeam: "Spain",
    awayTeam: "Netherlands",
    date: DateTime(2010, 7, 11),
    location: "Soccer City, Johannesburg",
    homeTeamScore: 1,
    awayTeamScore: 0,
    goalScorers: ["Iniesta"],
    manOfTheMatch: "Andrés Iniesta",
    referee: "Howard Webb",
    attendance: 84490,
    description: "Spain made history by winning their first-ever World Cup, defeating the Netherlands 1-0 in an intense, physical final. The match saw numerous fouls, yellow cards, and one infamous karate kick challenge by Dutch midfielder Nigel de Jong on Xabi Alonso. Despite the rough play, Spain maintained their possession-based style throughout the game, but the match remained deadlocked after 90 minutes.\n\nIn extra time, Andrés Iniesta scored the decisive goal in the 116th minute, slotting the ball past Dutch goalkeeper Maarten Stekelenburg after receiving a pass from Cesc Fàbregas. Iniesta's goal sent Spain into wild celebrations, marking the pinnacle of their 'Golden Generation' after winning the 2008 UEFA Euro Championship.\n\nThe match was notable for its physicality, with referee Howard Webb issuing 14 yellow cards and one red card to Dutch defender Johnny Heitinga in extra time. Iniesta was named Man of the Match for his composure and match-winning performance, cementing his place as a Spanish football legend."
);

Match manUnitedBayern = Match(
    homeTeam: "Manchester United",
    awayTeam: "Bayern Munich",
    date: DateTime(1999, 5, 26),
    location: "Camp Nou, Barcelona",
    homeTeamScore: 2,
    awayTeamScore: 1,
    goalScorers: ["Basler", "Sheringham", "Solskjær"],
    manOfTheMatch: "Ole Gunnar Solskjær",
    referee: "Pierluigi Collina",
    attendance: 90045,
    description: "Arguably the most dramatic final in Champions League history, Manchester United completed a historic treble with two goals in injury time to stun Bayern Munich 2-1. Bayern Munich had taken the lead early in the 6th minute with a free-kick from Mario Basler, and the German side dominated much of the match, hitting the woodwork twice. However, Manchester United's resilience paid off in stoppage time.\n\nTeddy Sheringham equalized in the 91st minute after a corner from David Beckham was flicked on by Ryan Giggs, and just two minutes later, Ole Gunnar Solskjær poked in a second after another Beckham corner, sending United fans into a frenzy. The match ended in heartbreak for Bayern, who had controlled much of the game, while United celebrated their first European Cup since 1968.\n\nThis victory completed Manchester United's treble-winning season, as they had already won the Premier League and FA Cup that year. Solskjær, who scored the winning goal, was named Man of the Match, and the image of him celebrating with his arms raised became iconic. Sir Alex Ferguson famously remarked after the match, 'Football, bloody hell!'"
);