import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChipInputInTextField extends StatefulWidget {
  final Function(List<String>, String) onChanged; // Callback for data updates

  const ChipInputInTextField({super.key, required this.onChanged});

  @override
  State<ChipInputInTextField> createState() => _ChipInputInTextFieldState();
}

class _ChipInputInTextFieldState extends State<ChipInputInTextField> {
  final List<String> _chips = [];
  final TextEditingController _controller = TextEditingController();

  void _addChip(String value) {
    if (value.isNotEmpty && !_chips.contains(value)) {
      setState(() {
        _chips.add(value);
      });
      _controller.clear();
      widget.onChanged(_chips, ''); // Notify parent with the updated data
    }
  }

  void _removeChip(String label) {
    setState(() {
      _chips.remove(label);
      widget.onChanged(
          _chips, _controller.text); // Notify parent with the updated data
    });
  }

  void _onTextChanged() {
    widget.onChanged(
        _chips, _controller.text); // Notify parent of text input changes
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Wrap(
            spacing: 6.0,
            runSpacing: 4.0,
            children: [
              // Add Chips
              ..._chips.map(
                (chip) => Chip(
                  label: Text(
                    chip,
                    style: GoogleFonts.italiana(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                    ),
                  ),
                  onDeleted: () => _removeChip(chip),
                ),
              ),
              // TextField inside the Wrap
              SizedBox(
                width: 382,
                child: TextField(
                  style: GoogleFonts.italiana(
                      color: const Color.fromARGB(255, 243, 240, 240)),
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Add...',
                    hintStyle: GoogleFonts.italiana(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w300
                    ),
                    border: InputBorder.none,
                  ),
                  onSubmitted: (value) => _addChip(value.trim()),
                  onChanged: (_) => _onTextChanged(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
