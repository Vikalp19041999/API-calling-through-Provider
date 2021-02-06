class Book {
  Book({
    this.fontSize,
    this.langage,
    this.productType,
    this.description,
    this.video,
    this.publisher,
    this.name,
    this.pages,
    this.image,
    this.createdOn,
    this.availability,
    this.rent6,
    this.rent12,
    this.updatedOn,
    this.rating,
    this.subCategory,
    this.id,
    this.originalPrice,
    this.rent15,
    this.isbnNumber,
    this.pubDate,
    this.ageGroup,
    this.author,
    this.isActive,
    this.category,
    this.rent1,
    this.rent3,
  });

  String fontSize;
  String langage;
  String productType;
  String description;
  String video;
  String publisher;
  String name;
  String pages;
  String image;
  String createdOn;
  String availability;
  String rent6;
  String rent12;
  String updatedOn;
  String rating;
  String subCategory;
  String id;
  String originalPrice;
  String rent15;
  String isbnNumber;
  String pubDate;
  String ageGroup;
  String author;
  String isActive;
  String category;
  String rent1;
  String rent3;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        fontSize: json["font_size"] == null ? null : json["font_size"],
        langage: json["langage"] == null ? null : json["langage"],
        productType: json["product_type"] == null ? null : json["product_type"],
        description: json["description"] == null ? null : json["description"],
        video: json["video"] == null ? null : json["video"],
        publisher: json["publisher"] == null ? null : json["publisher"],
        name: json["name"] == null ? null : json["name"],
        pages: json["pages"] == null ? null : json["pages"],
        image: json["image"] == null ? null : json["image"],
        createdOn: json["created_on"] == null ? null : json["created_on"],
        availability:
            json["availability"] == null ? null : json["availability"],
        rent6: json["rent_6"] == null ? null : json["rent_6"],
        rent12: json["rent_12"] == null ? null : json["rent_12"],
        updatedOn: json["updated_on"] == null ? null : json["updated_on"],
        rating: json["rating"] == null ? null : json["rating"],
        subCategory: json["sub_category"] == null ? null : json["sub_category"],
        id: json["id"] == null ? null : json["id"],
        originalPrice:
            json["original_price"] == null ? null : json["original_price"],
        rent15: json["rent_15"] == null ? null : json["rent_15"],
        isbnNumber: json["isbn_number"] == null ? null : json["isbn_number"],
        pubDate: json["pub_date"] == null ? null : json["pub_date"],
        ageGroup: json["age_group"] == null ? null : json["age_group"],
        author: json["author"] == null ? null : json["author"],
        isActive: json["is_active"] == null ? null : json["is_active"],
        category: json["category"] == null ? null : json["category"],
        rent1: json["rent_1"] == null ? null : json["rent_1"],
        rent3: json["rent_3"] == null ? null : json["rent_3"],
      );

  Map<String, dynamic> toJson() => {
        "font_size": fontSize == null ? null : fontSize,
        "langage": langage == null ? null : langage,
        "product_type": productType == null ? null : productType,
        "description": description == null ? null : description,
        "video": video == null ? null : video,
        "publisher": publisher == null ? null : publisher,
        "name": name == null ? null : name,
        "pages": pages == null ? null : pages,
        "image": image == null ? null : image,
        "created_on": createdOn == null ? null : createdOn,
        "availability": availability == null ? null : availability,
        "rent_6": rent6 == null ? null : rent6,
        "rent_12": rent12 == null ? null : rent12,
        "updated_on": updatedOn == null ? null : updatedOn,
        "rating": rating == null ? null : rating,
        "sub_category": subCategory == null ? null : subCategory,
        "id": id == null ? null : id,
        "original_price": originalPrice == null ? null : originalPrice,
        "rent_15": rent15 == null ? null : rent15,
        "isbn_number": isbnNumber == null ? null : isbnNumber,
        "pub_date": pubDate == null ? null : pubDate,
        "age_group": ageGroup == null ? null : ageGroup,
        "author": author == null ? null : author,
        "is_active": isActive == null ? null : isActive,
        "category": category == null ? null : category,
        "rent_1": rent1 == null ? null : rent1,
        "rent_3": rent3 == null ? null : rent3,
      };
}
