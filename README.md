# Mother Jones pairing vim settings

This is a collection of config settings and list of plugins that we use for pair
programming at Mother Jones.

## Setup

Just paste this into your `.bashrc`, `.zshrc`, or whatever.

```bash
alias vim-pairing='vim -p -N -u "<path/to/this/dir/vimrc>"'
```

In this directory, make sure that you grab all the submodules:

```bash
git submodules update
```

## Configuration

### Plugins

All of the plugin configuration is done in the `conf.d` directory. Each plugin
that has any configuration options set should have a file inside that directory,
preferably with the name of the plugin as the filename.

If you make changes to any of these, you should probably commit them and let
everybody know that you've done so in order to maintain consistency across all
of the machines that your teammates use.

### Personal

If you have any personal settings that you *absolutely* can't live without, add
them to the `local.vim` file in the root directory of this project. It's in the
`.gitignore` file, so don't delete it at random or anything.

## Usage

The first time that you run this, or when you want to update all of the plugins,
run `:PluginInstall` from inside vim.
