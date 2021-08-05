class Recommendation {
  final String? name, source, text;
  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demoRecommendations = [
  Recommendation(
    name: 'John Mbugua',
    source: 'Linkedin',
    text:
        'I have had the pleasure of working with John on two flutter projects and what strikes me the most about him is his prowess and experiece. He possesses coding skills that i havent seen with anyone of his age',
  ),
  Recommendation(
    name: 'Charles Mburu',
    source: 'Linkedin',
    text:
        'John is a great asset for any Organization. its true that any company will be seeking to acquire his skills in the near future.He possesses coding skills that i havent seen with anyone of his age',
  ),
  Recommendation(
    name: 'Edwin',
    source: 'Youtube',
    text:
        'I like your way of doing your projects. After watching your videos i always find new concepts. He possesses coding skills that i havent seen with anyone of his age.He possesses coding skills that i havent seen with anyone of his age',
  ),
  Recommendation(
    name: 'Nekesa',
    source: 'Github',
    text:
        'Very straightforward, proffesional and also the best flutter developer in youtube and github. It willbe great if you find time and nature young youths who are willing to work in the software and web industry',
  ),
];
