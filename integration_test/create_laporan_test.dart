import 'package:final_project_2023/app/data/token_adapter.dart';
import 'package:final_project_2023/app/modules/form_page/bindings/form_page_binding.dart';
import 'package:final_project_2023/app/modules/form_page/views/form_page_view.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:final_project_2023/app/modules/form_page/form_page_view.dart'; // Adjust the import based on your project structure
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  testWidgets('Form Page Integration Test', (WidgetTester tester) async {

    await tester.pumpWidget(
      GetMaterialApp(
        initialBinding: FormPageBinding(),
        home: FormPageView(),
      ),
    );

    // Enter valid data in the form
    await tester.enterText(find.byKey(Key('namaField')), 'Sampah');
    await tester.enterText(find.byKey(Key('descField')), 'Sampah Adalah');
    await tester.enterText(find.byKey(Key('lokasiField')), 'Bantul');

    // Tap on the 'Save' button
    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();

    // Add expectations based on the behavior after tapping 'Save'
    expect(find.text('Berhasil'), findsOneWidget);
    expect(find.text('data telah ditambah'), findsOneWidget);
  });
}
