/// Defines various network paths used in the application.
enum ProductNetworkPath {
  /// Path for user-related operations.
  userV1('user'),

  /// Path for version 2 of user-related operations.
  usersV2('v2/users'),

  posts('posts');

  /// Constructs a [ProductNetworkPath] with the given string [value].
  const ProductNetworkPath(this.value);

  /// The string value of the network path.
  final String value;

  /// Appends a query string to the network path.
  /// Example: user/123
  String withQuery(String value) {
    return '${this.value}/$value';
  }
}
