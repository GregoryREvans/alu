import pathlib

import evans

import alu

breaks = evans.Breaks(
    evans.Page(
        evans.System(measures=4, lbsd=(20, "(19 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(20, "(19 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(20, "(19 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(20, "(19 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(20, "(19 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(20, "(19 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20)"), x_offset=2),
    ),
    time_signatures=alu.reduced_signatures_09,
    default_spacing=(1, 35),  # 42
    spacing=[
        # (2, (1, 15)),
    ],
    bar_number=1,
)

output_path = pathlib.Path(__file__).parent

breaks.make_document_layout(path=output_path)
