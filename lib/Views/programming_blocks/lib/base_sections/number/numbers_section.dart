import 'package:progaming/Views/programming_blocks/lib/base_sections/number/instances/number_instances_section.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/number/methods/number_methods_section.dart';
import 'package:flutter/material.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/creation_section_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/types/divided_section.dart';

class NumbersSection extends _NumbersSection {
  NumbersSection({
    Key? key,
    Color? color,
  }) : super(
          key: key,
          sectionData: CreationSectionData(
            name: 'Variáveis',
            color: color ?? Colors.redAccent,
          ),
        );
}

class _NumbersSection extends DividedSection {
  _NumbersSection({
    Key? key,
    required CreationSectionData sectionData,
  }) : super(
          key: key,
          creationSectionData: sectionData,
          subSections: {
            'Instâncias': NumberInstancesSection(
              color: sectionData.color,
            ),
            'Métodos': NumberMethodsSection(
              color: sectionData.color,
            ),
          },
        );
}
