
  -----------------------------
  -- INIT
  -----------------------------

  --get the addon namespace
  local addon, ns = ...
  local cfg = ns.cfg

  -----------------------------
  -- CHARSPECIFIC REWRITES
  -----------------------------

  local player_name, _ = UnitName("player")
  local _, player_class = UnitClass("player")

  -- this file allows you to override default class settings with special settings for your own character
  -- ATTENTION: if you character name contains UTF-8 characters like âôû and such. Make sure this files is saved in UTF-8 file format

  if player_name == "Wolowizard" then
    cfg.rf3_DebuffList = {
      {
        spellid = 33395, --pet spell
        size = 40,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -140, y = 110 },
        unit = "target",
        validate_unit   = true,
        caster          = "pet",
        desaturate      = true,
        move_ingame     = true,
        hide_ooc        = false,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,
          },
        },
      },
    }
  end

  if player_name == "Zork" and player_class == "WARRIOR" then
    --Rothars Buff List
    cfg.rf3_BuffList = {
      --[[
      {
        spellid = 12880, --enrage
        spec = nil,
        size = 36,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -130, y = 147 },
        unit = "player",
        validate_unit   = true,
        ismine          = true,
        desaturate      = true,
        move_ingame     = true,
        --hide_ooc        = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.2,
            icon = 0.6,
          },
        },
      },
      ]]--
      {
        spellid = 469, -- +10% STA
        spelllist = { 469, 90364, 109773, 21562, },
        spec = nil,
        size = 22,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 140, y = 110 },
        unit = "player",
        validate_unit   = true,
        ismine          = false,
        desaturate      = true,
        move_ingame     = true,
        hide_ooc        = false,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,
          },
        },
      },
      {
        spellid = 6673, -- +10% AP / RAP
        spelllist = { 6673, 57330, 19506, 133540, },
        spec = nil,
        size = 22,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 110, y = 110 },
        unit = "player",
        validate_unit   = true,
        ismine          = false,
        desaturate      = true,
        move_ingame     = true,
        hide_ooc        = false,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,
          },
        },
      },
      {
        spellid = 112048, --shield barrier
        spec = 3,
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -98, y = 110 },
        unit = "player",
        validate_unit   = true,
        ismine          = true,
        desaturate      = true,
        move_ingame     = true,
        --hide_ooc        = true,
        show_value      = 1,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.2,
            icon = 0.6,
          },
        },
      },
      {
        spellid = 132365, --vengeance
        spec = 3,
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -60, y = 110 },
        unit = "player",
        validate_unit   = true,
        ismine          = true,
        desaturate      = true,
        move_ingame     = true,
        --hide_ooc        = true,
        show_value      = 1,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.2,
            icon = 0.6,
          },
        },
      },
      {
        spellid = 132404, --shield block
        spec = 3,
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -136, y = 110 },
        unit = "player",
        validate_unit   = true,
        ismine          = true,
        desaturate      = true,
        move_ingame     = true,
        --hide_ooc        = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.2,
            icon = 0.6,
          },
        },
      },
    }

    --Rothars Debuff List
    cfg.rf3_DebuffList = {
      {
        spellid = 115798, --weakened blows
        spec = nil,
        size = 22,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -15, y = 110 },
        unit = "target",
        validate_unit   = true,
        ismine          = false,
        desaturate      = true,
        move_ingame     = true,
        hide_ooc        = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,
          },
        },
      },
      {
        spellid = 113746, --weakened armor
        spec = nil,
        size = 22,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 15, y = 110 },
        unit = "target",
        validate_unit   = true,
        ismine          = false,
        desaturate      = true,
        move_ingame     = true,
        hide_ooc        = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,
          },
        },
      },
      {
        spellid = 81326, --physical vulnerability
        spec = nil,
        size = 22,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 45, y = 110 },
        unit = "target",
        validate_unit   = true,
        ismine          = false,
        desaturate      = true,
        move_ingame     = true,
        hide_ooc        = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,
          },
        },
      },
      {
        spellid = 115767, --deep wounds
        spec = nil,
        size = 22,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 75, y = 110 },
        unit = "target",
        validate_unit   = true,
        ismine          = true,
        desaturate      = true,
        move_ingame     = true,
        hide_ooc        = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,
          },
        },
      },
      {
        spellid = 86346, --colossus
        spec = 2,
        size = 36,
        framestrata = "BACKGROUND",
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 0, y = 147 },
        unit = "target",
        validate_unit   = true,
        ismine          = true,
        desaturate      = true,
        move_ingame     = true,
        hide_ooc        = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.2,
            icon = 0.6,
          },
        },
      },
    }

  --Rothars Cooldown List
  --[[
  cfg.rf3_CooldownList = {
      {
        spellid = 118000, --dragon roar
        spelllist = { 118000, 46968, 46924, },
        --spec = 1,
        size = 50,
        framestrata = "LOW",
        pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 0, y = 0 },
        desaturate      = true,
        move_ingame     = true,
        hide_ooc        = true,
        alpha = {
          cooldown = {
            frame = 0,
            icon = 0.6,
          },
          no_cooldown = {
            frame = 1,
            icon = 1,
          },
        },
      },
      {
        spellid = 86346, --colossus
        spec = 2,
        size = 30,
        framestrata = "LOW",
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 0, y = 180 },
        desaturate      = true,
        move_ingame     = true,
        hide_ooc        = true,
        alpha = {
          cooldown = {
            frame = 0.9,
            icon = 1,
          },
          no_cooldown = {
            frame = 1,
            icon = 1,
          },
        },
      },
    }
    ]]

  end
