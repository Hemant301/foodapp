class HomeModal {
  String? response;
  String? result;
  String? responseMsg;
  HomedataModal? homedata;
  HomeModal(js) {
    response = js['ResponseCode'] ?? "";
    response = js['Result'] ?? "";
    response = js['ResponseMsg'] ?? "";
    homedata = HomedataModal(js['HomeData']);
  }
}

class HomedataModal {
  List<BannerModal> banner = [];
  List<CategoryListModal> categorylist = [];
  MainDataModal? maindata;
  String? wallet;
  List<RestuarantdataModal> restuarant_data = [];
  List<RestuarantdataModal> popular_restuarant = [];
  HomedataModal(js) {
    for (var i = 0; i < js['Banner'].length; i++) {
      banner.add(BannerModal(js['Banner'][i]));
    }
    for (var i = 0; i < js['Catlist'].length; i++) {
      categorylist.add(CategoryListModal(js['Catlist'][i]));
    }
    maindata = MainDataModal(js['Main_Data']);
    wallet = js['wallet'] ?? "";
    for (var i = 0; i < js['restuarant_data'].length; i++) {
      restuarant_data.add(RestuarantdataModal(js['restuarant_data'][i]));
    }
    for (var i = 0; i < js['popular_restuarant'].length; i++) {
      popular_restuarant.add(RestuarantdataModal(js['popular_restuarant'][i]));
    }
  }
}

class BannerModal {
  String? img;
  String? id;
  String? rid;
  BannerModal(js) {
    img = js['img'] ?? "";
    id = js['id'] ?? "";
    rid = js['rid'] ?? "";
  }
}

class CategoryListModal {
  String? id;
  String? title;
  String? cat_img;

  CategoryListModal(js) {
    id = js['id'] ?? "";
    title = js['title'] ?? "";
    cat_img = js['cat_img'] ?? "";
  }
}

class MainDataModal {
  String? id;
  String? webname;
  String? weblogo;
  String? timezone;
  String? currency;
  String? wname;
  String? pstore;
  String? pdboy;
  String? one_key;
  String? one_hash;
  String? d_key;
  String? d_hash;
  String? scredit;
  String? rcredit;
  String? is_dmode;
  String? is_tax;
  int? tax;
  String? is_tip;
  String? tip;
  MainDataModal(js) {
    id = js['id'] ?? "";
    webname = js['webname'] ?? "";
    weblogo = js['weblogo'] ?? "";
    timezone = js['timezone'] ?? "";
    currency = js['currency'] ?? "";
    wname = js['wname'] ?? "";
    pstore = js['id'] ?? "";
    pdboy = js['pdboy'] ?? "";
    one_key = js['one_key'] ?? "";
    one_hash = js['one_hash'] ?? "";
    d_key = js['d_key'] ?? "";
    d_hash = js['d_hash'] ?? "";
    scredit = js['scredit'] ?? "";
    rcredit = js['rcredit'] ?? "";
    is_dmode = js['is_dmode'] ?? "";
    is_tax = js['is_tax'] ?? "";
    tax = js['tax'] ?? "";
    is_tip = js['is_tip'] ?? "";
    tip = js['tip'] ?? "";
  }
}

class RestuarantdataModal {
  String? rest_id;
  String? rest_title;
  String? rest_img;
  String? rest_rating;
  String? rest_deliverytime;
  String? rest_costfortwo;
  String? rest_is_veg;
  String? rest_full_address;
  String? rest_charge;
  String? rest_is_open;
  String? cou_title;
  String? cou_subtitle;
  String? rest_dcharge;
  String? rest_morder;
  String? rest_sdesc;
  String? rest_distance;
  int? IS_FAVOURITE;
  RestuarantdataModal(js) {
    rest_id = js['rest_id'] ?? "";
    rest_title = js['rest_title'] ?? "";
    rest_img = js['rest_img'] ?? "";
    rest_rating = js['rest_rating'] ?? "";
    rest_deliverytime = js['rest_deliverytime'] ?? "";
    rest_costfortwo = js['rest_costfortwo'] ?? "";
    rest_is_veg = js['rest_is_veg'] ?? "";
    rest_full_address = js['rest_full_address'] ?? "";
    rest_charge = js['rest_charge'] ?? "";
    rest_is_open = js['rest_is_open'] ?? "";
    cou_title = js['cou_title'] ?? "";
    cou_subtitle = js['cou_subtitle'] ?? "";
    rest_dcharge = js['rest_dcharge'] ?? "";
    rest_morder = js['rest_morder'] ?? "";
    rest_sdesc = js['rest_sdesc'] ?? "";
    rest_distance = js['rest_distance'] ?? "";
    IS_FAVOURITE = js['IS_FAVOURITE'] ?? "";
  }
}

// class PopularrestuarantModal {
//   PopularrestuarantModal(js) {}
// }
