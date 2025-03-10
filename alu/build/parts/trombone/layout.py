import pathlib

import evans

import alu

breaks = evans.Breaks(
    evans.Page(  # page 1
        evans.System(
            measures=4,
            lbsd=(40, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(40 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(40 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=5,
            lbsd=(40 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 2
        evans.System(
            measures=4,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=6,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 3
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 4
        evans.System(
            measures=5,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 5
        evans.System(
            measures=5,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 6
        evans.System(
            measures=3,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 7
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 8
        evans.System(
            measures=3,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 9
        evans.System(
            measures=3,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 10
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 11
        evans.System(
            measures=5,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=5,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=5,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=5,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=5,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 12
        evans.System(
            measures=3,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 13
        evans.System(
            measures=3,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 14
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 15
        evans.System(
            measures=3,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 16
        evans.System(
            measures=4,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 17
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 18
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=1,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 19
        evans.System(
            measures=3,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=1,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 20
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 21
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 22
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 23
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 24
        evans.System(
            measures=3,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 25
        evans.System(
            measures=3,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 26
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 27
        evans.System(
            measures=2,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=2,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 28
        evans.System(
            measures=4,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 29
        evans.System(
            measures=3,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 30
        evans.System(
            measures=3,
            lbsd=(14, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=3,
            lbsd=(14 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
        evans.System(
            measures=4,
            lbsd=(14 + 26 + 26 + 26 + 26, "(12)"),
            x_offset=4,
        ),
    ),
    time_signatures=alu.all_signatures,  # 430 (107.5)
    default_spacing=(1, 45),
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
