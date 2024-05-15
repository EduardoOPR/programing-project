import 'package:progaming/Views/programming_blocks/lib/example_sections/string/instances/string_instances_section.dart';
import 'package:progaming/Views/programming_blocks/lib/example_sections/string/methods/string_methods_section.dart';

import 'package:flutter/material.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/creation_section_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/types/divided_section.dart';

class StringsSection extends _StringsSection {
  StringsSection({
    Key? key,
    Color? color,
  }) : super(
          key: key,
          sectionData: CreationSectionData(
            name: 'Strings',
            color: color ?? Colors.purple,
          ),
        );
}

class _StringsSection extends DividedSection {
  _StringsSection({
    Key? key,
    required CreationSectionData sectionData,
  }) : super(
          key: key,
          creationSectionData: sectionData,
          subSections: {
            'Instâncias': StringInstancesSection(
              color: sectionData.color,
            ),
            'Métodos': StringMethodsSection(
              color: sectionData.color,
            ),
          },
        );
}
