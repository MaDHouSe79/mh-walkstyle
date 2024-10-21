--[[ ===================================================== ]] --
--[[            MH Walk Style Script by MaDHouSe           ]] --
--[[ ===================================================== ]] --
Config = {}

Config.MenuWalkStyleCommand = "walkstyle"
Config.KeyBindWalkStyleButton = "END"


Config.DefaultWalkStyle = "move_m@multiplayer"

Config.MenuCategories = {
    ["Default"] = {
        ["Default Female"] = "move_f@multiplayer",
        ["Default Male"] = "move_m@multiplayer",
    },
    ["Others"] = {
        ["Business"] = 'move_m@business@a',
        ["Determined"] = 'move_m@brave@a',
        ["Ate too much"] = 'move_m@fat@a',
        ["Hipster"] = 'move_m@hipster@a',
        ["Hobo"] = 'move_m@hobo@a',
        ["Muscle"] = 'move_m@muscle@a',
        ["Shocked"] = 'move_m@shocked@a',
        ["Being shady"] = 'move_m@shadyped@a',
        ["Buzzed"] = 'move_m@buzzed',
        ["Hurry"] = 'move_m@hurry_butch@a',
        ["Proud"] = 'move_m@money',
        ["Short race"] = 'move_m@quick',
        ["Man eater"] = 'move_f@maneater',
        ['Sassy'] = 'move_f@sassy',
        ["Sassy2"] = "move_f@sassy",
        ["Armored"] = "anim_group_move_ballistic",
        ["Arrogant"] = "move_f@arrogant@a",
        ["Brave"] = "move_m@brave",
        ["Chichi"] = "move_f@chichi",
        ["Confident"] = "move_m@confident",
        ["Femme"] = "move_f@femme@",
        ["Flee4"] = "move_f@flee@a",
        ["Grooving"] = "anim@move_m@grooving@",
        ["Guard"] = "move_m@prison_gaurd",
        ["Handcuffs"] = "move_m@prisoner_cuffed",
        ["Heels"] = "move_f@heels@c",
        ["Heels2"] = "move_f@heels@d",
        ["Hiking"] = "move_m@hiking",
        ["Janitor"] = "move_p_m_zero_janitor",
        ["Janitor2"] = "move_p_m_zero_slow",
        ["Jog"] = "move_m@jog@",
        ["Money"] = "move_m@money",
        ["Posh"] = "move_m@posh@",
        ["Posh2"] = "move_f@posh@",
        ["Quick"] = "move_m@quick",
        ["Runner"] = "female_fast_runner",
        ["Scared"] = "move_f@scared",
        ["Sexy"] = "move_f@sexy@a",
        ["Shady"] = "move_m@shadyped@a",
        ["Slow"] = "move_characters@jimmy@slow@",
        ["Swagger"] = "move_m@swagger",
        ["Tough"] = "move_m@tough_guy@",
        ["Tough2"] = "move_f@tough_guy@",
        ["Trash"] = "clipset@move@trash_fast_turn",
        ["Trash2"] = "missfbi4prepp1_garbageman",
    },
    ['Characters'] = {
        ["Lemar"] = "anim_group_move_lemar_alley",
        ["Lester"] = "move_heist_lester",
        ["Lester2"] = "move_lester_caneup",
        ["Maneater"] = "move_f@maneater",
        ["Michael"] = "move_ped_bucket",
        ["Franklin"] = "move_p_m_one",
        ["Alien"] = "move_m@alien",
    },
    ['Depressed'] = {
        ["Sad"] = 'move_m@sad@a',
        ["Depressed male"] = 'move_m@depressed@a',
        ["Depressed female"] = 'move_f@depressed@a',        
    },
    ['Injured'] = {
        ["Injured"] = 'move_m@injured',
        ["In a hurry"] = 'move_m@hurry@a',
    },
    ['Fire'] = {
        ["Fire"] = "move_characters@franklin@fire",
        ["Fire2"] = "move_characters@michael@fire",
        ["Fire3"] = "move_m@fire",
    },
    ["Casual"] = {
        [1] = "move_m@casual@a",
        [2] = "move_m@casual@b",
        [3] = "move_m@casual@c",
        [4] = "move_m@casual@d",
        [5] = "move_m@casual@e",
        [6] = "move_m@casual@f",
    },
    ["Drunk"] = {
        [1] = "move_m@drunk@a",
        [2] = "move_m@drunk@slightlydrunk",
        [3] = "move_m@buzzed",
        [4] = "move_m@drunk@verydrunk",
    },
    ["Gangster"] = {
        [1] = "move_m@gangster@generic",
        [2] = "move_m@gangster@ng",
        [3] = "move_m@gangster@var_e",
        [4] = "move_m@gangster@var_f",
        [5] = "move_m@gangster@var_i",
    },
    ["Police"] = {
        [1] = "move_m@business@a",
        [2] = "move_m@business@b",
        [3] = "move_m@business@c", 
    },
}
