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
    ]);
    expect(all.length, ids.length + 20);
    expect(all.toSet().length, all.length);
    expect(ids.toSet().length, ids.length);
    for (final g in hubConfig.allGames) {
      expect(g.rules.gameId, g.gameId, reason: 'kayıt öneki oyun kimliğiyle aynı olmalı');
    }
  });
}
