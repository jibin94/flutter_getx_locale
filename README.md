# flutter_locale

Localization with GetX-In Flutter

## Implementation

GetX has made it very easy to implement the localization very easy. You can achieve this in a few steps
- Wrap you MaterialApp widget with GetMaterialApp and set the device locale as the default app locale for the application using locale: Get.deviceLocale what this will do is that it will get the user's default locale and set it to apps locale.
- Define the fallback locale, this will comes into the picture when an invalid locale is selected. This is done using fallbackLocale: Locale(‘en’, ‘US’) the property, here we are specifying that if there is an invalid locale, it will be automatically changed to ‘en_US’
- Now we need to add the translationkeys to the GetMaterialApp widget using translationsKeys: AppTranslation.translationsKeys property.
- Now we will create a new abstract dart class with the name AppTranslation.dart and we will add our translations there.
- You can get the language code from [here](https://www.andiamo.co.uk/resources/iso-language-codes/)
- Now we will create a UI to change the language of the app based on user selection. we will be creating a Dropdown and on the selection of any item from it will change the Apps locale.