# Garry's Mod Addon Template

A comprehensive template for creating Garry's Mod addons with proper structure and examples.

## Features

- ✅ Proper addon.json configuration for Steam Workshop
- ✅ Organized Lua directory structure
- ✅ Example autorun scripts (client, server, shared)
- ✅ Example entity with full implementation
- ✅ Example weapon (SWEP) template
- ✅ Directory structure for materials, models, and sounds
- ✅ Pre-configured .gitignore
- ✅ MIT License included

## Directory Structure

```
gmod-addon-test/
├── addon.json                    # Workshop metadata
├── LICENSE                       # License file
├── README.md                     # This file
├── lua/                         # Lua code directory
│   ├── autorun/                 # Auto-executed scripts
│   │   ├── sh_example.lua       # Shared (client & server)
│   │   ├── client/              
│   │   │   └── cl_example.lua   # Client-only
│   │   └── server/              
│   │       └── sv_example.lua   # Server-only
│   ├── entities/                # Custom entities
│   │   └── example_entity/      
│   │       ├── init.lua         # Server-side
│   │       ├── cl_init.lua      # Client-side
│   │       └── shared.lua       # Shared
│   └── weapons/                 # Custom weapons (SWEPs)
│       └── weapon_example/      
│           └── shared.lua       # Weapon definition
├── materials/                   # Custom materials (.vmt, .vtf)
│   └── models/                  # Model textures
├── models/                      # Custom models (.mdl, .vvd, .vtx, .phy)
└── sound/                       # Custom sounds (.wav, .mp3)
    └── custom/                  # Your custom sounds
```

## Getting Started

### 1. Clone or Download

```bash
git clone https://github.com/Pumbaa05/gmod-addon-test.git
cd gmod-addon-test
```

### 2. Customize

1. Edit `addon.json` to set your addon's title, type, and tags
2. Replace example code with your own
3. Add your custom materials, models, and sounds
4. Update this README with your addon's information

### 3. Installation

#### Local Development
Copy the addon folder to your Garry's Mod addons directory:
```
GarrysMod/garrysmod/addons/your-addon-name/
```

#### Steam Workshop
1. Configure `addon.json` with your addon details
2. Use the GMod Publishing tool or gmad/gmpublish utilities
3. Upload to Steam Workshop

## Usage Examples

### Autorun Scripts

Files in `lua/autorun/` run automatically when the addon loads:
- Files in `lua/autorun/` run on both client and server
- Files in `lua/autorun/client/` run only on clients
- Files in `lua/autorun/server/` run only on the server

### Creating Entities

Entities go in `lua/entities/entity_name/`:
- `init.lua` - Server-side code
- `cl_init.lua` - Client-side code
- `shared.lua` - Shared information (name, category, etc.)

### Creating Weapons

Weapons (SWEPs) go in `lua/weapons/weapon_name/`:
- `shared.lua` - All weapon code (or separate into init.lua and cl_init.lua)

### Console Commands

Test the example commands:
```
addon_test          # Server command
addon_test_client   # Client command
```

## Customization

### addon.json

Edit the `addon.json` file to configure your addon:

```json
{
    "title": "Your Addon Name",
    "type": "ServerContent",
    "tags": ["fun", "realism"],
    "ignore": [
        "*.md",
        "*.git*",
        "LICENSE"
    ]
}
```

**Types:** ServerContent, gamemode, map, weapon, vehicle, npc, entity, tool, effects, model

**Tags:** fun, roleplay, scenic, movie, realism, cartoon, water, comic, build

## Best Practices

1. **Naming Conventions**
   - Prefix your entities/weapons with your addon name to avoid conflicts
   - Use lowercase with underscores: `myaddon_entity_name`

2. **File Prefixes**
   - `cl_` - Client-only files
   - `sv_` - Server-only files
   - `sh_` - Shared files

3. **Networking**
   - Use `AddCSLuaFile()` to send client files
   - Use `include()` to load shared code
   - Use `SetupDataTables()` for networked variables

4. **Performance**
   - Avoid Think() hooks when possible
   - Use timers instead of constant checks
   - Clean up after yourself (remove entities, stop sounds)

5. **Security**
   - Validate all user inputs
   - Don't trust the client
   - Use proper permission checks

## Resources

- [Garry's Mod Wiki](https://wiki.facepunch.com/gmod/)
- [GLua Reference](https://wiki.facepunch.com/gmod/~Lua)
- [Steam Workshop](https://steamcommunity.com/app/4000/workshop/)
- [Facepunch Forums](https://forum.facepunch.com/f/gmod/)

## License

This template is released under the MIT License. See the [LICENSE](LICENSE) file for details.

You are free to use this template for your own addons, commercial or non-commercial.

## Contributing

Feel free to submit issues, fork the repository, and create pull requests for any improvements.

## Credits

Created as a starting template for Garry's Mod addon development.