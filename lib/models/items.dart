class Items {
  String id;
  String name;
  String desc;
  num price;
  String color;
  String image;

  Items({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
  });
}

class Product {
  static final items = [
    Items(
      id: "1",
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
    )
  ];
}
