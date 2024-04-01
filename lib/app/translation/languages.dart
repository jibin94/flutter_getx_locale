final List<LanguageModel> languages = [
  LanguageModel("English", "en"),
  LanguageModel("Bangla", "bn"),
  LanguageModel("Telugu", "te"),
  LanguageModel("Urdu", "ur"),
  LanguageModel("Tamil", "ta"),
  LanguageModel("Spanish", "es"),
  LanguageModel("Marathi", "mr"),
  LanguageModel("Russian", "ru"),
  LanguageModel("Hindi", "hi"),
  LanguageModel("French", "fr"),
  LanguageModel("Arabic", "ar"),
];

class LanguageModel {
  LanguageModel(
    this.language,
    this.symbol,
  );

  String language;
  String symbol;
}
