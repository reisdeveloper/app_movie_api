class ErrosConst {
  static final ErrosConst _singleton = ErrosConst._internal();

  factory ErrosConst() {
    return _singleton;
  }

  ErrosConst._internal();

  static const apidefaulterror =
      "Algo deu errado. Por Favor, tente novamente mais tarde";
}
