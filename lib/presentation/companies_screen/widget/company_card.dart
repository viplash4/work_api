import 'package:flutter/material.dart';
import 'package:work_api/domain/models/company.dart';
import 'package:work_api/presentation/single_company_screen/widget/single_company_screen.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({Key? key, required this.company}) : super(key: key);

  final Company company;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  SingleCompanyScreen(company: company),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          color: Color.fromARGB(248, 221, 221, 221),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 30),
                child: FlutterLogo(),
              ),
              Column(
                children: [
                  Text(
                    company.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(company.industry,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
