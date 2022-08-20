import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/home/data/models/post_dto/post.dart';

part 'rest_client.g.dart';

@RestApi()
@injectable
abstract class RestClient {
  @factoryMethod
  factory RestClient(Dio dio) = _RestClient;

  // /// Создание рассылки
  @POST('newsletter')
  Future<Post> create(
    @Body() Post messageDtoModel,
  );

  // /// Получение списка рассылок
  // @GET('newsletter')
  // Future<List<NewslettersListDto>> getNewsletters();

  // /// Получение конкретной рассылки
  // @GET('newsletter/{id}')
  // Future<NewsletterDto> getNewsletter(@Path("id") String id);

  // /// Обновление конкретной рассылки
  // @PATCH('newsletter/{id}')
  // Future<NewsletterDto> updateNewsletter(
  //   @Path() String id,
  //   @Body() NewsletterDto messageDtoModel,
  // );
}
