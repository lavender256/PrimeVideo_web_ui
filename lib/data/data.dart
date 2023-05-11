

import 'package:prime_video_web_ui/model/media.dart';

List<String> menuList = ["Home", "tv shows", "movies", 'latest', 'my list'];

List<Media> categoryList = [
  Media(name: "Action\n&\nAdventure", imageUrl: "https://s8.uupload.ir/files/1_abv.jpg"),
  Media(name: "Anime", imageUrl: "https://s8.uupload.ir/files/4_vtx.jpg"),
  Media(name: "Thriller", imageUrl: "https://s8.uupload.ir/files/2_deph.jpg"),
  Media(name: "Comedy", imageUrl: "https://s8.uupload.ir/files/7_v650.jpg"),
  Media(name: "Dramas", imageUrl: "https://s8.uupload.ir/files/6_ds9.jpg"),
  Media(name: "Crime", imageUrl: "https://s8.uupload.ir/files/3_cw4b.jpg"),
  Media(name: "Horror", imageUrl: "https://s8.uupload.ir/files/5_h6wi.jpg"),
  Media(name: "Sci-Fi\n&\nFantasy", imageUrl: "https://s8.uupload.ir/files/8_nwdp.jpg"),
];

List<Media> trendList = [
  Media(
      imageUrl: "https://s8.uupload.ir/files/14_ya1w.jpg",
      name: "Shameless",
      actList: shamelessList,
      title: "Destined",
      title2: "To",
      title3: "Protect",
      episodeImage: "https://s8.uupload.ir/files/1396110_sv4y.jpg",
      episodeImage2: "https://s8.uupload.ir/files/1396113_rg5c.jpg",
      episodeImage3: "https://s8.uupload.ir/files/1396114_aa2.jpg",
      rate: 9.8,
      year: 2015),
  Media(
      imageUrl: "https://s8.uupload.ir/files/33_v4a7.jpg",
      name: "The Marvelous Mrs Maisel",
      actList: maiselList,
      title: "Because",
      title2: "You",
      title3: "Left",
      episodeImage: "https://s8.uupload.ir/files/32_fpb.jpg",
      episodeImage2: "https://s8.uupload.ir/files/13_w4a7.jpg",
      episodeImage3: "https://s8.uupload.ir/files/11_boeb.jpg",
      rate: 9.8,
      year: 2019),
  Media(
      imageUrl: "https://s8.uupload.ir/files/10_vb5e.jpg", name: "The 100", rate: 9.8, year: 2005),
  Media(
      imageUrl: "https://s8.uupload.ir/files/15_nlon.jpg",
      name: "Knives Out",
      rate: 9.8,
      year: 2005),
  Media(
      imageUrl: "https://s8.uupload.ir/files/16_9w0z.jpg", name: "Jumanji", rate: 9.8, year: 2005),
];
List<Media> continueList = [
  Media(
      imageUrl: "https://s8.uupload.ir/files/17_v9fu.jpg",
      name: "Red Notice",
      value: 0.2,
      year: 2015),
  Media(
      imageUrl: "https://s8.uupload.ir/files/9_571i.jpg",
      name: "Breaking Bad",
      value: 0.9,
      year: 2015),
  Media(
      imageUrl: "https://s8.uupload.ir/files/18_b4bn.jpg",
      name: "Dark Knight",
      value: 0.1,
      year: 2015),
  Media(
      imageUrl: "https://s8.uupload.ir/files/14_ya1w.jpg",
      name: "Shameless",
      value: 0.5,
      year: 2015),
  Media(
      imageUrl: "https://s8.uupload.ir/files/11_boeb.jpg",
      name: "The Marvelous Mrs Maisel",
      value: 0.2,
      year: 2019),
];
List<Media> topRatedList = [
  Media(
      imageUrl: "https://s8.uupload.ir/files/22_ta8g.jpg",
      name: "Avatar 2 Ways of Water",
      year: 2015),
  Media(imageUrl: "https://s8.uupload.ir/files/25_jyvw.jpg", name: "DeadPool", year: 2015),
  Media(imageUrl: "https://s8.uupload.ir/files/19_p5yt.jpg", name: "Titanic", year: 2015),
  Media(imageUrl: "https://s8.uupload.ir/files/27_tbzy.jpg", name: "Atomic Blonde", year: 2015),
  Media(imageUrl: "https://s8.uupload.ir/files/20_ug0v.jpg", name: "Blonde", year: 2019),
  Media(
      imageUrl: "https://s8.uupload.ir/files/21_c96.jpg",
      name: "The Avengers End Game",
      year: 2015),
  Media(imageUrl: "https://s8.uupload.ir/files/23_38sh.jpg", name: "Hangover", year: 2015),
  Media(imageUrl: "https://s8.uupload.ir/files/24_4dvg.jpg", name: "Iron Man 3", year: 2015),
  Media(imageUrl: "https://s8.uupload.ir/files/26_dl3o.jpg", name: "Free Guy", year: 2019),
  Media(imageUrl: "https://s8.uupload.ir/files/28_hfzz.jpg", name: "Extraction", year: 2015),
];
List<Media> trailerList = [
  Media(
      view: 1.2,
      imageUrl: "https://s8.uupload.ir/files/29_ldek.jpg",
      name: "John Wick 4",
      year: 1),
  Media(view: 26, imageUrl: "https://s8.uupload.ir/files/30_1vlx.jpg", name: "Fast X", year: 15),
  Media(view: 11, imageUrl: "https://s8.uupload.ir/files/31_wpn9.jpg", name: "Creed |||", year: 5),
  Media(
      view: 8, imageUrl: "https://s8.uupload.ir/files/9_571i.jpg", name: "Breaking Bad", year: 2),
];
final List<String> shamelessList = [
  "https://s8.uupload.ir/files/34_0z6l.jpg",
  "https://s8.uupload.ir/files/35_9cbb.jpg",
'https://s8.uupload.ir/files/36_he73.jpg',
'https://s8.uupload.ir/files/37_e9wf.jpg',
'https://s8.uupload.ir/files/38_2y80.jpg',
'https://s8.uupload.ir/files/39_k69p.jpg'
];
final List<String> maiselList = [
'https://s8.uupload.ir/files/40_v3yq.jpg',
'https://s8.uupload.ir/files/41_eec9.jpg',
'https://s8.uupload.ir/files/42_ocjm.jpg',
'https://s8.uupload.ir/files/43_vcv0.jpg',
'https://s8.uupload.ir/files/44_636.jpg',
'https://s8.uupload.ir/files/45_ldf4.jpg'

];
