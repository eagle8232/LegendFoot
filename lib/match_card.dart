import 'package:flutter/material.dart';
import 'match_model.dart';

class MatchCard extends StatelessWidget {
  final Match match;
  final VoidCallback onTap; // Define the onTap callback

  const MatchCard({
    required this.match,
    required this.onTap, // Include onTap in the constructor
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Assign the onTap callback to GestureDetector
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Color(0xFF1C1F40),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Match teams
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      match.homeTeam,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'vs',
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      match.awayTeam,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.end,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Match score
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${match.homeTeamScore}',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '-',
                    style: TextStyle(color: Colors.white70, fontSize: 24),
                  ),
                  Text(
                    '${match.awayTeamScore}',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Date and location
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${match.date.toLocal()}'.split(' ')[0],
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  Flexible(
                    child: Text(
                      match.location,
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                      textAlign: TextAlign.end,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
