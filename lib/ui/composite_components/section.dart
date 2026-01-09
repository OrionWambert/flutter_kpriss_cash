import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:finance_mobile_app/features/counter/bloc/counter_bloc/counter_bloc.dart';
import 'package:finance_mobile_app/features/counter/bloc/counter_bloc/counter_state.dart';
import 'package:finance_mobile_app/ui/core_components/h1.dart';
import 'package:finance_mobile_app/ui/core_components/paragraph.dart';
import 'package:finance_mobile_app/ui/styles/sizes.dart';
import 'package:finance_mobile_app/ui/styles/styles.dart';

class TextSection extends StatefulWidget {
  const TextSection({super.key});

  @override
  State<TextSection> createState() => _TextSectionState();
}

class _TextSectionState extends State<TextSection> {
  String text = lorem(
    paragraphs: 2,
    words: 60,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
          int value = 0;
          if (state is CounterStateUpdated) {
            value = state.value;
          }
          return H1(
            text: "$value",
          );
        }),
        const SizedBox(
          height: AppSizes.h_16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.h_20,
          ),
          child: Paragraph(
            title: text,
          ),
        )
      ],
    );
  }
}
