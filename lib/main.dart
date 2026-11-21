import 'package:flutter/material.dart';
import 'package:game_001_block_puzzle_master/game/game_config.dart' as blok_bulmaca;
import 'package:oyun_blok_doldurma/oyun_blok_doldurma.dart';
import 'package:oyun_blok_sudoku/oyun_blok_sudoku.dart';
import 'package:studio_core/app/hub.dart';

/// Blok Oyunları: aynı ailedeki blok oyunlarını tek uygulamada toplar.
/// Her oyunun kaydı ve ilerlemesi ayrıdır.
final hubConfig = HubConfig(
  hubId: 'merkez-blok-oyunlari',
  title: const ['Blok Oyunları', 'Block Games', 'Blockspiele', 'Juegos de Bloques', 'Jeux de Blocs'],
  tagline: const [
    'Blok bulmacaları tek uygulamada',
    'Block puzzles in one app',
    'Blockrätsel in einer App',
    'Puzles de bloques en una app',
    'Puzzles de blocs dans une app',
  ],
  seedColor: const Color(0xFF3F51B5),
  icon: Icons.grid_view_rounded,
  games: [blok_bulmaca.gameConfig, blokSudokuConfig, blokDoldurmaConfig],
);

void main() => bootstrapHub(hubConfig);
