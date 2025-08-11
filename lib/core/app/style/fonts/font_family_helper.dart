class FontFamilyHelper {
  const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  // TODO: shardPrefrences

  static String getLocalozedFontFamily(){
    final currentLanguage = 'ar';
    if(currentLanguage=='ar'){
      return cairoArabic;
    }else{
      return poppinsEnglish;
    }
  }
}