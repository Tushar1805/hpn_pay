//
// import 'package:flutter/material.dart';
//
//
//
// class LocalizationApp extends StatelessWidget {
//   const LocalizationApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return EasyLocalization(
//       fallbackLocale:
//           context.read<TranslationRepository>().fallbackTranslationModel.locale,
//       supportedLocales: context.read<TranslationRepository>().getLocaleList,
//       path: translationAssetsBasePath,
//       useOnlyLangCode: true,
//       saveLocale: true,
//       child: const App(),
//     );
//   }
// }
