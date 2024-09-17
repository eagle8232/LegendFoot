import 'package:flutter/material.dart';
import 'match_model.dart';
import 'match_card.dart'; // Import the MatchCard widget

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // Declare your matches array with the variable names
  List<Match> matches = [
    liverpoolMilan,
    manchesterQueens,
    barcelonaPsg,
    germanyBrazil,
    realMadridAtletico,
    chelseaBarcelona,
    italyFrance,
    arsenalTottenham,
    spainNetherlands,
    manUnitedBayern,
  ];

  // Function to add a new match
  void _addNewMatch(BuildContext context) {
    TextEditingController homeTeamController = TextEditingController();
    TextEditingController awayTeamController = TextEditingController();
    TextEditingController homeScoreController = TextEditingController();
    TextEditingController awayScoreController = TextEditingController();
    TextEditingController dateController = TextEditingController();
    TextEditingController locationController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Match'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: homeTeamController,
                  decoration: InputDecoration(labelText: 'Home Team'),
                ),
                TextField(
                  controller: awayTeamController,
                  decoration: InputDecoration(labelText: 'Away Team'),
                ),
                TextField(
                  controller: homeScoreController,
                  decoration: InputDecoration(labelText: 'Home Team Score'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: awayScoreController,
                  decoration: InputDecoration(labelText: 'Away Team Score'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: dateController,
                  decoration: InputDecoration(labelText: 'Date (yyyy-mm-dd)'),
                  keyboardType: TextInputType.datetime,
                ),
                TextField(
                  controller: locationController,
                  decoration: InputDecoration(labelText: 'Location'),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(labelText: 'Description'),
                  maxLines: 3,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog without saving
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Add the new match to the list
                setState(() {
                  matches.add(
                    Match(
                      homeTeam: homeTeamController.text,
                      awayTeam: awayTeamController.text,
                      homeTeamScore: int.parse(homeScoreController.text),
                      awayTeamScore: int.parse(awayScoreController.text),
                      date: DateTime.parse(dateController.text),
                      location: locationController.text,
                      goalScorers: [], // Placeholder, can be updated later
                      manOfTheMatch: 'Unknown', // Placeholder
                      referee: 'Unknown', // Placeholder
                      attendance: 0, // Placeholder
                      description: descriptionController.text,
                    ),
                  );
                });
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Add Match'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Legend Matches'),
        iconTheme: IconThemeData(color: Color(0xFF0A0F2A)), // Make icons white
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Color(0xFF0A0F2A)), // Make the add button white
            onPressed: () {
              _addNewMatch(context); // Call the function to add a new match
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          final match = matches[index];
          return Padding(
            padding: const EdgeInsets.all(8.0), // Add padding for spacing between cards
            child: MatchCard(
              match: match, // Pass the match data to MatchCard
              onTap: () {
                // Add tap functionality for expanding details
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '${match.homeTeam} vs ${match.awayTeam}',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Date: ${match.date.toLocal()}'.split(' ')[0]),
                            Text('Location: ${match.location}'),
                            Text('Referee: ${match.referee}'),
                            Text('Attendance: ${match.attendance}'),
                            SizedBox(height: 10),
                            Text(
                              'Description:',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(match.description),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
