import 'package:finance_mobile_app/features/onboarding/state/user_bloc.dart'
    show UserBloc;
import 'package:finance_mobile_app/features/onboarding/state/user_event.dart'
    show UserNameChanged;
import 'package:finance_mobile_app/features/onboarding/state/user_state.dart'
    show UserState;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class NameSelector extends StatefulWidget {
  const NameSelector({super.key});

  @override
  State<NameSelector> createState() => _NameSelectorState();
}

class _NameSelectorState extends State<NameSelector> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (_controller.text != state.enteredName) {
          _controller.text = state.enteredName;
          _controller.selection = TextSelection.fromPosition(
            TextPosition(offset: state.enteredName.length),
          );
        }
      },
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return Container(
            width: double.infinity,
            constraints: const BoxConstraints(maxWidth: 400),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.black, width: 1.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildArrowButton(),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onChanged: (value) {
                      context.read<UserBloc>().add(UserNameChanged(value));
                    },
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 36,
                      color: const Color(0xFF1A1A1A),
                      height: 1.0,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      isDense: true,
                      hintText: '',
                    ),
                    maxLength: 50,
                    buildCounter:
                        (
                          context, {
                          required currentLength,
                          required isFocused,
                          maxLength,
                        }) => null,
                  ),
                ),
                _buildArrowButton(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildArrowButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("\$", style: TextStyle(fontSize: 20, color: Colors.black)),
    );
  }
}
