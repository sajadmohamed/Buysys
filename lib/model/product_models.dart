class Product {
  final String name ;
  final double price;
  final String imageUrl;

  const Product ({
    required this.name,
    required this.price,
    required this.imageUrl
});
  static  List<Product> products =[
    Product(
        name: "Apple",
        price: 1.99,
        imageUrl: "https://thumbs.dreamstime.com/b/red-apple-isolated-clipping-path-19130134.jpg"
    ),
    Product(
        name: "orange",
        price: 1.50,
        imageUrl: "https://media.istockphoto.com/id/185284489/photo/orange.jpg?s=612x612&w=0&k=20&c=m4EXknC74i2aYWCbjxbzZ6EtRaJkdSJNtekh4m1PspE="
    ),
    Product(
        name: "lemon",
        price: 0.99,
        imageUrl: "https://media.istockphoto.com/id/1406047398/photo/lemon-with-leaf-isolated-on-white-background.webp?b=1&s=170667a&w=0&k=20&c=zszKjT13Ros7Yt_8Ofv2eJdWTYB-DpuCPr8cvWAIgGs="
    ),
  ];


}