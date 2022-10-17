import 'package:mobx/mobx.dart';
import 'package:number_arrange/config/config.dart';
part 'home_page_store.g.dart';

class HomePageStore = _HomePageStore with _$HomePageStore;

abstract class _HomePageStore with Store {
  @observable
  String? employeeID;

  @observable
  ObservableList<String> employeeIDs = ObservableList<String>();
  @observable
  ObservableList<String> arrangedEmployeeIDs = ObservableList<String>();
  @computed
  bool get isAddEmployeeButtonEnabled =>
      employeeID != null && employeeID!.isNotEmpty && RegExp(AppRegExp.isValidEmployeeID).hasMatch(employeeID!);
  @computed
  bool get isArrangeNumbersButtonEnabled => employeeIDs.length >= 2;
  @action
  void employeeIDOnChanged(String value) => employeeID = value;
  @action
  String? employeeIdentificatorValidator() {
    if (employeeID != null && employeeID!.isNotEmpty) {
      if (!RegExp(AppRegExp.isValidEmployeeID).hasMatch(employeeID ?? '')) {
        return "Format not respected";
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  @action
  void addEmployeeId({required String employeeID}) => employeeIDs.add(employeeID.toUpperCase());

  @action
  void arrangeEmployeeIDs() {
    arrangedEmployeeIDs = employeeIDs;
    arrangedEmployeeIDs.sort(
      (a, b) => a[0].toString().compareTo(
            b[0].toString(),
          ),
    );
    for (int i = 1; i < arrangedEmployeeIDs.length; i++) {
      int currentItemFirstLetterAscii = arrangedEmployeeIDs[i].codeUnitAt(0);
      int itemFirstLetterCodeAsciiToCompareWith = arrangedEmployeeIDs[i - 1].codeUnitAt(0);
      if (itemFirstLetterCodeAsciiToCompareWith == currentItemFirstLetterAscii) {
        employeesListWithSameFirstLetterCodeAscii.addAll([arrangedEmployeeIDs[i - 1], arrangedEmployeeIDs[i]]);
        arrangeEmployeeIDsByLastLetter();
        arrangedEmployeeIDs.removeAt(i);
        arrangedEmployeeIDs.removeAt(i - 1);
        arrangedEmployeeIDs.insertAll(i - 1, employeesListWithSameFirstLetterCodeAscii);
        employeesListWithSameFirstLetterCodeAscii.clear();

        continue;
      }
    }
  }

  List<String> employeesListWithSameFirstLetterCodeAscii = <String>[];
  void arrangeEmployeeIDsByLastLetter() {
    if (employeesListWithSameFirstLetterCodeAscii.length > 1) {
      for (int i = 1; i < employeesListWithSameFirstLetterCodeAscii.length; i++) {
        int currentItemLastLetterAscii = employeesListWithSameFirstLetterCodeAscii[i]
            .codeUnitAt(employeesListWithSameFirstLetterCodeAscii[i].length - 1);
        int itemLastLetterCodeAsciiToCompareWith = employeesListWithSameFirstLetterCodeAscii[i - 1]
            .codeUnitAt(employeesListWithSameFirstLetterCodeAscii[i - 1].length - 1);
        if (itemLastLetterCodeAsciiToCompareWith == currentItemLastLetterAscii) {
          employeesListWithSameFirstAndLastLetterCodeAscii
              .addAll([employeesListWithSameFirstLetterCodeAscii[i - 1], employeesListWithSameFirstLetterCodeAscii[i]]);
          arrangeEmployeeIDsByNumerics();
          employeesListWithSameFirstLetterCodeAscii.removeAt(i);
          employeesListWithSameFirstLetterCodeAscii.removeAt(i - 1);
          employeesListWithSameFirstLetterCodeAscii.insertAll(i - 1, employeesListWithSameFirstAndLastLetterCodeAscii);
          employeesListWithSameFirstAndLastLetterCodeAscii.clear();
        } else {
          employeesListWithSameFirstLetterCodeAscii.sort(
            (a, b) => a[a.length - 1].compareTo(
              b[b.length - 1],
            ),
          );
        }
      }
    }
  }

  List<String> employeesListWithSameFirstAndLastLetterCodeAscii = <String>[];
  void arrangeEmployeeIDsByNumerics() {
    employeesListWithSameFirstAndLastLetterCodeAscii
        .sort((a, b) => a.substring(1, a.length - 1).compareTo(b.substring(1, b.length - 1)));
  }
}
