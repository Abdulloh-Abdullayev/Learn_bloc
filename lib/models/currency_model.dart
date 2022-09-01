class Currency {
  Currency({
    required this.title,
    required this.code,
    required this.cbPrice,
    required this.nbuBuyPrice,
    required this.nbuCellPrice,
  });

  String title;
  String code;
  String cbPrice;
  String nbuBuyPrice;
  String nbuCellPrice;


  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    title: json["title"],
    code: json["code"],
    cbPrice: json["cb_price"],
    nbuBuyPrice: json["nbu_buy_price"],
    nbuCellPrice: json["nbu_cell_price"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "code": code,
    "cb_price": cbPrice,
    "nbu_buy_price": nbuBuyPrice,
    "nbu_cell_price": nbuCellPrice,
  };
}

