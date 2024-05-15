import 'package:progaming/Views/programming_blocks/lib/base_sections/follow/delay_block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/follow/repeat_block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/follow/while_block_type.dart';
import 'package:flutter/material.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/creation_section_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/types/simple_section.dart';

class FollowSection extends _FollowSection {
  FollowSection({
    Key? key,
    Color? color,
  }) : super(
          key: key,
          sectionData: CreationSectionData(
            name: 'Repetição',
            color: color ??
                const Color(
                  0xFF4CAF50,
                ),
          ),
        );
}

class _FollowSection extends SimpleSection {
  _FollowSection({
    Key? key,
    required CreationSectionData sectionData,
  }) : super(
            creationSectionData: sectionData,
            blocktypes: [
              RepeatBlockType(
                sectionData: sectionData,
              ),
              WhileBlockType(
                sectionData: sectionData,
              ),
              DelayBlockType(
                sectionData: sectionData,
              ),
            ],
            key: key);
}
