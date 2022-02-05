part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(ThemeMode.light) ThemeMode theme,
  }) = _SettingsState;
}
