enum HttpMethod {
  GET,
  POST,
  PUT,
  DELETE,
  PATCH,
  HEAD,
  OPTIONS,
  TRACE,
  CONNECT;

  @override
  String toString() {
    switch (this) {
      case HttpMethod.GET:
        return 'GET';
      case HttpMethod.POST:
        return 'POST';
      case HttpMethod.PUT:
        return 'PUT';
      case HttpMethod.DELETE:
        return 'DELETE';
      case HttpMethod.PATCH:
        return 'PATCH';
      case HttpMethod.HEAD:
        return 'HEAD';
      case HttpMethod.OPTIONS:
        return 'OPTIONS';
      case HttpMethod.TRACE:
        return 'TRACE';
      case HttpMethod.CONNECT:
        return 'CONNECT';
      default:
        return '';
    }
  }
}
