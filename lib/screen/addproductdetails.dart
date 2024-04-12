import 'dart:typed_data';

import 'package:farm_linker/resources/add_data.dart';
import 'package:farm_linker/screen/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProductDetails extends StatefulWidget {
  const AddProductDetails({super.key});

  @override
  State<AddProductDetails> createState() => _AddProductDetailsState();
}

class _AddProductDetailsState extends State<AddProductDetails> {
  Uint8List? _image;

  // final TextEditingController nameController = TextEditingController();
  // final TextEditingController bioController = TextEditingController();

  final TextEditingController nameEditingController = TextEditingController();
  final TextEditingController quantityEditingController =
      TextEditingController();
  final TextEditingController priceEditingController = TextEditingController();
  final TextEditingController descriptionEditingController =
      TextEditingController();

  void selectImage() async {
    List<int> img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img as Uint8List?;
    });
  }

  void saveProduct() async {
    String name = nameEditingController.text;
    String quantity = quantityEditingController.text;
    String price = priceEditingController.text;
    String description = descriptionEditingController.text;

    // ignore: unused_local_variable
    String resp = await StoreData().saveData(
        name: name,
        quantity: quantity,
        price: price,
        description: description,
        file: _image!);

    nameEditingController.clear();
    quantityEditingController.clear();
    // _numberEditingController.clear();
    priceEditingController.clear();
    descriptionEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: const [
          //     Text(
          //       "PRODUCT ",
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 20,
          //         fontWeight: FontWeight.w700,
          //       ),
          //     ),
          //     Text(
          //       "DETAILS",
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 20,
          //         fontWeight: FontWeight.w700,
          //       ),
          //     ),
          //   ],
          // ),
          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PRODUCT ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "DETAILS",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: nameEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Product Name',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                // TextField(
                //   controller: _nameEditingController,
                //   decoration: InputDecoration(
                //     labelText: 'Name',
                //   ),
                // ),
                const SizedBox(height: 20.0),
                Container(
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: quantityEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Product Quantity',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                // TextField(
                //   controller: _quantityEditingController,
                //   decoration: InputDecoration(
                //     labelText: 'Age',
                //   ),
                // ),
                const SizedBox(height: 20.0),
                Container(
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: priceEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Product Price',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                // TextField(
                //   controller: _priceEditingController,
                //   decoration: InputDecoration(
                //     labelText: 'location',
                //   ),
                // ),
                const SizedBox(height: 20.0),
                Container(
                  height: 125,
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: descriptionEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Product Description',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                // TextField(
                //   controller: _descriptionEditingController,
                //   decoration: InputDecoration(
                //     hintText: 'Description',
                //     contentPadding: EdgeInsets.all(10.0),
                //     border: InputBorder.none,
                //   ),
                // ),
                const SizedBox(height: 25.0),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[50],
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          top: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Add Images",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          _image != null
                              ? CircleAvatar(
                                  radius: 64,
                                  backgroundImage: MemoryImage(_image!),
                                )
                              : const CircleAvatar(
                                  radius: 64,
                                  backgroundImage: NetworkImage(
                                      'https://banner2.cleanpng.com/20240323/ogb/transparent-iphone-camera-white-iphone-camera-on-flat-surface65fee27494bcf1.70391006.webp'),
                                ),
                          Positioned(
                            bottom: -10,
                            left: 80,
                            child: IconButton(
                              onPressed: selectImage,
                              icon: const Icon(Icons.add_a_photo),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[400],
                    ),
                    onPressed: saveProduct,
                    child: const Text(
                      'Add Product Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
