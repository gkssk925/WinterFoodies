class LoginUseCase {
  LoginUseCase();

  Future<bool> call() async {
    return true;
  }

  // Future<Map<String, String>> call() async {
  //   AutoLoginApiRepository repository =
  //       serviceLocator<AutoLoginApiRepository>();

  //   final result = await repository.fetch();
  //   return result;
  // }
}
