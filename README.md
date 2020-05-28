# Minetest-bamboo

> A bamboo plant mod for Minetest

This mod adds a simple fast-growing bamboo plant and an associated block to Minetest.

 - It grows up to 25 blocks tall, or as low as 4 blocks tall
 - Every 45 seconds it has a 1 in 4 chance of of growing
 - It requires an air node above it in order to grow
 - It can be placed on soil or sand, but not if it's wet or dark (below light level 8)s
 - It can't be placed with water directly next to it (i.e. on the same level) either
 - Breaking a lower node in the plant causes all the upper ones to break too
 - It can be used as a fuel source, but it's pretty terrible :P
 - 9 x bamboo can be crafted into a bamboo block, which can serve as wooden planks
 - 2 bamboo blocks can be shapelessly crafted back into bamboo
 - Bamboo blocks are ~33% more fuel efficient

Currently, it doesn't yet spawn in the world (but this is a planned feature, I just haven't done the research on how this is possible yet)


## Getting started
Install it by cloning this repository into your world's `worldmods` folder:

```bash
cd path/to/world/worldmods;
git clone https://github.com/sbrl/Minetest-bamboo.git bamboo
```

Then, restart your Minetest server.


## Contributing
Contributions are welcome! Please open an issue or PR against this repository.


## Licence
The code for this Mod is licenced under the _Mozilla Public Licence 2.0_ (see the `LICENSE` file in this repository for details).

The textures for this Mod (which I drew myself in [Piskel](https://www.piskelapp.com/)) are licenced under the _[Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/) Licence_.
