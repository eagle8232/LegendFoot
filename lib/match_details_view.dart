import 'package:flutter/material.dart';
import 'match_model.dart';

class MatchDetailsView extends StatelessWidget {
  final Match match;

  const MatchDetailsView({required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${match.homeTeam} vs ${match.awayTeam}'),
        backgroundColor: Color(0xFF0A0F2A),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Match teams and scores
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      match.homeTeam,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 10), // Space between team name and score
                  Text(
                    '${match.homeTeamScore} - ${match.awayTeamScore}',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 10), // Space between score and away team name
                  Expanded(
                    child: Text(
                      match.awayTeam,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      textAlign: TextAlign.end,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Date and location
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date: ${match.date.toLocal()}'.split(' ')[0],
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                  SizedBox(width: 10), // Space between date and location
                  Expanded(
                    child: Text(
                      'Location: ${match.location}',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                      textAlign: TextAlign.end,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Referee and attendance
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Referee: ${match.referee}',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                  SizedBox(width: 10), // Space between referee and attendance
                  Text(
                    'Attendance: ${match.attendance}',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Man of the Match
              Text(
                'Man of the Match: ${match.manOfTheMatch}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),

              // Goal Scorers
              Text(
                'Goal Scorers:',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              for (String scorer in match.goalScorers)
                Text(
                  scorer,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              SizedBox(height: 20),

              // Match description
              Text(
                'Match Description:',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                match.description,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
