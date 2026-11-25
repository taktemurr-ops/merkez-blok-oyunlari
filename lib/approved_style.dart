import 'package:flutter/material.dart';
import 'package:studio_core/app/approved_hub.dart';

/// Onaylı tasarım (Oyun Merkezleri · Tasarım Örnekleri).
const approvedStyle = ApprovedHubStyle(
  background: [Color(0xFF1E58C8), Color(0xFF16338C), Color(0xFF0B1A52)],
  accent: Color(0xFF35D6F6),
  card: Color(0xFF2050B8),
  play: Color(0xFF1E90F5),
  number: Color(0xFF3FE0FF),
  blocks: [ApprovedBlock.search, ApprovedBlock.chips, ApprovedBlock.featured, ApprovedBlock.progress],
  featuredKey: 'popular',
  featured: ['game-001-block-puzzle-master', 'oyun-blok-sudoku', 'oyun-dusen-bloklar'],
);
