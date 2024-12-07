# Mufflora Theme

**Mufflora** is a warm, soft theme that wraps your terminal in a cozy cocoon. Perfect for those cool nights spent working, with gentle hues that make coding feel like a hug. Designed to bring comfort and a playful touch to your Neovim experience, Mufflora is ideal for those who want to keep their terminal environment both relaxing and vibrant.

## Features

- **Warm and Gentle Palette**: Soft, cozy colors that create a comfortable coding environment.
- **Customizable Options**: Tailor the theme to your personal preferences with easy configuration.
- **Transparent Background**: Optional transparency for a more seamless experience.
- **User-friendly Setup**: Simple and intuitive installation process.

## Installation

### Using lazy.nvim

To install Mufflora via `lazy.nvim`, add the following configuration:

```lua
{
  "williamkiddy/neovim", 
  config = function() 
    require("kiddy").load({
      -- Configure Mufflora theme settings here (optional)
    }) 
  end
}

