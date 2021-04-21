class DiscoverModel {
  final String quote;
  final String question;
  final List<String> hashtag;

  DiscoverModel({this.quote, this.question, this.hashtag});
}

final List<DiscoverModel> discoverInfo = [
  DiscoverModel(
      quote: 'خذ وقتك كما تشاء قبل أن تقفز إلى استنتاجات حول أي شيء ',
      question: 'كيف تبحث عن الإشباع في عملك',
      hashtag: ['#تحسين_الذات', '#ريادة_أعمال', '#تواصل_فعال']),
  DiscoverModel(
      quote: 'احرص على الوصول إلى قاعة الاجتماعات في الوقت المحدد للاجتماع ',
      question: 'كيف تعلن عن وجودك في الاجتماعات',
      hashtag: ['#تحسين_الذات', '#ريادة_أعمال', '#تواصل_فعال']),
  DiscoverModel(
      quote:
          ' تحدث إلى الأشخاص الذين يفيدون من عملكز فكلما أدركت قيمة الخدمة التي تقوم بهاو سعدت أكثر بتقديمها',
      question: 'كيف تعلن عن وجودك في الاجتماعات',
      hashtag: ['#تفكير_ايجابي', '#ريادة_أعمال', 'تحسين_الذات#']),
  DiscoverModel(
      quote: 'اشتر لأطفالك ألعابا تعليمية في صغرهم ',
      question: 'كيف تساعد أطفالك على التعلم',
      hashtag: ['تفكير_ايجابي#', '#ريادة_أعمال', '#تحسين_الذات']),
  DiscoverModel(
      quote:
          ' قبل أن تتزوج فكر مليا وبعمق في مغزى الزواج بالنسبة لك ما الذي يدفعك للزواج',
      question: 'كيف تختار شريك حياتك',
      hashtag: ['#تفكير_ايجابي', '#بناء_العلاقات', '#ارشاد_أسري']),
  DiscoverModel(
      quote:
          'تعامل مع الانتظار على أنه هدية وقتية, لا على أنه مقاطعة لقدرتك الانتاجية واستغل هذه الهدية',
      question: 'كيف تستغل وقت الانتظار بفاعلية',
      hashtag: ['تفكير_ايجابي', '#ريادة_أعمال', '#تحسين_الذات#']),
];
