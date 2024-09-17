import 'package:flutter/material.dart';

class CreateMatchView extends StatefulWidget {
  @override
  _CreateMatchViewState createState() => _CreateMatchViewState();
}

class _CreateMatchViewState extends State<CreateMatchView> {
  final TextEditingController homeTeamController = TextEditingController();
  final TextEditingController awayTeamController = TextEditingController();
  final TextEditingController homeScoreController = TextEditingController();
  final TextEditingController awayScoreController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

  DateTime? selectedDate;

  // Temporary list to store match data
  List<Map<String, dynamic>> savedMatches = [];

  // Method to pick the date
  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // Method to save the match temporarily
  void _saveMatch() {
    final String homeTeam = homeTeamController.text;
    final String awayTeam = awayTeamController.text;
    final String homeScore = homeScoreController.text;
    final String awayScore = awayScoreController.text;
    final String note = noteController.text;

    // Ensure all fields are filled
    if (homeTeam.isEmpty ||
        awayTeam.isEmpty ||
        homeScore.isEmpty ||
        awayScore.isEmpty ||
        selectedDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please fill all fields"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Prepare match data as a map
    Map<String, dynamic> matchData = {
      'homeTeam': homeTeam,
      'awayTeam': awayTeam,
      'homeScore': homeScore,
      'awayScore': awayScore,
      'date': selectedDate!.toIso8601String(),
      'note': note,
    };

    // Save the match data temporarily in the list
    setState(() {
      savedMatches.add(matchData);

      // Clear the text fields and date after saving
      homeTeamController.clear();
      awayTeamController.clear();
      homeScoreController.clear();
      awayScoreController.clear();
      noteController.clear();
      selectedDate = null;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Match Saved Successfully"),
        backgroundColor: Colors.green,
      ),
    );
  }

  // Method to display the saved matches
  void _showSavedMatches(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SavedMatchesView(savedMatches: savedMatches)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Match'),
        backgroundColor: Color(0xFF0A0F2A),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () => _showSavedMatches(context), // Navigate to saved matches
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Home Team Name
              TextField(
                controller: homeTeamController,
                decoration: InputDecoration(
                  labelText: 'Home Team Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Away Team Name
              TextField(
                controller: awayTeamController,
                decoration: InputDecoration(
                  labelText: 'Away Team Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Home Team Score
              TextField(
                controller: homeScoreController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Home Team Score',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Away Team Score
              TextField(
                controller: awayScoreController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Away Team Score',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Match Date Picker
              Row(
                children: [
                  Expanded(
                    child: Text(
                      selectedDate == null
                          ? 'Select Match Date'
                          : 'Match Date: ${selectedDate!.toLocal().toString().split(' ')[0]}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () => _pickDate(context),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Note/Description Field
              TextField(
                controller: noteController,
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Description/Notes',
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true,
                ),
              ),
              SizedBox(height: 24),

              // Save Button
              Center(
                child: ElevatedButton(
                  onPressed: _saveMatch,
                  child: Text('Save Match'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0A0F2A), // Button color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// View to Display Saved Matches
class SavedMatchesView extends StatelessWidget {
  final List<Map<String, dynamic>> savedMatches;

  SavedMatchesView({required this.savedMatches});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Matches'),
        backgroundColor: Color(0xFF0A0F2A),
      ),
      body: savedMatches.isEmpty
          ? Center(child: Text('No matches saved yet'))
          : ListView.builder(
        itemCount: savedMatches.length,
        itemBuilder: (context, index) {
          final match = savedMatches[index];
          return ListTile(
            title: Text('${match['homeTeam']} vs ${match['awayTeam']}'),
            subtitle: Text('Date: ${DateTime.parse(match['date']).toLocal().toString().split(' ')[0]}'),
            trailing: Text('${match['homeScore']} - ${match['awayScore']}'),
          );
        },
      ),
    );
  }
}
