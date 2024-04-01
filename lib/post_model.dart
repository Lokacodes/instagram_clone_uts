class Post {
  final String username;
  final String profileImg;
  final String postImg;
  final int commentsAmount;
  final int viewsAmount;
  final String liker;
  final int otherLikers;

  Post({
    required this.username,
    required this.profileImg,
    required this.postImg,
    required this.commentsAmount,
    required this.viewsAmount,
    required this.liker,
    required this.otherLikers,
  });
}

var posts = [
  Post(
    username: 'ismu_224',
    profileImg: 'images/loka1.JPG',
    postImg: 'images/loka3.jpg',
    commentsAmount: 5,
    viewsAmount: 50,
    liker: 'kang haerin',
    otherLikers: 200,
  ),
  Post(
    username: 'tall_0k4',
    profileImg: 'images/loka1.JPG',
    postImg: 'images/loka3.jpg',
    commentsAmount: 10,
    viewsAmount: 100,
    liker: 'hanni',
    otherLikers: 300,
  ),
  Post(
    username: 'kang haerin',
    profileImg: 'images/haerin1.jpg',
    postImg: 'images/loka2.JPG',
    commentsAmount: 10,
    viewsAmount: 2040,
    liker: 'hyein_123',
    otherLikers: 300,
  ),
  Post(
    username: 'buk_tin',
    profileImg: 'images/ibuk.jpg',
    postImg: 'images/loka1.JPG',
    commentsAmount: 10,
    viewsAmount: 9999,
    liker: 'danielle',
    otherLikers: 1234,
  ),
  // Add more posts as needed
];
