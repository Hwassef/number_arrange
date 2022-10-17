import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:number_arrange/config/config.dart';
import 'package:number_arrange/core/features/arrange_number/presentation/store/home_page_store.dart';
import 'package:number_arrange/core/widgets/input_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final HomePageStore homePageStore = HomePageStore();
final TextEditingController controller = TextEditingController();
final FocusNode focusNode = FocusNode();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: AppPaddings.horizontalRegularPaddingValue,
          child: Column(
            children: [
              InputTextField(
                onChanged: (value) => homePageStore.employeeIDOnChanged(value),
                validator: (value) => homePageStore.employeeIdentificatorValidator(),
                hintText: 'Employee ID',
                labelText: 'Employee ID',
                focusNode: focusNode,
                controller: controller,
              ),
              Padding(
                padding: AppPaddings.largePadding,
                child: Observer(
                  builder: (_) => ElevatedButton(
                    onPressed: homePageStore.isAddEmployeeButtonEnabled
                        ? () => homePageStore.addEmployeeId(employeeID: homePageStore.employeeID ?? '')
                        : null,
                    child: const Text("Add"),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: Row(
                  children: [
                    Expanded(
                      child: Observer(
                        builder: (_) => ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            itemCount: homePageStore.employeeIDs.length,
                            shrinkWrap: true,
                            separatorBuilder: (context, index) => const Divider(),
                            itemBuilder: (context, index) {
                              String currentEmployeeID = homePageStore.employeeIDs[index];
                              return Text(currentEmployeeID);
                            }),
                      ),
                    ),
                    Expanded(
                      child: Observer(
                        builder: (_) => ListView.separated(
                          itemCount: homePageStore.arrangedEmployeeIDs.length,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          separatorBuilder: (context, index) => const Divider(),
                          itemBuilder: (context, index) {
                            String currentEmployeeID = homePageStore.arrangedEmployeeIDs[index];
                            return Text(currentEmployeeID);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Observer(
                builder: (_) => ElevatedButton(
                  onPressed:
                      homePageStore.isArrangeNumbersButtonEnabled ? () => homePageStore.arrangeEmployeeIDs() : null,
                  child: const Text("Arrange Numbers"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
