import pathlib

import evans

import alu

breaks = evans.Breaks(
    evans.Page(
        evans.System(measures=4, lbsd=(65, "(19 20 20 20)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(18, "(19 20 20 20)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(18, "(19 20 20 20)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(18, "(19 20 20 20)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=3, lbsd=(18, "(19 20 20 20)"), x_offset=4),
    ),
    time_signatures=alu.all_signatures,
    default_spacing=(1, 30),
    # spacing=[
    #     (193, (1, 30)),
    #     (194, (7, 144)),  #
    #     (195, (1, 30)),
    #     (196, (1, 30)),
    #     (197, (1, 30)),
    #     (198, (7, 144)),  #
    #     (199, (1, 30)),
    #     (200, (1, 30)),
    #     (201, (1, 30)),
    #     (202, (1, 30)),
    # ],
    bar_number=1,
)

output_path = pathlib.Path(__file__).parent

breaks.make_document_layout(path=output_path)
