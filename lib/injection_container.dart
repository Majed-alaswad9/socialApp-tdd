import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_app_tdd/features/auth/domain/usecases/pick_profile_image_usecase.dart';
import 'package:social_app_tdd/features/posts/data/datasource/posts_local_datasource.dart';
import 'package:social_app_tdd/features/posts/data/datasource/posts_remote_datasource.dart';
import 'package:social_app_tdd/features/posts/data/repository/posts_repository_implment.dart';
import 'package:social_app_tdd/features/posts/domain/usecases/add_post_usecase.dart';
import 'package:social_app_tdd/features/posts/domain/usecases/delete_post_usecase.dart';
import 'package:social_app_tdd/features/posts/domain/usecases/edit_post_usecase.dart';
import 'package:social_app_tdd/features/posts/domain/usecases/get_post_usecase.dart';
import 'package:social_app_tdd/features/posts/domain/usecases/get_user_info_usecase.dart';
import 'package:social_app_tdd/features/posts/domain/usecases/pick_image_usecase.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/add_delete_edit_post_bloc/add_edit_delete_post_bloc.dart';

import 'core/network_info.dart';
import 'features/auth/data/datasources/auth_local_datasources.dart';
import 'features/auth/data/datasources/auth_remote_datasource.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/domain/usecases/login_usecase.dart';
import 'features/auth/domain/usecases/signup_usecase.dart';
import 'features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'features/posts/domain/repository/posts_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! features

  //*Bloc

  sl.registerFactory(() => AuthBloc(
      signupUseCase: sl(), loginUseCase: sl(), pickProfileImageUseCase: sl()));
  sl.registerFactory(() => AddDeleteEditPostBloc(
      pickImageUseCase: sl(),
      getUserInfoUseCase: sl(),
      addPostUseCase: sl(),
      deletePostUseCase: sl(),
      editPostUseCase: sl()));

  //* UseCases

  // Auth UseCase
  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton(() => SignupUseCase(sl()));
  sl.registerLazySingleton(() => PickProfileImageUseCase(sl()));

  //Posts UseCase
  sl.registerLazySingleton(() => GetAllPostsUseCase(sl()));
  sl.registerLazySingleton(() => AddPostUseCase(sl()));
  sl.registerLazySingleton(() => EditPostUseCase(sl()));
  sl.registerLazySingleton(() => DeletePostUseCase(sl()));
  sl.registerLazySingleton(() => PickImageUseCase(sl()));
  sl.registerLazySingleton(() => GetUserInfoUseCase(sl()));

  //*Repositories

  // Auth Repository
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
      authRemoteDataSource: sl(),
      authLocalDataSource: sl(),
      networkInfo: sl()));

  //Posts Repository
  sl.registerLazySingleton<PostRepository>(
      () => PostsRepositoryImpl(sl(), sl(), sl()));

  //*Datasources

  //Auth DataSource
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl());
  sl.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(sl()));

  //PostsDataSource
  sl.registerLazySingleton<PostsLocalDataSource>(
      () => PostsLocalDataSourceImpl(sl()));
  sl.registerLazySingleton<PostRemoteDataSource>(
      () => PostRemoteDataSourceImpl());
  //*core

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //*External

  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
