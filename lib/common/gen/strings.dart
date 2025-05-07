import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_generator/easy_localization_generator.dart';
import 'package:flutter/material.dart';

part 'strings.g.dart';

// LINK FOR THE GOOGLE SHEET
// https://docs.google.com/spreadsheets/d/1eeAaxYSGs-HCY8hdBS8Pzw9CzU0d4OjdTxO_Rkd5WXY/edit?gid=0#gid=0

@SheetLocalization(
  docId: '1eeAaxYSGs-HCY8hdBS8Pzw9CzU0d4OjdTxO_Rkd5WXY',
  version: 3,
  outDir: 'assets/localization',
  outName: 'translations.csv',
  preservedKeywords: [
    'few',
    'many',
    'one',
    'other',
    'two',
    'zero',
    'male',
    'female',
  ],
)
class _Strings {}
