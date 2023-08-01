import 'dart:math';

import 'package:infinite_scroll/common/constants.dart';
import 'package:infinite_scroll/features/post/domain/models/post.dart';
import 'package:infinite_scroll/features/post/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> getPosts(int pageIndex, int pageSize) async {
    List<String> names = [
      'Nguyễn Hồng Hiệp',
      'Văn Thị Mỹ Duyên',
      'Đinh Ngọc Huyền',
      'Lê Gia Trung Đạt',
      'Vũ Văn Linh',
      'Phạm Quốc Khánh',
      'Phạm Xuân Khánh',
      'Tống Ngọc Trâm Anh',
      'Lưu Đại Nhân',
      'Nguyễn Linh Nhi',
      'Nguyễn Ngọc Ánh',
      'Đặng Trần Ngọc Bích',
      'Trần Anh Tuấn',
      'Phan Anh Tú',
      'Trần Thị Mến',
    ];

    List<String> avatars = [
      'https://i.pinimg.com/736x/4d/47/59/4d4759f61e13927c5f5b39a4cc66af70.jpg',
      'https://i.pinimg.com/736x/59/18/d8/5918d8e9040516b65f93c75a9c5b8175.jpg',
      'https://inkythuatso.com/uploads/images/2022/03/hinh-anh-avatar-dep-cho-con-gai-dai-dien-30-14-15-58.jpg',
      'https://demoda.vn/wp-content/uploads/2022/02/avatar-anime-cute.jpg',
      'https://avatarfiles.alphacoders.com/715/71560.jpg',
      'https://i.pinimg.com/736x/f5/ce/d8/f5ced818dded39c70976051cd4533ef4.jpg',
      'https://i.pinimg.com/474x/41/4c/e7/414ce7a54d8952c6475a740444e427a7.jpg',
      'https://thypix.com/wp-content/uploads/2021/10/anime-avatar-profile-picture-thypix-62-700x700.jpg',
      'https://i.pinimg.com/736x/26/e5/e0/26e5e02218aa21654bb17829cd5c7229.jpg',
      'https://thypix.com/wp-content/uploads/2021/10/anime-avatar-profile-picture-thypix-78-700x700.jpg',
      'https://topgaixinh.net/wp-content/uploads/2023/02/avatar-anime-cute-1.jpg',
      'https://chungcuthongnhatcomplex.com/wp-content/uploads/2022/10/avatar-cute-meo-21.jpg',
      'https://catscanman.net/wp-content/uploads/2021/09/anh-meo-cute-de-thuong-34.jpg',
      'https://img.meta.com.vn/Data/image/2021/09/20/anh-meo-che-anh-meo-bua-22.jpg',
    ];

    List<String> contents = [
      'Xin chào cả nhà! Hôm nay trời nắng óng ánh, gió thổi mát lành, cảm giác '
          'thật tuyệt! Còn bạn thì sao? Đã ổn chưa? Nếu chưa thì đừng lo, hãy '
          'nắm lấy tôi, tôi là chỗ dựa vững chắc cho bạn!',
      'OMG, hôm nay tôi như một cục băng lạnh lẽo! Thời tiết như này, ai mà '
          'không muốn trở thành người sở hữu nguồn nhiệt độ di động di động '
          'nhỉ? Ai dè, tôi đã gặp một chiếc áo khoác cực kỳ "thần kỳ" - không '
          'những ấm áp, mà còn gây tiếng cười cho mọi người khi tôi nhấp nháy'
          ' nháy như một cây thông giáng sinh di động!',
      'Hôm nay tôi đang trong trạng thái cảm xúc "chơi ngu" vô đối! Nhìn bản '
          'thân đi ngang qua gương, tôi không khỏi tự hỏi: "Em có phải là '
          'Taylor Swift không? Chẳng lẽ đêm qua em đã hóa thân thành siêu sao '
          'nhạc pop mà không biết sao?"',
      'Này, tôi mới đánh giá một bộ phim kinh dị vừa xem và giờ đang cắn môi '
          'không ngừng. Thật sự, tôi đã làm cho xem phim thành một cuộc thi ăn '
          'bánh quy siêu tốc để tự xua tan cảm giác sợ hãi. Ai bảo không sợ '
          'chết đến thế?',
      'Hôm nay, tôi quyết định trải nghiệm môn yoga đỉnh cao. Lưng tròn, chân '
          'gập, mắt chống chọi với trời đất. Nhưng thật là trớ trêu, cuối cùng'
          ' tôi chỉ trở thành một món đồ nội thất có khả năng "gập người" '
          'vượt trội!',
      'Tôi mới ngồi xuống để viết bài review về nhà hàng mới khai trương. Cơm '
          'ngon, nước lẩu ngon, thậm chí thức ăn nhưng không thể so sánh với '
          'tình huống khi bạn muốn chụp một tấm hình hoàn hảo, nhưng chiếc điện'
          ' thoại lại "nhả hình" như không kìm nổi cười!',
      'Xôi lòng với thời tiết hôm nay! Nắng mà nóng cháy luôn cả đầu óc. Mình'
          ' định ra ngoài lướt gió, ai dè hóa thanh xà phòng trong tích tắc. '
          'Thôi thì nhảy nhót tại phòng máy lạnh cũng được, đỡ phải thành '
          '"gà nướng" đấy!',
      'Review phim "Điên Cuồng Đảo Hoang": Cười xỉu với những tình huống '
          '"điên đảo" của các nhân vật. Đừng nói chuyện với tôi, vì tôi vẫn '
          'đang cười đau bụng sau khi xem xong! Nên xem đi, đảm bảo xem '
          'lại nhiều lần!',
      'Hôm nay, quyết định học một ngôn ngữ mới, nhưng khi nghe người giảng dạy'
          ' phát âm mấy từ đầu tiên, lòng mình "lắc lư" như bình đun nước! Thôi'
          ' thì cứ học "sà sạt", tạo tiếng cười cho mọi người vui vẻ!',
      'Tham gia buổi hội thảo về phát triển bản thân, tôi cảm giác mình như '
          '"võ sĩ võ đường" mà không biết nên "hít thở" như thế nào!',
    ];

    List<Post> posts = [];

    for (int i = 0; i < AppConstants.postCount; ++i) {
      String name = names[Random().nextInt(names.length)];
      String content = contents[Random().nextInt(contents.length)];
      String avatar = avatars[Random().nextInt(avatars.length)];
      DateTime time = generateRandomDateTimeInThePast();
      posts.add(Post(
          id: i + 1,
          authorName: name,
          authorAvatar: avatar,
          postedAt: time,
          content: content));
    }

    int start = pageIndex * pageSize;
    if (start >= posts.length) {
      return [];
    }
    int end = start + pageSize;
    if (end > posts.length) {
      end = posts.length;
    }

    // Internet delay simulate
    await Future.delayed(const Duration(seconds: 1));

    return posts.sublist(start, end);
  }

  DateTime generateRandomDateTimeInThePast() {
    DateTime now = DateTime.now();

    int days = Random().nextInt(100);
    int minutes = Random().nextInt(3600);

    return now.subtract(Duration(days: days, minutes: minutes));
  }
}
