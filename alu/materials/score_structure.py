import abjad
import evans

import alu

score = evans.make_score_template(alu.instruments, [5, 3, 2, 2, 5])
piano_group = score["sub group 4"]
abjad.setting(piano_group).instrumentName = r'\markup { \hcenter-in #14 "Piano" }'
abjad.setting(piano_group).shortInstrumentName = r'\markup { \hcenter-in #12 "pn" }'
