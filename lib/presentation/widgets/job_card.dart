import 'package:flutter/material.dart';
import 'package:work_api/domain/models/job.dart';
import 'package:work_api/presentation/single_job_screen/widget/single_job_screen.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
    required this.job,
  }) : super(key: key);

  final Job job;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => SingleJobScreen(job: job),
          ),
        );
      },
      child: Card(
        elevation: 6,
        margin: const EdgeInsets.only(bottom: 14),
        color: Color.fromARGB(195, 128, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                job.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(job.city),
            ],
          ),
        ),
      ),
    );
  }
}
