import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_apli/user_api/providers/user_provider.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home());
  }
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api trial'),
      ),
      body: data.when(
        data: (data) {
          return data == null
              ? const Text('shit')
              : ListView.builder(
                  itemCount: data != null ? data.length : 0,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        trailing: Column(
                          children: [
                            Text(
                              data![index].id,
                              style: const TextStyle(
                                  color: Colors.green, fontSize: 15),
                            ),
                            Text(
                              data[index].username,
                              style: const TextStyle(
                                  color: Colors.green, fontSize: 15),
                            ),
                            Text(
                              data[index].email,
                              style: const TextStyle(
                                  color: Colors.green, fontSize: 15),
                            ),
                            Text(
                              data[index].website,
                              style: const TextStyle(
                                  color: Colors.green, fontSize: 15),
                            ),
                          ],
                        ),
                        title: Text("List item $index"));
                  },
                );
        },
        error: (err, s) => Text(err.toString()),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
