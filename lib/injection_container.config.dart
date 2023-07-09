// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import 'core/network_info.dart' as _i8;
import 'features/auth/data/datasources/auth_local_datasources.dart' as _i3;
import 'features/auth/data/datasources/auth_remote_datasource.dart' as _i5;
import 'features/auth/data/repositories/auth_repository_implement.dart' as _i7;
import 'features/auth/domain/repositories/auth_repository.dart' as _i6;
import 'features/auth/domain/usecases/login_usecase.dart' as _i10;
import 'features/auth/domain/usecases/signup_usecase.dart' as _i13;
import 'features/auth/presentation/bloc/bloc/auth_bloc.dart' as _i14;
import 'features/posts/data/datasource/posts_local_datasource.dart' as _i12;
import 'features/posts/data/datasource/posts_remote_datasource.dart' as _i11;
import 'features/posts/data/repository/posts_repository_implement.dart' as _i16;
import 'features/posts/domain/repository/posts_repository.dart' as _i15;
import 'features/posts/domain/usecases/add_like_usecase.dart' as _i17;
import 'features/posts/domain/usecases/add_post_usecase.dart' as _i18;
import 'features/posts/domain/usecases/delete_like_usecase.dart' as _i19;
import 'features/posts/domain/usecases/delete_post_usecase.dart' as _i20;
import 'features/posts/domain/usecases/edit_post_usecase.dart' as _i21;
import 'features/posts/domain/usecases/get_likes_usecase.dart' as _i23;
import 'features/posts/domain/usecases/get_post_usecase.dart' as _i22;
import 'features/posts/domain/usecases/get_user_info_usecase.dart' as _i24;
import 'features/posts/presentation/bloc/add_delete_edit_post_bloc/add_edit_delete_post_bloc.dart'
    as _i26;
import 'features/posts/presentation/bloc/posts_bloc/posts_bloc.dart' as _i25;
import 'injection_container.dart' as _i27;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AuthLocalDataSource>(
        () => _i3.AuthLocalDataSourceImpl(gh<_i4.SharedPreferences>()));
    gh.factory<_i5.AuthRemoteDataSource>(() => _i5.AuthRemoteDataSourceImpl());
    gh.factory<_i6.AuthRepository>(() => _i7.AuthRepositoryImplement(
          authRemoteDataSource: gh<_i5.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i3.AuthLocalDataSource>(),
          networkInfo: gh<_i8.NetworkInfo>(),
        ));
    gh.factory<_i9.InternetConnectionChecker>(() => registerModule.internet);
    gh.factory<_i10.LoginUseCase>(
        () => _i10.LoginUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i11.PostRemoteDataSource>(
        () => _i11.PostRemoteDataSourceImplement());
    gh.factory<_i12.PostsLocalDataSource>(
        () => _i12.PostsLocalDataSourceImplement(gh<_i4.SharedPreferences>()));
    gh.factory<_i13.SignupUseCase>(
        () => _i13.SignupUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(
          gh<_i10.LoginUseCase>(),
          gh<_i13.SignupUseCase>(),
        ));
    gh.factory<_i15.PostRepository>(() => _i16.PostsRepositoryImplement(
          gh<_i11.PostRemoteDataSource>(),
          gh<_i12.PostsLocalDataSource>(),
          gh<_i8.NetworkInfo>(),
        ));
    gh.factory<_i17.AddLikeUseCase>(
        () => _i17.AddLikeUseCase(gh<_i15.PostRepository>()));
    gh.factory<_i18.AddPostUseCase>(
        () => _i18.AddPostUseCase(gh<_i15.PostRepository>()));
    gh.factory<_i19.DeleteLikeUseCase>(
        () => _i19.DeleteLikeUseCase(gh<_i15.PostRepository>()));
    gh.factory<_i20.DeletePostUseCase>(
        () => _i20.DeletePostUseCase(gh<_i15.PostRepository>()));
    gh.factory<_i21.EditPostUseCase>(
        () => _i21.EditPostUseCase(gh<_i15.PostRepository>()));
    gh.factory<_i22.GetAllPostsUseCase>(
        () => _i22.GetAllPostsUseCase(gh<_i15.PostRepository>()));
    gh.factory<_i23.GetLikesUseCase>(
        () => _i23.GetLikesUseCase(gh<_i15.PostRepository>()));
    gh.factory<_i24.GetUserInfoUseCase>(
        () => _i24.GetUserInfoUseCase(gh<_i15.PostRepository>()));
    gh.factory<_i25.PostsBloc>(() => _i25.PostsBloc(
          getUserInfoUseCase: gh<_i24.GetUserInfoUseCase>(),
          getAllPostsUseCase: gh<_i22.GetAllPostsUseCase>(),
          addLikeUseCase: gh<_i17.AddLikeUseCase>(),
          deleteLikeUseCase: gh<_i19.DeleteLikeUseCase>(),
          getLikesUseCase: gh<_i23.GetLikesUseCase>(),
        ));
    gh.factory<_i26.AddDeleteEditPostBloc>(() => _i26.AddDeleteEditPostBloc(
          addPostUseCase: gh<_i18.AddPostUseCase>(),
          deletePostUseCase: gh<_i20.DeletePostUseCase>(),
          editPostUseCase: gh<_i21.EditPostUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i27.RegisterModule {}
