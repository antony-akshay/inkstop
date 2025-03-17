// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:inkstop/application/newbloc_bloc/newdoc_bloc.dart' as _i339;
import 'package:inkstop/domain/history/I_history_facade.dart' as _i295;
import 'package:inkstop/domain/newdoc/I_newdoc_facade.dart' as _i700;
import 'package:inkstop/infrastructure/history/history_api.dart' as _i379;
import 'package:inkstop/infrastructure/newdoc/newdoc_api.dart' as _i166;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i339.NewdocBloc>(() => _i339.NewdocBloc());
    gh.lazySingleton<_i700.INewdocFacade>(() => _i166.CreateNewDoc());
    gh.lazySingleton<_i295.IHistoryFacade>(() => _i379.HistoryApi());
    return this;
  }
}
