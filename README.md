See https://github.com/elementary/calendar/issues/756#issuecomment-1249990402

##### Usage

glib 2.73.1+:

```
$ nix run --override-input nixpkgs github:NixOS/nixpkgs/gnome
** (process:6426): WARNING **: 22:14:24.736: Application.vala:6: bar
```

Older glib:

```
$ nix run --override-input nixpkgs github:NixOS/nixpkgs/nixos-unstable
** (process:5433): WARNING **: 22:14:11.281: Application.vala:6: foo
** (process:5433): WARNING **: 22:14:11.283: Application.vala:6: bar
```

##### Status

This is later discussed in [#gtk:gnome.org](https://matrix.to/#/!aUhETchlgthwWVQzhi:matrix.org/$166465243532985RGFsL:matrix.org?via=gnome.org&via=matrix.org&via=mozilla.org) and a possible fix is https://github.com/elementary/calendar/pull/763.
