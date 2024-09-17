class PlayerTransfer {
  final String name;
  final String imageUrl;
  final String oldTeam;
  final String newTeam;
  final int wins;
  final int losses;
  final double transferFee; // in millions

  PlayerTransfer({
    required this.name,
    required this.imageUrl,
    required this.oldTeam,
    required this.newTeam,
    required this.wins,
    required this.losses,
    required this.transferFee,
  });
}

// Cristiano Ronaldo transfer from Manchester United to Real Madrid
PlayerTransfer ronaldoTransfer = PlayerTransfer(
  name: "Cristiano Ronaldo",
  imageUrl: "https://img.etimg.com/thumb/width-1200,height-900,imgsize-115490,resizemode-75,msid-111438820/news/international/us/cristiano-ronaldo-retirement-portugal-star-drops-major-hint-after-win-against-slovenia-in-euro-cup-2024.jpg",
  oldTeam: "Manchester United",
  newTeam: "Real Madrid",
  wins: 311,  // Wins at Real Madrid
  losses: 59, // Losses at Real Madrid
  transferFee: 94.0, // In millions
);

// Neymar transfer from Barcelona to Paris Saint-Germain
PlayerTransfer neymarTransfer = PlayerTransfer(
  name: "Neymar",
  imageUrl: "https://upload.wikimedia.org/wikipedia/commons/b/bc/Bra-Cos_%281%29.jpg",
  oldTeam: "Barcelona",
  newTeam: "Paris Saint-Germain",
  wins: 98,  // Wins at PSG
  losses: 22, // Losses at PSG
  transferFee: 222.0, // In millions (world record)
);

// Gareth Bale transfer from Tottenham Hotspur to Real Madrid
PlayerTransfer baleTransfer = PlayerTransfer(
  name: "Gareth Bale",
  imageUrl: "https://assets.goal.com/images/v3/blt8ec8a54829cfdeca/GettyImages-1387543350.jpg?auto=webp&format=pjpg&width=3840&quality=60",
  oldTeam: "Tottenham Hotspur",
  newTeam: "Real Madrid",
  wins: 137,  // Wins at Real Madrid
  losses: 32, // Losses at Real Madrid
  transferFee: 100.8, // In millions
);

// Kylian Mbappé transfer from AS Monaco to Paris Saint-Germain
PlayerTransfer mbappeTransfer = PlayerTransfer(
  name: "Kylian Mbappé",
  imageUrl: "https://cdn.britannica.com/39/239139-050-49A950D1/French-soccer-player-Kylian-Mbappe-FIFA-World-Cup-December-10-2022.jpg",
  oldTeam: "AS Monaco",
  newTeam: "Paris Saint-Germain",
  wins: 126,  // Wins at PSG
  losses: 15, // Losses at PSG
  transferFee: 180.0, // In millions
);

// Virgil van Dijk transfer from Southampton to Liverpool
PlayerTransfer vanDijkTransfer = PlayerTransfer(
  name: "Virgil van Dijk",
  imageUrl: "https://cdn.theathletic.com/app/uploads/2024/06/28063342/GettyImages-2159231626.jpg",
  oldTeam: "Southampton",
  newTeam: "Liverpool",
  wins: 85,  // Wins at Liverpool
  losses: 21, // Losses at Liverpool
  transferFee: 75.0, // In millions
);

// Luis Suárez transfer from Liverpool to Barcelona
PlayerTransfer suarezTransfer = PlayerTransfer(
  name: "Luis Suárez",
  imageUrl: "https://i.guim.co.uk/img/media/c1aefba93cded59ac25c4eb4b4ae580519c86837/0_255_7644_4586/master/7644.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=fbae841a6af3eefd5f32c6ef02a32f3d",
  oldTeam: "Liverpool",
  newTeam: "Barcelona",
  wins: 147,  // Wins at Barcelona
  losses: 30, // Losses at Barcelona
  transferFee: 82.3, // In millions
);
