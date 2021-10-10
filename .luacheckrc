quiet = 1
codes = true

exclude_files = {
	".luarocks/*"
}


ignore = {
	"631", "61[124]",
	"542",
	"412",
	"321/bit",
	"21[123]"
}

-- Read-write globals (i.e. they can be defined)
globals = {
	"sbrl_bamboo"
}
-- Read-only globals
read_globals = {
	"minetest",
	"default",
	"vector",
	"assert",
	"bit",
	"it",
	"describe",
	"bonemeal",
	"dofile",
	"PerlinNoise"
}
std = "max"
