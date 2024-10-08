local _, alpha = pcall(require, "alpha")
local _, dashboard = pcall(require, "alpha.themes.dashboard")

local headers = {
	{
		'⠀⠀⠀⣀⠔⠒⠒⠂⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
		'⠀⠀⢰⢅⠀⠀⢀⣤⢄⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
		'⠀⠀⣾⡆⠀⠀⠀⢸⠼⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
		'⠀⢀⢗⠂⠀⠀⡀⠈⢉⠅⠇⠀⠀⠀⠀⠀⠀⢠⣄⠀',
		'⠀⠈⠢⣓⠔⣲⠖⡫⠊⡘⠀⠀⠀⠀⠀⠀⠲⡟⠙⡆',
		'⠀⢀⢀⠠⠘⣇⠖⢄⠀⠉⠐⠠⢄⣀⡀⠀⠜⠀⠀⣁',
		'⠘⣏⣀⣀⣀⠃⠀⠀⠑⣀⣀⣀⣰⠼⠇⠈⠄⠀⠈⡻',
		'⠀⠁⠀⠀⢰⠀⠀⠀⠀⠠⠀⠡⡀⠀⠀⠀⠈⡖⠚⠀',
		'⠀⠀⠀⡠⠘⠀⠀⠀⠀⢀⠆⠀⠐⡀⠀⡠⠊⣠⠀⠀',
		'⠀⠀⢐⠀⠀⠁⡀⠀⠀⢀⠀⠀⠀⢨⠀⡠⡴⠂⠀⠀',
		'⠀⢀⣨⣤⠀⠀⠐⠃⠐⠚⠢⠀⠀⠈⠑⠊⠀⠀⠀⠀',
		'⠀⠘⠓⠋⠉⠁⠀⠀⠀⠀⠀⠓⢶⡾⠗⠀⠀⠀⠀⠀',

	},
	{
  '               `;,;.;,;.;.`',
   '              ..:;:;::;: ',
   '        ..--``` `` ` ` ```--.  ',
   '      /. .   .         ..   .`\\',
   '     | /    /            \\   `.|',
   '     | |   :             :    :|',
   '   .`| |   :             :    :|',
   ' ,: /\\ \\.._\\ __..===..__/_../ /`.',
	'|`` |  :.|  ``          ``  |.`  ::.',
   '|   |  ``|    :``;          | ,  `\'\'\\',
   '|.:  \\/  | /`-.``   `:`.-`\\ |  \\,   |',
   '| `  /  /  | / |...   | \\ |  |  |`;`|',
   ' \\ _ |:.|  |_\\_|`.`   |_/_|  |.:| _ |',
   '/,.,.|` \\__       . .      __/ `|.,.,\\',
   '     | `:`.`----._____.---`.`   |',
   '      \\   `:`""-------"""` |   |',
   '       `,-,-`,             .`-=,=,',
	},
	{
      '              ▄▄▄▄▄▄▄▄▄            ',
      '           ▄█████████████▄          ',
      '   █████  █████████████████  █████  ',
      '   ▐████▌ ▀███▄       ▄███▀ ▐████▌  ',
      '    █████▄  ▀███▄   ▄███▀  ▄█████    ',
      '    ▐██▀███▄  ▀███▄███▀  ▄███▀██▌    ',
      '     ███▄▀███▄  ▀███▀  ▄███▀▄███    ',
      '     ▐█▄▀█▄▀███ ▄ ▀ ▄ ███▀▄█▀▄█▌    ',
      '      ███▄▀█▄██ ██▄██ ██▄█▀▄███      ',
      '       ▀███▄▀██ █████ ██▀▄███▀      ',
      '      █▄ ▀█████ █████ █████▀ ▄█      ',
      '      ███        ███        ███      ',
      '      ███▄    ▄█ ███ █▄    ▄███      ',
      '      █████ ▄███ ███ ███▄ █████      ',
      '      █████ ████ ███ ████ █████      ',
      '      █████ ████▄▄▄▄▄████ █████      ',
      '       ▀███ █████████████ ███▀      ',
      '         ▀█ ███ ▄▄▄▄▄ ███ █▀        ',
      '            ▀█▌▐█████▌▐█▀            ',
      '               ███████              ',
	},
	{
		"                                                     ",
		"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
		"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
		"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
		"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
		"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
		"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
		"                                                     ",
	},
	{
		 '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠎⠈⠑⢄⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⣀⡠⢤⠀⠀⠀⠀',
		 '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡎⠀⠀⠀⠀⠑⢄⣴⣿⣿⣦⣀⠤⠒⠉⠀⠀⡜⠀⠀⠀⠀',
		 '⠀⠀⠀⠀⠀⠀⠀⣰⣶⣤⣀⢸⠀⠀⠀⠀⠀⠀⠀⠻⣿⡿⠋⠀⠀⠀⠀⠀⢠⠃⠀⠀⠀⠀',
		 '⢀⣀⡀⠠⠤⠤⠀⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⢀⡤⣄⠉⠀⠀⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⠀',
		 '⠀⠈⢦⠀⠀⠀⠀⠀⠀⠈⠉⠁⢰⠙⠆⣠⣤⣬⡀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⠀⠀⠀',
		 '⠀⠀⠀⠑⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡿⠿⡇⠀⠀⠀⠀⠀⣀⡀⠀⠘⣤⢄⠀⠀⠀⠀',
		 '⠀⠀⠀⠀⠈⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠳⣼⠃⠀⣤⣀⡤⠾⠿⣿⣷⣴⠃⠀⢣⠀⠀⠀',
		 '⠀⠀⠀⠀⠀⡤⣵⣀⡠⠚⠙⠲⠤⣀⡴⠋⠳⠊⠙⠚⠀⠈⠳⡀⠀⠀⠈⠙⢢⡀⠀⢇⠀⠀',
		 '⠀⠸⡉⠑⠚⠦⢌⡉⠀⠀⢸⣶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣦⣀⠀⠀⣰⠃⠀⠸⠀⠀',
		 '⠀⠀⠑⡄⠀⠀⠀⠈⡇⠀⠘⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠈⠓⠚⠁⠀⠀⠀⡇⠀',
		 '⠀⠀⠀⠈⣦⣄⠀⢀⠇⠀⠀⠀⠀⠀⣿⣿⡿⠿⢿⣿⣶⣶⣤⡀⠀⠀⠀⢀⡤⠒⠲⡦⡇⠀',
		 '⠀⠀⠀⠀⢸⠈⠉⣡⣶⣦⣄⠀⠀⠀⠈⢿⣷⡄⠀⠀⠉⣿⣿⠇⠀⠀⡰⠃⠀⠀⢰⠁⠘⡄',
		 '⠀⠀⠀⠀⠈⡆⢠⣿⣿⣿⣿⣷⡄⠀⠀⠈⠻⣿⣦⣄⣾⣿⠏⠀⠀⡜⠀⠀⠀⠀⠘⠀⠀⡇',
		 '⠀⠀⠀⠀⠀⠘⢾⣿⠋⠙⢿⣿⣿⣆⠀⠀⠀⠈⠻⢿⡿⠃⠀⢀⣸⠁⠀⠀⠀⠀⠀⠀⢠⠃',
		 '⠀⠀⠀⠀⠀⠀⠈⠻⣄⠀⠀⠙⣿⣿⣧⠀⠀⠀⠀⠀⢀⣴⣾⣿⡏⠀⢰⣿⣷⣶⣶⣆⠎⠀',
		 '⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠶⣿⡿⠿⠋⠀⠀⠀⠀⠀⠈⢻⣿⣿⣧⠀⠘⠿⠿⠿⡫⠋⠀⠀',
		 '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠉⠑⠒⠒⠤⠤⠤⠤⢤⠔⠛⠋⠉⠓⠤⠤⠤⠊⠀⠀⠀⠀',
		 '⠀⠀⠀⠀⠀⠀⠀⠀⠠⣮⠊⣀⣀⣀⣀⣀⣀⣀⠤⠒⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
	},
	{
		 '⠀⠀⠀⠀⠀⠀⣰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
		 '⠀⠀⠀⠀⠀⣰⠟⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀',
		 '⠀⠀⠀⠀⢀⠁⠀⠇⠀⠀⠀⠀⠀⠀⠀⢀⠀⠤⠀⠒⣶⣶⠆⠀⠀⢀⠔⠁⢠⠀',
		 '⠀⠀⠀⠀⠘⢀⠼⠤⠀⠀⠀⠄⡠⠐⠈⠀⠀⠀⠀⡰⠟⠁⠀⢀⠔⠀⠀⠀⠀⠀',
		 '⠀⠀⠀⠀⢜⡁⠀⠀⠀⣖⣦⠀⠀⠤⣤⠄⠐⠂⠁⠀⠀⢀⠔⠁⠀⠀⠀⠀⠀⡇',
		 '⠀⠀⠀⡸⠷⢁⡀⢀⡀⠈⢉⠤⢄⠀⠈⡀⠀⠀⠀⠀⣔⡁⠄⠄⠀⠀⢀⠠⠂⠁',
		 '⠀⠀⢠⢻⠀⠹⣿⠿⡇⠀⠡⠔⠜⠀⠀⢁⠀⠀⠀⠀⢡⠀⠀⢀⠄⠊⠁⠀⠀⠀',
		 '⠀⠀⠀⠫⡀⠀⠐⠤⠃⠀⠀⠀⠀⢀⠀⠀⢂⠀⠀⠀⠀⢃⠀⠸⠀⠀⠀⠀⠀⠀',
		 '⢀⠠⠐⠂⠉⠢⠀⡀⠀⠀⠀⠀⠖⠉⠉⠀⠀⢧⡀⠀⡠⠒⠀⡠⠀⠀⠀⠀⠀⠀',
		 '⢸⡘⠀⠀⠀⠀⢢⠈⠂⠀⠀⠀⠘⢤⣄⣤⠄⠀⠈⢊⠢⣠⣎⠀⠀⠀⠀⠀⠀⠀',
		 '⠀⠀⠉⠀⠒⠒⠀⢣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠗⣾⠿⠆⠀⠀⠀⠀⠀⠀',
		 '⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡷⠄⠀⠀⠀⠀⠀⠀⠀',
		 '⠀⠀⠀⠀⠀⠀⠀⠘⡀⠀⠀⠀⣀⣀⠀⠀⢀⣀⡀⠤⢊⠆⠀⠀⠀⠀⠀⠀⠀⠀',
		 '⠀⠀⠀⠀⠀⠀⠀⠀⠐⠢⢤⣥⠒⠉⠉⠑⠂⠠⠤⡤⢺⠀⠀⠀⠀⠀⠀⠀⠀⠀',
		 '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢛⠀⠀⠀⠀⠀⠀⠀⠐⢾⠀⠀⠀⠀⠀⠀⠀⠀⠀',
	},
	{
'        .--`````````--.',
'     .`      .---.      `.',
'    /    .-----------.    \\',
'   /        .-----.        \\',
'   |       .-.   .-.       |',
'   |      /   \\ /   \\      |',
'    \\    | .-. | .-. |    /',
'     `-._| | | | | | |_.-`',
'         | `-` | `-` |',
'          \\___/ \\___/',
'       _.-`  /   \\  `-._',
'     .` _.--|     |--._ `.',
'     ` _...-|     |-..._ `',
'            |     |',
'            `.___.`',
'              | |',
'             _| |_',
'            /\\( )/\\',
'           /  ` `  \\',
'          | |     | |',
	},
	{
		"=ccccc,      ,cccc       ccccc      ,cccc,  ?$$$$$$$,  ,ccc,   -ccc        ",
		":::\"$$$$bc    $$$$$     ::`$$$$$c,  : $$$$$c`:\"$$$$???'`.\"$$$$c,:`?$$c      ",
		"`::::\"?$$$$c,z$$$$F     `:: ?$$$$$c,`:`$$$$$h`:`?$$$,` :::`$$$$$$c,\"$$h,    ",
		"  `::::.\"$$$$$$$$$'    ..,,,:\"$$$$$$h, ?$$$$$$c`:\"$$$$$$$b':\"$$$$$$$$$$$c   ",
		"     `::::\"?$$$$$$    :\"$$$$c:`$$$$$$$$d$$$P$$$b`:`?$$$c : ::`?$$c \"?$$$$h, ",
		"       `:::.$$$$$$$c,`::`????\":`?$$$E\"?$$$$h ?$$$.`:?$$$h..,,,:\"$$$,:.\"?$$$c ",
		"         `: $$$$$$$$$c, ::``  :::\"$$$b `\"$$$ :\"$$$b`:`?$$$$$$$c``?$F `:: \":: ",
		"          .,$$$$$\"?$$$$$c,    `:::\"$$$$.::\"$.:: ?$$$.:.???????\" `:::  ` ``` ",
		"          'J$$$$P'::\\\"?$$$$h,   `:::`?$$$c`::``:: .:: : :::::''   `          ",
		"         :,$$$$$':::::`?$$$$$c,  ::: \"::  ::  ` ::'   ``                    ",
		"        .'J$$$$F  `::::: .::::    ` :::'  `                                 ",
		"       .: ???):     `:: :::::                                               ",
		"       : :::::'        `                                                    ",
		"        ``                                                                  "
	},
	{
		",------------.                ,.--\"\"-._",
		" |   Alice's   `.           __/         `.",
		" | Adventures in |     _,**\"   \"*-.       `.",
		" |     Neovim    |   ,'            `.       \\",
		" `---------------'  ;    _,.---._    \\  ,'\\  \\",
		"                   :   ,'   ,-.. `.   \\'   \\ :",
		"                   |  ;_\\  (___)`  `-..__  : |",
		"                   ;-'`*'\"  `*'    `--._ ` | ;",
		"                  /,-'/  -.        `---.`  |\"",
		"                  /_,'`--='.       `-.._,-\" _",
		"                   (/\\,--. \\    ___-.`:   //___",
		"                      /\'''\\ '  |   |-`|  ( -__,'",
		"                     '. `--'    ;   ;  ; ;/_/",
		"                       `. `.__,/   /_,' /`.~;",
		"                       _.-._|_/_,'.____/   /",
		"                  ..--\" /  =/  \\=  \\      /",
		"                 /  ;._.\\_.-`--'-._/ ____/",
		"                 \\ /   /._/|.\\     .\"",
		"                  `*--'._ \\\"-.:     :",
		"                       :/\".A` \\    |",
		"                       |   |.  `.  :",
		"                       ;   |.    `. \\"
	},
	-- {
	-- 	"                 .\"-,.__",
	-- 	"                 `.     `.  ,",
	-- 	"              .--'  .._,'\"-' `.",
	-- 	"             .    .'         `'",
	-- 	"             `.   /          ,'",
	-- 	"               `  '--.   ,-\"'",
	-- 	"                `\"`   |  \\",
	-- 	"                   -. \\, |",
	-- 	"                    `--Y.'      ___.",
	-- 	"                         \\     L._, \\",
	-- 	"               _.,        `.   <  <\\                _",
	-- 	"             ,' '           `, `.   | \\            ( `",
	-- 	"          ../, `.            `  |    .\\`.           \\ \\_",
	-- 	"         ,' ,..  .           _.,'    ||\\l            )  '\".",
	-- 	"        , ,'   \\           ,'.-.`-._,'  |           .  _._`.",
	-- 	"      ,' /      \\ \\        `' ' `--/   | \\          / /   ..\\",
	-- 	"    .'  /        \\ .         |\\__ - _ ,'` `        / /     `.`.",
	-- 	"    |  '          ..         `-...-\"  |  `-'      / /        . `.",
	-- 	"    | /           |L__           |    |          / /          `. `.",
	-- 	"   , /            .   .          |    |         / /             ` `",
	-- 	"  / /          ,. ,`._ `-_       |    |  _   ,-' /               ` \\",
	-- 	" / .           \"`_/. `-_ \\_,.  ,'    +-' `-'  _,        ..,-.    \\`.",
	-- 	".  '         .-f    ,'   `    '.       \\__.---'     _   .'   '     \\ \\",
	-- 	"' /          `.'    l     .' /          \\..      ,_|/   `.  ,'`     L`",
	-- 	"|'      _.-\"\"` `.    \\ _,'  `            \\ `.___`.'\"`-.  , |   |    | \\",
	-- 	"||    ,'      `. `.   '       _,...._        `  |    `/ '  |   '     .|",
	-- 	"||  ,'          `. ;.,.---' ,'       `.   `.. `-'  .-' /_ .'    ;_   ||",
	-- 	"|| '              V      / /           `   | `   ,'   ,' '.    !  `. ||",
	-- 	"||/            _,-------7 '              . |  `-'    l         /    `||",
	-- 	". |          ,' .-   ,' ||               | .-.        `.      .'     ||",
	-- 	"`'        ,'    `\".'    |               |    `.        '. -.'       `'",
	-- 	"          /      ,'      |               |,'    \\-.._,.'/'",
	-- 	"          .     /        .               .       \\    .''",
	-- 	"        .`.    |         `.             /         :_,'.'",
	-- 	"          \\ `...\\   _     ,'-.        .'         /_.-'",
	-- 	"           `-.__ `,  `'   .  _.>----''.  _  __  /",
	-- 	"                .'        /\"'          |  \"'   '_",
	-- 	"               /_|.-'\\ ,\".             '.'`__'-( \\",
	-- 	"                 / ,\"'\"\\,'               `/  `-.|\"",
	-- }
}

local animeHeader1 = {
    '        ⢀⣴⡾⠃⠄⠄⠄⠄⠄⠈⠺⠟⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣶⣤⡀  ',
    '      ⢀⣴⣿⡿⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣸⣿⣿⣿⣿⣿⣿⣿⣷ ',
    '     ⣴⣿⡿⡟⡼⢹⣷⢲⡶⣖⣾⣶⢄⠄⠄⠄⠄⠄⢀⣼⣿⢿⣿⣿⣿⣿⣿⣿⣿ ',
    '    ⣾⣿⡟⣾⡸⢠⡿⢳⡿⠍⣼⣿⢏⣿⣷⢄⡀⠄⢠⣾⢻⣿⣸⣿⣿⣿⣿⣿⣿⣿ ',
    '  ⣡⣿⣿⡟⡼⡁⠁⣰⠂⡾⠉⢨⣿⠃⣿⡿⠍⣾⣟⢤⣿⢇⣿⢇⣿⣿⢿⣿⣿⣿⣿⣿ ',
    ' ⣱⣿⣿⡟⡐⣰⣧⡷⣿⣴⣧⣤⣼⣯⢸⡿⠁⣰⠟⢀⣼⠏⣲⠏⢸⣿⡟⣿⣿⣿⣿⣿⣿ ',
    ' ⣿⣿⡟⠁⠄⠟⣁⠄⢡⣿⣿⣿⣿⣿⣿⣦⣼⢟⢀⡼⠃⡹⠃⡀⢸⡿⢸⣿⣿⣿⣿⣿⡟ ',
    ' ⣿⣿⠃⠄⢀⣾⠋⠓⢰⣿⣿⣿⣿⣿⣿⠿⣿⣿⣾⣅⢔⣕⡇⡇⡼⢁⣿⣿⣿⣿⣿⣿⢣ ',
    ' ⣿⡟⠄⠄⣾⣇⠷⣢⣿⣿⣿⣿⣿⣿⣿⣭⣀⡈⠙⢿⣿⣿⡇⡧⢁⣾⣿⣿⣿⣿⣿⢏⣾ ',
    ' ⣿⡇⠄⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢻⠇⠄⠄⢿⣿⡇⢡⣾⣿⣿⣿⣿⣿⣏⣼⣿ ',
    ' ⣿⣷⢰⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⢰⣧⣀⡄⢀⠘⡿⣰⣿⣿⣿⣿⣿⣿⠟⣼⣿⣿ ',
    ' ⢹⣿⢸⣿⣿⠟⠻⢿⣿⣿⣿⣿⣿⣿⣿⣶⣭⣉⣤⣿⢈⣼⣿⣿⣿⣿⣿⣿⠏⣾⣹⣿⣿ ',
    ' ⢸⠇⡜⣿⡟⠄⠄⠄⠈⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟⣱⣻⣿⣿⣿⣿⣿⠟⠁⢳⠃⣿⣿⣿ ',
    '  ⣰⡗⠹⣿⣄⠄⠄⠄⢀⣿⣿⣿⣿⣿⣿⠟⣅⣥⣿⣿⣿⣿⠿⠋  ⣾⡌⢠⣿⡿⠃ ',
    ' ⠜⠋⢠⣷⢻⣿⣿⣶⣾⣿⣿⣿⣿⠿⣛⣥⣾⣿⠿⠟⠛⠉            ',
}
local animeHeader2 = {
	'⣿⣿⣿⣿⣯⣿⣿⠄⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠈⣿⣿⣿⣿⣿⣿⣆⠄',
    '⢻⣿⣿⣿⣾⣿⢿⣢⣞⣿⣿⣿⣿⣷⣶⣿⣯⣟⣿⢿⡇⢃⢻⣿⣿⣿⣿⣿⢿⡄',
    '⠄⢿⣿⣯⣏⣿⣿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣧⣾⢿⣮⣿⣿⣿⣿⣾⣷',
    '⠄⣈⣽⢾⣿⣿⣿⣟⣄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣝⣯⢿⣿⣿⣿⣿',
    '⣿⠟⣫⢸⣿⢿⣿⣾⣿⢿⣿⣿⢻⣿⣿⣿⢿⣿⣿⣿⢸⣿⣼⣿⣿⣿⣿⣿⣿⣿',
    '⡟⢸⣟⢸⣿⠸⣷⣝⢻⠘⣿⣿⢸⢿⣿⣿⠄⣿⣿⣿⡆⢿⣿⣼⣿⣿⣿⣿⢹⣿',
    '⡇⣿⡿⣿⣿⢟⠛⠛⠿⡢⢻⣿⣾⣞⣿⡏⠖⢸⣿⢣⣷⡸⣇⣿⣿⣿⢼⡿⣿⣿',
    '⣡⢿⡷⣿⣿⣾⣿⣷⣶⣮⣄⣿⣏⣸⣻⣃⠭⠄⠛⠙⠛⠳⠋⣿⣿⣇⠙⣿⢸⣿',
    '⠫⣿⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⠻⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣹⢷⣿⡼⠋',
    ' ⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣿⣿⣿  ',
    '  ⢻⢹⣿⠸⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣼⣿⣿⣿⣿⡟  ',
    '  ⠈⢸⣿ ⠙⢿⣿⣿⣹⣿⣿⣿⣿⣟⡃⣽⣿⣿⡟⠁⣿⣿⢻⣿⣿⢿  ',
    '   ⠘⣿⡄  ⠙⢿⣿⣿⣾⣿⣷⣿⣿⣿⠟⠁  ⣿⣿⣾⣿⡟⣿  ',
    '    ⢻⡇⠸⣆  ⠈⠻⣿⡿⠿⠛⠉    ⢸⣿⣇⣿⣿⢿⣿  ',
}
local animeHeader3 =  {
    '⡿⠋⠄⣀⣀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣌⠻⣿⣿',
    '⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠹⣿',
    '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠹',
    '⣿⣿⡟⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡛⢿⣿⣿⣿⣮⠛⣿⣿⣿⣿⣿⣿⡆',
    '⡟⢻⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣣⠄⡀⢬⣭⣻⣷⡌⢿⣿⣿⣿⣿⣿',
    '⠃⣸⡀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠈⣆⢹⣿⣿⣿⡈⢿⣿⣿⣿⣿',
    '⠄⢻⡇⠄⢛⣛⣻⣿⣿⣿⣿⣿⣿⣿⣿⡆⠹⣿⣆⠸⣆⠙⠛⠛⠃⠘⣿⣿⣿⣿',
    '⠄⠸⣡⠄⡈⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠁⣠⣉⣤⣴⣿⣿⠿⠿⠿⡇⢸⣿⣿⣿',
    '⠄⡄⢿⣆⠰⡘⢿⣿⠿⢛⣉⣥⣴⣶⣿⣿⣿⣿⣻⠟⣉⣤⣶⣶⣾⣿⡄⣿⡿⢸',
    '⠄⢰⠸⣿⠄⢳⣠⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣼⣿⣿⣿⣿⣿⣿⡇⢻⡇⢸',
    '⢷⡈⢣⣡⣶⠿⠟⠛⠓⣚⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⢸⠇⠘',
    '⡀⣌⠄⠻⣧⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠛⠛⢿⣿⣿⣿⣿⣿⡟⠘⠄⠄',
    '⣷⡘⣷⡀⠘⣿⣿⣿⣿⣿⣿⣿⣿⡋⢀⣠⣤⣶⣶⣾⡆⣿⣿⣿⠟⠁⠄⠄⠄⠄',
    '⣿⣷⡘⣿⡀⢻⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣿⣿⣿⣿⣷⡿⠟⠉⠄⠄⠄⠄⡄⢀',
    '⣿⣿⣷⡈⢷⡀⠙⠛⠻⠿⠿⠿⠿⠿⠷⠾⠿⠟⣛⣋⣥⣶⣄⠄⢀⣄⠹⣦⢹⣿',
}
local animeHeader4 = {
    '    ⢰⣧⣼⣯⠄⣸⣠⣶⣶⣦⣾⠄⠄⠄⠄⡀⠄⢀⣿⣿⠄⠄⠄⢸⡇⠄⠄ ',
    '    ⣾⣿⠿⠿⠶⠿⢿⣿⣿⣿⣿⣦⣤⣄⢀⡅⢠⣾⣛⡉⠄⠄⠄⠸⢀⣿⠄ ',
    '   ⢀⡋⣡⣴⣶⣶⡀⠄⠄⠙⢿⣿⣿⣿⣿⣿⣴⣿⣿⣿⢃⣤⣄⣀⣥⣿⣿⠄ ',
    '   ⢸⣇⠻⣿⣿⣿⣧⣀⢀⣠⡌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⠄ ',
    '  ⢀⢸⣿⣷⣤⣤⣤⣬⣙⣛⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡍⠄⠄⢀⣤⣄⠉⠋⣰ ',
    '  ⣼⣖⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⢇⣿⣿⡷⠶⠶⢿⣿⣿⠇⢀⣤ ',
    ' ⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣷⣶⣥⣴⣿⡗ ',
    ' ⢀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟  ',
    ' ⢸⣿⣦⣌⣛⣻⣿⣿⣧⠙⠛⠛⡭⠅⠒⠦⠭⣭⡻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃  ',
    ' ⠘⣿⣿⣿⣿⣿⣿⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠄⠹⠈⢋⣽⣿⣿⣿⣿⣵⣾⠃  ',
    '  ⠘⣿⣿⣿⣿⣿⣿⣿⣿⠄⣴⣿⣶⣄⠄⣴⣶⠄⢀⣾⣿⣿⣿⣿⣿⣿⠃   ',
    '   ⠈⠻⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⠄⣿⣿⡀⣾⣿⣿⣿⣿⣛⠛⠁    ',
    '     ⠈⠛⢿⣿⣿⣿⠁⠞⢿⣿⣿⡄⢿⣿⡇⣸⣿⣿⠿⠛⠁      ',
    '        ⠉⠻⣿⣿⣾⣦⡙⠻⣷⣾⣿⠃⠿⠋⠁     ⢀⣠⣴ ',
    ' ⣿⣿⣿⣶⣶⣮⣥⣒⠲⢮⣝⡿⣿⣿⡆⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⣠⣴⣿⣿⣿ ',
}

local nvimHeader = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

-- math.randomseed(os.clock())
-- dashboard.section.header.val = headers[math.random(1, #headers)]
dashboard.section.header.val = headers[5]

--[[
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}
--]]

--set menu
dashboard.section.buttons.val = {
	dashboard.button( "n", "  > New file" , ":ene <BAR> startinsert <CR>"),
	dashboard.button( "f", "󰍉  > Find file", ":cd C:\\Dev\\ | Telescope find_files<CR>"),
	dashboard.button( "e", "  > File explorer", ":cd C:\\Dev\\ | Telescope file_browser<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    -- dashboard.button( "s", "  > Settings" , ":cd C:\\Users\\admin\\AppData\\Local\\nvim\\ | :e init.lua | split . | wincmd k | pwd<CR> | <CR> | <C-L>"),
    -- dashboard.button( "s", "  > Settings" , ":cd C:\\Users\\admin\\AppData\\Local\\nvim\\ | :e init.lua | wincmd k | :NvimTreeOpen<CR>"),
    dashboard.button( "s", "  > Settings" , ":e C:\\Users\\admin\\AppData\\Local\\nvim\\lua\\settings.lua<CR>"),
    dashboard.button( "p", "  > Recent Proejcts", ":Telescope projects<CR>"),
    dashboard.button( "q", "󱞨  > Quit NVIM", ":qa<CR>"),
}

alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])




















