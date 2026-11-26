import 'package:flutter_test/flutter_test.dart';
import 'package:merkez_blok_oyunlari/main.dart';

void main() {
  test('merkezde oyunlar benzersiz kimlikle yer alıyor', () {
    final ids = hubConfig.games.map((g) => g.gameId).toList();
    final all = hubConfig.allGames.map((g) => g.gameId).toList();
    expect(ids, ['game-001-block-puzzle-master', 'oyun-blok-sudoku', 'oyun-blok-doldurma', 'oyun-dusen-bloklar',
      'oyun-altigen-blok',
      'oyun-blok-kaydirma',
      'oyun-sayili-blok-dusurme',
      'oyun-altigen-dusen-bloklar',
      'oyun-retro-tugla-konsolu',
      'oyun-blok-kacisi',
      'oyun-poliomino-yerlestirme',
      'oyun-renkli-blok-cikisi',
      'oyun-kum-bloklari',
      'oyun-3b-kup-bulmaca',
      'oyun-blok-kule-dengesi',
      'oyun-egim-kutusu',
      'oyun-alan-bolme',
      'oyun-renk-ikilileri',
      'oyun-blok-macerasi',
    ]);
    expect(all.length, ids.length + 20);
    expect(all.toSet().length, all.length);
    expect(ids.toSet().length, ids.length);
    for (final id in hubConfig.starters) {
      expect(all, contains(id), reason: 'ilk açılış rehberindeki oyun merkezde olmalı');
    }
    for (final g in hubConfig.allGames) {
      expect(g.rules.gameId, g.gameId, reason: 'kayıt öneki oyun kimliğiyle aynı olmalı');
    }
  });

  test('her oyunun kendine ait, başka oyunla paylaşılmayan kapağı var', () {
    final seen = <String, String>{};
    for (final g in hubConfig.allGames) {
      final c = hubConfig.covers[g.gameId];
      expect(c, isNotNull, reason: '${g.gameId} kapak haritasında yok');
      final key = '${c!.kind}|${c.v}|${c.label}';
      expect(seen[key], isNull, reason: '${g.gameId} ile ${seen[key]} aynı kapağı paylaşıyor');
      seen[key] = g.gameId;
    }
    final ids = {for (final g in hubConfig.allGames) g.gameId, for (final gr in hubConfig.groups) gr.id};
    for (final id in hubConfig.covers.keys) {
      expect(ids, contains(id), reason: 'kapak haritasında merkezde olmayan kimlik: $id');
    }
  });
}
