# Blok Oyunları · Block Games (merkez-blok-oyunlari)

Blok ailesinin **merkez uygulaması**: aynı türdeki oyunları tek mağaza uygulamasında toplar.
Her oyun kendi deposunda geliştirilir; bu depo yalnızca onları bir araya getirir.

| Oyun | Depo |
|---|---|
| Blok Bulmaca | [game-001-block-puzzle-master](https://github.com/taktemurr-ops/game-001-block-puzzle-master) |
| Blok Sudoku | [oyun-blok-sudoku](https://github.com/taktemurr-ops/oyun-blok-sudoku) |
| Renk İkilileri | [oyun-renk-ikilileri](https://github.com/taktemurr-ops/oyun-renk-ikilileri) |
| Blok Macerası (`oyun-blok-macerasi`, Blok Bulmaca motorunda macera kipi) | [game-001-block-puzzle-master](https://github.com/taktemurr-ops/game-001-block-puzzle-master) |

Ortak çekirdek: [studio-core](https://github.com/taktemurr-ops/studio-core) (`bootstrapHub`).
Her oyunun kaydı, bölümleri ve ilerlemesi ayrı tutulur.

CI her değişiklikte test eder; Android APK/AAB, web ve iOS derlemesi üretir.
