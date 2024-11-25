import 'package:cafeshop/widget/itemWidgets.dart';
import 'package:flutter/material.dart';

class productScreen extends StatefulWidget {
  const productScreen({super.key});

  @override
  State<productScreen> createState() => _productScreenState();
}

class _productScreenState extends State<productScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tab;
  @override
  void initState() {
    _tab = TabController(length: 4, vsync: this, initialIndex: 0);
    _tab.addListener(_handleTab);
    super.initState();
  }

  _handleTab() {
    if (_tab.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tab.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "ດື່ມກາເຟແລ້ວຈະຮູ້ສຶກສົດຊື່ນ ແລະ ສົດໃສ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'ຄົ້ນຫາກາເຟຂອງທ່ານ',
                    prefixIcon: Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.black26,
                    ),
                  ),
                ),
              ),
              TabBar(
                controller: _tab,
                labelColor: Colors.amber.shade700,
                unselectedLabelColor: Colors.white,
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide:
                      BorderSide(width: 2, color: Colors.amber.shade700),
                ),
                labelStyle: TextStyle(fontSize: 16),
                tabs: [
                  Tab(
                    text: 'ກາເຟຮ້ອນ',
                  ),
                  Tab(
                    text: 'ກາເຟເຢັນ',
                  ),
                  Tab(
                    text: 'ຊາ',
                  ),
                  Tab(
                    text: 'ນ້ຳ',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: [
                  itemWidget(),
                  itemWidget(),
                  itemWidget(),
                  itemWidget(),
                ][_tab.index],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
