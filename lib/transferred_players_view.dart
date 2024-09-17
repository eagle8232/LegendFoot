import 'package:flutter/material.dart';
import 'player_transfer_model.dart';

class TransferredPlayersView extends StatelessWidget {
  final List<PlayerTransfer> transfers = [
    ronaldoTransfer,
    neymarTransfer,
    baleTransfer,
    mbappeTransfer,
    vanDijkTransfer,
    suarezTransfer,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferred Players'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: transfers.length,
        itemBuilder: (context, index) {
          final player = transfers[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: PlayerTransferCard(player: player),
          );
        },
      ),
    );
  }
}

class PlayerTransferCard extends StatelessWidget {
  final PlayerTransfer player;

  const PlayerTransferCard({required this.player});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      color: Color(0xFF1C1F40),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Player image, name, and transfer details
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(player.imageUrl),
                  radius: 30,
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      player.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '${player.oldTeam} → ${player.newTeam}',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),

            // Transfer fee, wins, and losses
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatItem(
                    title: 'Transfer Fee', value: '\$${player.transferFee}M'),
                _buildStatItem(title: 'Wins', value: '${player.wins}'),
                _buildStatItem(title: 'Losses', value: '${player.losses}'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build stats like wins, losses, and transfer fee
  Widget _buildStatItem({required String title, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
