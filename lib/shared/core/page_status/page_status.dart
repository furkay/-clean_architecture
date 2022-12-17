/// [PageStatus] is manages the state of a page.
enum PageStatus {
  /// [loading] is the state of the page when it is loading.
  loading,

  /// [loaded] is the state of a page when it is loaded successfully.
  loaded,

  /// [error] is the state of the page when an error occurs.
  error,

  /// [empty] is used when the page is empty.
  empty,

  /// [initial] is the initial state of a page.
  initial,
}
