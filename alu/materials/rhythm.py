import abjad
import evans
from abjadext import rmakers

##
## Motions
##


def E_rhythm(
    stage=1,
    long_rotation=0,
    short_rotation=0,
    predicates=[lambda _: abjad.Duration(_.pair) < abjad.Duration((3, 4))],
    treat_tuplets=True,
    # denominators=[4],
    # extra_counts=[0],
    # indices=[0],
    # period=1,
    rotation=0,
    preprocessor=None,
    rewrite=-1,
):  # G
    if stage == 1:

        # def attack_selector(selections):
        #     sel_1 = abjad.select.leaves(selections)
        #     sel_2 = abjad.select.get(sel_1, indices, period)
        #     return sel_2

        rtm = [
            evans.rotate_tree("(1 ((2 (1 (1 (1 1)))) (2 (1 1 1)) 2 1 2))", n=_)
            for _ in range(rotation, rotation + 12)
        ]

        handler_1 = evans.RhythmHandler(
            evans.make_rtm(rtm, treat_tuplets=treat_tuplets), forget=False
        )
        handler_2 = evans.RhythmHandler(
            evans.make_rtm(
                ["(1 (1 (1 (1 1))))", "(1 (1 1 1))", "(1 (2 1 2))"],
                treat_tuplets=treat_tuplets,
            ),
            forget=False,
        )
        handler_3 = evans.RhythmHandler(
            evans.make_rtm(
                ["(1 (2 1))", "(1 (3 1))", "(1 (2 1))", "(1 (1 1))"],
                treat_tuplets=treat_tuplets,
            ),
            forget=False,
        )
        handler_4 = evans.RhythmHandler(
            evans.even_division([16], extra_counts=[2], treat_tuplets=treat_tuplets)
        )
        handler_5 = evans.RhythmHandler(
            evans.make_rtm(
                # ["(1 (-1 1 1 1 1 1 1))", "(1 (1 1 -3 -2))", "(1 (-3 1 1))", "(1 (1 1 1 1))"],
                [
                    "(1 ((1 (-1 1 1 1 1 1 1)) (1 (1 1 -1 1 1 -1)) 1))",
                    "(1 ((1 (-1 1 -1 1 1)) (1 (1 1 1 1)) 1))",
                ],
                treat_tuplets=treat_tuplets,
            ),
            forget=False,
        )

        long_handlers = evans.Sequence([handler_1, handler_5]).rotate(long_rotation)
        short_handlers = evans.Sequence([handler_2, handler_3]).rotate(  # also had 4
            short_rotation
        )

        cyc_long = evans.CyclicList(long_handlers, forget=False)
        cyc_short = evans.CyclicList(short_handlers, forget=False)

        def handler_function(
            durations, state=None, previous_state=None
        ):  # seems to work accurately
            time_signatures = [_ for _ in durations]
            divisions = time_signatures
            if preprocessor is not None:
                durations = [abjad.Duration(_.pair) for _ in divisions]
                divisions = preprocessor(durations)
            if predicates is not None:
                seq = evans.Sequence(divisions)
                partitions = seq.partition_by_predicate_list(predicates)
            if predicates[0](partitions[0][0]):
                maker = evans.CyclicList([cyc_short, cyc_long], forget=False)
                # marks = evans.CyclicList([abjad.Markup(r"\markup SHORT"), abjad.Markup(r"\markup LONG")], forget=False)
                # prints = evans.CyclicList(["SHORT\n", "LONG\n"], forget=False)
            else:
                maker = evans.CyclicList([cyc_long, cyc_short], forget=False)
                # marks = evans.CyclicList([abjad.Markup(r"\markup LONG"), abjad.Markup(r"\markup SHORT")], forget=False)
                # prints = evans.CyclicList(["LONG\n", "SHORT\n"], forget=False)
            container = abjad.Container()
            for partition in partitions:
                maker_group = maker(r=1)[0]
                # print(partition)
                # print(prints(r=1)[0])
                maker_ = maker_group(r=1)[0]
                nested_music = maker_(partition)
                # abjad.attach(marks(r=1)[0], abjad.select.leaf(nested_music, 0), direction=abjad.UP)
                for component in nested_music:
                    if isinstance(component, list):
                        container.extend(component)
                    else:
                        container.append(component)
                # for division in partition:
                #     maker_ = maker_group(r=1)[0]
                #     nested_music = maker_([division])
                #     abjad.attach(marks(r=1)[0], abjad.select.leaf(nested_music, 0), direction=abjad.UP)
                #     for component in nested_music:
                #         if isinstance(component, list):
                #             container.extend(component)
                #         else:
                #             container.append(component)
            if rewrite is not None:
                meter_command = evans.RewriteMeterCommand(boundary_depth=rewrite)
                metered_staff = rmakers.wrap_in_time_signature_staff(
                    container[:], time_signatures
                )
                meter_command(metered_staff)
                music = abjad.mutate.eject_contents(metered_staff)
            else:
                music = abjad.mutate.eject_contents(container)

            return music

        return handler_function

    if stage == 2:

        return None

    else:
        raise Exception(f"No stage {stage}. Use 1 or 2.")
