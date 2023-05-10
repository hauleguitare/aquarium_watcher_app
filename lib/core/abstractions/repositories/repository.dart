abstract class Repository<TEntity>{

  List<TEntity> getAll(Map<String, dynamic> queryParameters);
}