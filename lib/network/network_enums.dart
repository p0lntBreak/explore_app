enum NetworkResponseErrorType {
  socket,
  exception,
  responseEmpty,
  didNotSucced,
}

enum CallBackParameterName { all, articles }

extension CallbackParameterNameExtension on CallBackParameterName {
  dynamic getJson(json) {
    if (json == null) return null;
    switch (this) {
      case CallBackParameterName.all:
        return json;
      case CallBackParameterName.articles:
        return json['articles'];
    }
  }
}
