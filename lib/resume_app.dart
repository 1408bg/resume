import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:resume/theme_notifier.dart';

import 'package:resume/widgets/resume_widget.dart';
import 'package:resume/models/models.dart';

class ResumeApp extends StatefulWidget {
  const ResumeApp({super.key});

  @override
  State<ResumeApp> createState() => _ResumeAppState();
}

class _ResumeAppState extends State<ResumeApp> {
  Resume? _resume;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _next();
  }

  Future<void> _next() async {
    final String content = await rootBundle.loadString('assets/resume.json');
    final jsonData = json.decode(content) as Map<String, dynamic>;
    try {
      setState(() {
        _resume = Resume.fromJson(jsonData);
        _errorMessage = null;
      });
    } on Exception catch (e) {
      setState(() {
        _resume = null;
        _errorMessage = 'Error loading resume: ${e.toString()}';
      });
    }
  }

  // Future<void> _loadResumeFromJson() async {
  //   try {
  //     final result = await FilePicker.platform.pickFiles(
  //       type: FileType.custom,
  //       allowedExtensions: ['json']
  //     );
  //
  //     if (result == null || result.files.isEmpty) return;
  //
  //     final file = result.files.first;
  //     String content = '';
  //     if (kIsWeb) {
  //       content = utf8.decode(file.bytes!);
  //     } else {
  //       content = File(file.xFile.path).readAsStringSync();
  //     }
  //     final jsonData = json.decode(content) as Map<String, dynamic>;
  //
  //     setState(() {
  //       _resume = Resume.fromJson(jsonData);
  //       _errorMessage = null;
  //     });
  //   } on Exception catch (e) {
  //     setState(() {
  //       _resume = null;
  //       _errorMessage = 'Error loading resume: ${e.toString()}';
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = context.read<ThemeNotifier>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Viewer'),
        actions: [
          IconButton(
            onPressed: () => themeNotifier.toggleTheme(),
            icon: Icon(
              themeNotifier.themeMode == Brightness.light
                ? Icons.dark_mode
                : Icons.light_mode
            )
          )
        ]
      ),
      body: _buildBody()
    );
  }

  Widget _buildBody() {
    if (_errorMessage != null) {
      return Center(
        child: Text(
          _errorMessage!,
          style: const TextStyle(color: Colors.red, fontSize: 18)
        )
      );
    }

    if (_resume == null) {
      return Center(child: Text('Loading...'));
      // return Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       const Text(
      //         'Load a resume JSON file',
      //         style: TextStyle(fontSize: 20)
      //       ),
      //       const SizedBox(height: 20),
      //       ElevatedButton.icon(
      //         icon: const Icon(Icons.file_upload),
      //         label: const Text('Select JSON File'),
      //         onPressed: _loadResumeFromJson
      //       )
      //     ]
      //   )
      // );
    }

    return ResumeWidget(resume: _resume!);
  }
}