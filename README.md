# Stoic-SimpleWeaponSearch

`Stoic-SimpleWeaponSearch` is a FiveM resource designed to provide roleplaying servers with a realistic and interactive weapon search system. Players with specific job roles (such as police officers) can initiate a search on other players to check for weapons. The target player has a chance to "hide" their weapons using a skill check, adding a layer of interaction and unpredictability.

## Features

- **Job Restricted**: Only players with specific jobs (e.g., police, sheriff) can initiate weapon searches.
- **Skill Checks**: Target players can attempt to hide their weapons through a skill-based mini-game.
- **Notification System**: Both search initiators and targets receive clear, informative notifications about the outcome of the search.
- **Configurable**: Easy to modify job permissions and weapon list via the configuration file.

## Prerequisites

Before installing, ensure your FiveM server has the following:
- FiveM server setup
- ND_Core (or another core resource providing player job data you will have to convert if so.)
- ox_lib (for notification handling)

## Installation

1. **Clone or download the repository**
   ```bash
   git clone https://github.com/your-github-username/Stoic-SimpleWeaponSearch.git
   ```
2. **Copy to your resources directory**

   Place the `Stoic-SimpleWeaponSearch` folder into your server's `resources` directory.

3. **Add to your server.cfg**

   Ensure the resource is started after its dependencies. Add the following line to your `server.cfg`:
   ```cfg
   ensure Stoic-SimpleWeaponSearch
   ```

4. **Configure the resource**

   Edit the `config.lua` file to set up the jobs allowed to perform weapon searches and customize the weapon list as needed.

## Usage

- **Starting a Search**: In-game, players with the appropriate job role can use the `/checkweapons <playerID>` command where `<playerID>` is the server ID of the player they wish to search.
- **Skill Check**: Automatically initiated for the target player to attempt hiding their weapons.
- **Outcome**: Both parties receive notifications about the search results.

## Configuration

Edit the `config.lua` file to specify which jobs can use the weapon search command and manage the weapons list. Example settings:

```lua
Config.AllowedJobs = {
    ["lspd"] = true,
    ["bcso"] = true,
    ["sahp"] = true,
    ["lsfd"] = true
}

-- Pre-made list, yet can be expanded upon.
Config.WeaponsList = {
    { hash = `WEAPON_PISTOL`, name = "Pistol" },
    ...
}
```

