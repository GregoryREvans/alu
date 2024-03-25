import pathlib

import evans

import alu

breaks = evans.Breaks(
    evans.Page(  # page 1
        evans.System(
            measures=3,
            lbsd=(80, "(19 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20)"),
            x_offset=4,
        ),
    ),
    evans.Page(  # page 2
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 3
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 4
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 5
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 6
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 7
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 8
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 9
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 10
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 11
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 12
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 13
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 14
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 15
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 16
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 17
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 18
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 19
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 20
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 21
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 22
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 23
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 24
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 25
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 26
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 27
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 28
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 29
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 30
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 31
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 32
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 33
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 34
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 35
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 36
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 37
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 38
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 39
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 40
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 41
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 42
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 43
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 44
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 45
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 46
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 47
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 48
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 49
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 50
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 51
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 52
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 53
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 54
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 55
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 56
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 57
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 58
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 59
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 60
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 61
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 62
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 63
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 64
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 65
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 66
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 67
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 68
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 69
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 70
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 71
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 72
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 73
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 74
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 75
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 76
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 77
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 78
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 79
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 80
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 81
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 82
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 83
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 84
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 85
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 86
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 87
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 88
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 89
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 90
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 91
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 92
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 93
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 94
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 95
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 96
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 97
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 98
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 99
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 100
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 101
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 102
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 103
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 104
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 105
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 106
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 107
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 108
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 109
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 110
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 111
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 112
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 113
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 114
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 115
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 116
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 117
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 118
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 119
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 120
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 121
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 122
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 123
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 124
        evans.System(
            measures=2,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 125
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 126
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 127
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 128
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 129
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 130
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 131
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 132
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 133
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 134
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 135
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 136
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 137
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 138
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 139
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 140
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 141
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 142
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 134
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 144
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 145
        evans.System(
            measures=4,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    evans.Page(  # page 146
        evans.System(
            measures=3,
            lbsd=(20, "(19 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24 24)"),
            x_offset=2,
        ),
    ),
    time_signatures=alu.all_signatures,  # 430 (107.5)
    default_spacing=(1, 64),
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
