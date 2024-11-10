import 'package:flutter/material.dart';
import 'package:find_your_fits_mobile/widgets/left_drawer.dart';

// Untuk dropdown menu
const List<String> listKondisi = <String>['Baru', 'Bekas'];

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});


  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _namaProduk = "";
  int _hargaProduk = 0;
  int _stokProduk = 0;
  String _kondisiProduk = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tambah Produk Baru',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Field Nama Produk
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: const Icon(Icons.shopping_cart_rounded),
                    iconColor: Colors.cyan.shade600,
                    hintText: "Masukkan nama produk",
                    hintStyle: TextStyle(color: Colors.cyan.shade100),
                    labelText: "Nama Produk",
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.cyan
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.cyan.shade400, width: 2)
                    ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.cyan, width: 3)
                      )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _namaProduk = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty || value.trim().isEmpty) {
                      return "Nama produk tidak boleh kosong!";
                    }
                    if (value.length > 100) {
                      return "Nama produk tidak boleh lebih dari 100 karakter!";
                    }
                    return null;
                  },
                ),
              ),
              // Field harga produk
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: const Icon(Icons.attach_money),
                    iconColor: Colors.cyan.shade600,
                    hintText: "Masukkan harga produk (Rp)",
                    hintStyle: TextStyle(color: Colors.cyan.shade100),
                    labelText: "Harga Produk (Rp)",
                    labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.cyan
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.cyan.shade400, width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.cyan, width: 3)
                      )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _hargaProduk = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Harga produk tidak boleh kosong!";
                    }
                    final harga = int.tryParse(value);
                    if (harga == null) {
                      return "Harga produk harus berupa angka!";
                    }
                    if (harga <= 0) {
                      return "Harga produk harus lebih dari 0!";
                    }
                    if (harga > 100000000) {
                      return "Harga produk tidak boleh lebih dari Rp 100.000.000!";
                    }
                    return null;
                  },
                ),
              ),
              // Stok produk
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      icon: const Icon(Icons.warehouse),
                      iconColor: Colors.cyan.shade600,
                      hintText: "Masukkan stok produk (pcs)",
                      hintStyle: TextStyle(color: Colors.cyan.shade100),
                      labelText: "Stok Produk (pcs)",
                      labelStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.cyan
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.cyan.shade400, width: 2)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.cyan, width: 3)
                      )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _hargaProduk = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Stok produk tidak boleh kosong!";
                    }
                    final harga = int.tryParse(value);
                    if (harga == null) {
                      return "Stok produk harus berupa angka!";
                    }
                    if (harga <= 0) {
                      return "Stok produk harus lebih dari 0!";
                    }
                    if (harga > 999999) {
                      return "Stok produk tidak boleh lebih 999999";
                    }
                    return null;
                  },
                ),
              ),
              // Field kondisi produk
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                  items: listKondisi.map((String items) {
                    return DropdownMenuItem<String>(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                      icon: const Icon(Icons.inventory_2),
                      iconColor: Colors.cyan.shade600,
                      hintText: "Pilih kondisi produk",
                      hintStyle: TextStyle(color: Colors.cyan.shade100),
                      labelText: "Kondisi Produk",
                      labelStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.cyan
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.cyan.shade400, width: 2)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.cyan, width: 3)
                      )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _kondisiProduk = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null) {
                      return "Pilih kondisi produk.";
                      }
                    return null;
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          Colors.cyan),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Produk berhasil tersimpan'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama Produk: $_namaProduk'),
                                    Text('Harga Produk: $_hargaProduk'),
                                    Text('Stok Produk: $_stokProduk'),
                                    Text('Kondisi Produk: $_kondisiProduk'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _formKey.currentState!.reset();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text(
                      "Tambah Produk",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}