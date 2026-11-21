import 'package:flutter/material.dart';
import 'package:game_001_block_puzzle_master/game/game_config.dart' as blok_bulmaca;
import 'package:oyun_3b_kup_bulmaca/oyun_3b_kup_bulmaca.dart';
import 'package:oyun_blok_doldurma/oyun_blok_doldurma.dart';
import 'package:oyun_altigen_blok/oyun_altigen_blok.dart';
import 'package:oyun_altigen_dusen_bloklar/oyun_altigen_dusen_bloklar.dart';
import 'package:oyun_blok_cesit_paketi/oyun_blok_cesit_paketi.dart';
import 'package:oyun_blok_kacisi/oyun_blok_kacisi.dart';
import 'package:oyun_blok_kaydirma/oyun_blok_kaydirma.dart';
import 'package:oyun_blok_kule_dengesi/oyun_blok_kule_dengesi.dart';
import 'package:oyun_blok_sudoku/oyun_blok_sudoku.dart';
import 'package:oyun_dusen_bloklar/oyun_dusen_bloklar.dart';
import 'package:oyun_kum_bloklari/oyun_kum_bloklari.dart';
import 'package:oyun_poliomino_yerlestirme/oyun_poliomino_yerlestirme.dart';
import 'package:oyun_renkli_blok_cikisi/oyun_renkli_blok_cikisi.dart';
import 'package:oyun_retro_tugla_konsolu/oyun_retro_tugla_konsolu.dart';
import 'package:oyun_sayili_blok_dusurme/oyun_sayili_blok_dusurme.dart';
import 'package:studio_core/app/hub.dart';

/// Blok Oyunları: aynı ailedeki blok oyunlarını tek uygulamada toplar.
/// Her oyunun kaydı ve ilerlemesi ayrıdır.
final hubConfig = HubConfig(
  hubId: 'merkez-blok-oyunlari',
  title: const ['Blok Oyunları', 'Block Games', 'Blockspiele', 'Juegos de Bloques', 'Jeux de Blocs',
      // ar fa he ur ru uk pl cs ro hu el it pt nl sv da nb fi ja ko zh hi bn id ms th vi fil
      'ألعاب المكعبات',
      'بازی‌های بلوکی',
      'משחקי קוביות',
      'بلاک کھیل',
      'Блочные игры',
      'Блокові ігри',
      'Gry Blokowe',
      'Blokové hry',
      'Jocuri cu Blocuri',
      'Blokkjátékok',
      'Παιχνίδια με Μπλοκ',
      'Giochi di Blocchi',
      'Jogos de Blocos',
      'Blokspellen',
      'Blockspel',
      'Blokspil',
      'Klosspill',
      'Palikkapelit',
      'ブロックゲーム',
      '블록 게임',
      '方块游戏',
      'ब्लॉक खेल',
      'ব্লক গেম',
      'Game Balok',
      'Permainan Blok',
      'เกมบล็อก',
      'Trò Chơi Khối',
      'Mga Larong Bloke',
    ],
  tagline: const [
    'Blok bulmacaları tek uygulamada',
    'Block puzzles in one app',
    'Blockrätsel in einer App',
    'Puzles de bloques en una app',
    'Puzzles de blocs dans une app',
      // ar fa he ur ru uk pl cs ro hu el it pt nl sv da nb fi ja ko zh hi bn id ms th vi fil
      'ألغاز المكعبات في تطبيق واحد',
      'پازل‌های بلوکی در یک برنامه',
      'פאזלים של קוביות באפליקציה אחת',
      'ایک ایپ میں بلاک پہیلیاں',
      'Блочные головоломки в одном приложении',
      'Блокові головоломки в одному застосунку',
      'Łamigłówki z klocków w jednej aplikacji',
      'Kostkové hlavolamy v jedné aplikaci',
      'Puzzle-uri cu blocuri într-o singură aplicație',
      'Blokk-kirakók egy alkalmazásban',
      'Γρίφοι με μπλοκ σε μία εφαρμογή',
      'Rompicapo a blocchi in un\'unica app',
      'Quebra-cabeças de blocos num só app',
      'Blokpuzzels in één app',
      'Blockpussel i en app',
      'Blokpuslespil i én app',
      'Klosspuslespill i én app',
      'Palikkapulmat yhdessä sovelluksessa',
      'ブロックパズルをひとつのアプリに',
      '블록 퍼즐을 앱 하나에',
      '方块谜题，一个应用全搞定',
      'एक ऐप में ब्लॉक पहेलियाँ',
      'এক অ্যাপে ব্লক ধাঁধা',
      'Puzzle balok dalam satu aplikasi',
      'Puzzle blok dalam satu aplikasi',
      'ปริศนาบล็อกในแอปเดียว',
      'Câu đố khối trong một ứng dụng',
      'Mga block puzzle sa iisang app',
    ],
  seedColor: const Color(0xFF1F5E8C),
  icon: Icons.grid_view_rounded,
  games: [
    blok_bulmaca.gameConfig,
    blokSudokuConfig,
    blokDoldurmaConfig,
    dusenBloklarConfig,
    altigenBlokConfig,
    blokKaydirmaConfig,
    sayiliBlokConfig,
    altigenDusenConfig,
    retroKonsolConfig,
    blokKacisiConfig,
    besliConfig,
    renkliCikisConfig,
    kumBloklariConfig,
    kupBulmacaConfig,
    kuleDengesiConfig,
  ],
  groups: [blokCesitGroup],
);

void main() => bootstrapHub(hubConfig);
