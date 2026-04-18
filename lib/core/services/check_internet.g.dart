// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_internet.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(checkInternet)
const checkInternetProvider = CheckInternetProvider._();

final class CheckInternetProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  const CheckInternetProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkInternetProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkInternetHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return checkInternet(ref);
  }
}

String _$checkInternetHash() => r'52309581918839cfc2cc336f612381edc9a2d495';
