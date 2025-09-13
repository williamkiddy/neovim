local colors = {
	-- Dark Backgrounds and Panels
	base0 = "#202127",
	base1 = "#292933",
	base2 = "#3e404c",

	-- Unique Accent Shades with a Fruity Twist
	base3 = "#8067A0",
	base4 = "#4178A5",
	base5 = "#39A86B",
	base6 = "#CF9A3C",
	base7 = "#B6829C",
	base8 = "#E9E7E2",

	-- Accent Colors: Deep and Subtle Highlights with Darker Tones and RGB Accents
	accent0 = "#1E1B27",
	accent1 = "#4A3F48",
	accent2 = "#2B4940",
	accent3 = "#26404F",
	accent4 = "#D47A6D",
	accent5 = "#A0E96D",
	accent6 = "#7DA4F2",
	accent7 = "#E6D57C",
	accent8 = "#F6C5F1",

	-- Secondary Colors: Strong and Subtle
	sec0 = "#1A1B26",
	sec1 = "#F7768E",
	sec2 = "#9ECE6A",
	sec3 = "#E0AF68",
	sec4 = "#7AA2F7",
	sec5 = "#BB9AF7",
	sec6 = "#7DBFDF",
	sec7 = "#C9D1E6",
	sec8 = "#414868",
	sec9 = "#FF5C8F",
	sec10 = "#B9F27C",
	sec11 = "#F3D47F",
	sec12 = "#82AAFF",
	sec13 = "#D4BBFF",
	sec14 = "#76E5FF",
	sec15 = "#FFFFFF",

	-- Default Colors: More Balanced Pastel Shades
	def0 = "#D98181",
	def1 = "#D8A758",
	def2 = "#D8BF4E",
	def3 = "#A3C47E",
	def4 = "#7DAAC2",
	def5 = "#789EF0",
	def6 = "#A185E3",
	def7 = "#D089E0",
	def8 = "#E0A3E3",

	-- Tones: Subtle Variations for Better Contrast
	tone0 = "#A67BF9",
	tone1 = "#9A8DD8",
	tone2 = "#7F99B7",
	tone3 = "#6FAA96",
	tone4 = "#81B26F",
	tone5 = "#9EC164",
	tone6 = "#C6CE58",
	tone7 = "#E3DC6C",
	tone8 = "#FAEB82",

	-- Hues: Sharpened Colors
	hue0 = "#FF6363",
	hue1 = "#FF7A50",
	hue2 = "#FF8A4E",
	hue3 = "#FFAB5C",
	hue4 = "#FFC46B",
	hue5 = "#CDE45F",
	hue6 = "#6AB750",
	hue7 = "#4EB859",
	hue8 = "#3FA3B8",
	hue9 = "#4A90C2",
	hue10 = "#7768C0",
	hue11 = "#A75DB3",
	hue12 = "#DC6A84",
	hue13 = "#F0546A",
	hue14 = "#FF9D5F",
	hue15 = "#EE8C50",

	-- Soft Pastels: Adjusted for Warm/Cool Balance
	pastel0 = "#F6D2D2",
	pastel1 = "#F6B1B1",
	pastel2 = "#F3C4A0",
	pastel3 = "#F0D371",
	pastel4 = "#EED850",
	pastel5 = "#CFE394",
	pastel6 = "#9FC4E2",
	pastel7 = "#99C2F0",
	pastel8 = "#98B3D8",
	pastel9 = "#BDA9D4",
	pastel10 = "#A793D1",
	pastel11 = "#F39CB1",
	pastel12 = "#D4E6EE",
	pastel13 = "#EFC7D0",
	pastel14 = "#CBE3C4",
	pastel15 = "#ECECC4",

	-- Extra Colors (Refined Mineral, Rich & Bright Tones)
	extra = {
		neutral0 = "#F1E9E5",
		neutral1 = "#E4DDD8",
		neutral2 = "#D1D4DB",
		neutral3 = "#B4BEC9",
		neutral4 = "#8D97A5",
		neutral5 = "#687580",
		neutral6 = "#47525D",
		neutral7 = "#2B323E",
		neutral8 = "#181B20",

		rich0 = "#522458",
		rich1 = "#712F7A",
		rich2 = "#8F3EA1",
		rich3 = "#A84DBA",
		rich4 = "#C75E97",
		rich5 = "#D96A78",
		rich6 = "#EC854F",
		rich7 = "#FF9F42",
		rich8 = "#FCCC58",

		mineral0 = "#283B4F",
		mineral1 = "#305877",
		mineral2 = "#1B677A",
		mineral3 = "#178A66",
		mineral4 = "#46A045",
		mineral5 = "#988440",
		mineral6 = "#B9603C",
		mineral7 = "#973D60",
		mineral8 = "#76489A",

		bright0 = "#FF2F4C",
		bright1 = "#FF573E",
		bright2 = "#FF7D30",
		bright3 = "#FFA228",
		bright4 = "#FFC620",
		bright5 = "#F5DF2C",
		bright6 = "#C7F13E",
		bright7 = "#98FA4A",
		bright8 = "#72FF56",
	},

	fruit = {
		-- Reds & Pinks: balanced, juicy, not too harsh
		strawberry = { light = "#FF9AA2", medium = "#FF6B81", dark = "#B22234" },
		cherry = { light = "#FF8DAA", medium = "#FF355E", dark = "#8B0000" },
		raspberry = { light = "#FF7FB3", medium = "#E60064", dark = "#990036" },

		-- Oranges: warm, smooth gradient
		tangerine = { light = "#FFBE7D", medium = "#FF8C42", dark = "#CC5C1A" },
		apricot = { light = "#FFD8A8", medium = "#FFA64D", dark = "#CC7A1F" },

		-- Yellows: bright but harmonious
		banana = { light = "#FFF9A6", medium = "#FFEA3B", dark = "#CFC100" },
		lemon = { light = "#FFFCC2", medium = "#FFF44F", dark = "#C7B800" },

		-- Greens: fresh, natural, balanced with warm fruits
		lime = { light = "#D4FF91", medium = "#A3E64D", dark = "#4B8B3B" },
		kiwi = { light = "#D9FFB3", medium = "#7ED957", dark = "#3B7A2F" },
		apple = { light = "#B9FF9C", medium = "#57C34A", dark = "#2E7D32" },

		-- Blues: calm, fruity, balanced with warmer tones
		blueberry = { light = "#B8D4FF", medium = "#4A90F2", dark = "#1A3E91" },
		grape = { light = "#C5B3FF", medium = "#7B5DFF", dark = "#4B2E91" },
		plum = { light = "#E0B3FF", medium = "#A04DFF", dark = "#630099" },

		-- Exotic fruits: extra fruity pops
		mango = { light = "#FFE28D", medium = "#FFB533", dark = "#CC7A00" },
		passion = { light = "#FFD8B3", medium = "#FF9233", dark = "#CC5000" },
		dragonfruit = { light = "#FFB3E0", medium = "#FF4DC2", dark = "#B2007A" },
	},
}

colors.named = {
	core = {
		black   = colors.base1,
		white   = colors.base8,
		red     = colors.hue0,
		orange  = colors.hue3,
		yellow  = colors.hue4,
		green   = colors.base5,
		blue    = colors.base4,
		purple  = colors.base7,
		pink    = colors.base3,
		cyan    = colors.sec6,
		magenta = colors.sec5
	},

	accent = {
		black  = colors.accent0,
		white  = colors.accent8,
		red    = colors.accent4,
		orange = colors.hue2,
		yellow = colors.accent7,
		green  = colors.accent5,
		blue   = colors.accent6,
		purple = colors.base7,
		pink   = colors.accent8,
		cyan   = colors.accent3,
	},

	sec = {
		black  = colors.sec0,
		white  = colors.sec15,
		red    = colors.sec1,
		orange = colors.sec3,
		yellow = colors.sec11,
		green  = colors.sec2,
		blue   = colors.sec4,
		purple = colors.sec5,
		pink   = colors.sec9,
		cyan   = colors.sec6,
	},

	def = {
		black  = colors.base0,
		white  = colors.def8,
		red    = colors.def0,
		orange = colors.def1,
		yellow = colors.def2,
		green  = colors.def3,
		blue   = colors.def5,
		purple = colors.def6,
		pink   = colors.def7,
		cyan   = colors.def4,
	},
}

return colors
