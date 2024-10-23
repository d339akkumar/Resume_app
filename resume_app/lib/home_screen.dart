import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';

class ResumeScreen extends StatelessWidget {
  // Method to create the PDF
  Future<Uint8List> _buildResume() async {
    final pdf = pw.Document();
    final profileImage = await imageFromAssetBundle('assets/profile.jpg');

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text('DEEPAK KUMAR',
                        style: pw.TextStyle(
                          fontSize: 20,
                          fontWeight: pw.FontWeight.bold,
                        )),
                    pw.Text(
                      'Student in Information Technology',
                      style: pw.TextStyle(fontSize: 12),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text('Email: deepakkumar8826392364@gmail.com'),
                    pw.Text('Phone: 8826392364'),
                    pw.Text(
                      'Location: 322/268, Ishu Vihar, Mukundpur, Delhi, India',
                    ),
                  ],
                ),
                pw.Container(
                  width: 80,
                  height: 80,
                  child: pw.ClipOval(
                    child: pw.Image(profileImage, fit: pw.BoxFit.cover),
                  ),
                ),
              ],
            ),
            pw.SizedBox(height: 20),
            pw.Text(
              'EDUCATION',
              style: pw.TextStyle(
                fontSize: 16,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
            pw.Text(
                'Senior Secondary Education - Kendriya Vidyalaya Sec - 8 Rohini (08/2022 - 07/2022)'),
            pw.Text('Courses: Science'),
            pw.SizedBox(height: 10),
            pw.Text(
                'Bachelor\'s degree - Dr. Akhilesh Das Gupta Institute of Professional Studies (11/2022 - Present)'),
            pw.Text('Courses: Bachelor of Technology'),
            pw.SizedBox(height: 20),
            pw.Text(
              'TECHNICAL SKILLS',
              style: pw.TextStyle(
                fontSize: 16,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
            pw.Text(
                'C, C++, Java, HTML, CSS, JavaScript, Next.js, Flutter, Dart, Firebase, MySQL'),
            pw.SizedBox(height: 20),
            pw.Text(
              'PERSONAL PROJECTS',
              style: pw.TextStyle(
                fontSize: 16,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
            pw.Text(
                'MyPersonalWebsite (06/2023 - 06/2023) - A portfolio using NEXT.js and SANITY.IO'),
            pw.Text(
                'CustomBrew (04/2024 - 04/2024) - A Flutter app for coffee preferences using Firebase'),
            pw.Text(
                'Rec-Chronicles (06/2024 - 06/2024) - A cross-platform Flutter app for recording and uploading videos.'),
            pw.SizedBox(height: 20),
            pw.Text(
              'LANGUAGES',
              style: pw.TextStyle(
                fontSize: 16,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
            pw.Text('Native Hindi, English (Professional Proficiency)'),
            pw.SizedBox(height: 20),
            pw.Text(
              'INTERESTS',
              style: pw.TextStyle(
                fontSize: 16,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
            pw.Text('Sketching, Reading, Video Games'),
          ],
        ),
      ),
    );

    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    // Display the PDF
    return Scaffold(
      body: PdfPreview(
        build: (format) => _buildResume(),
      ),
    );
  }
}
