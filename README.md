See https://github.com/elementary/calendar/issues/756#issuecomment-1249990402

##### Usage

```
$ nix run --override-input nixpkgs github:NixOS/nixpkgs/gnome
** (process:6426): WARNING **: 22:14:24.736: Application.vala:6: bar
```

```
$ nix run --override-input nixpkgs github:NixOS/nixpkgs/nixos-unstable
** (process:5433): WARNING **: 22:14:11.281: Application.vala:6: foo
** (process:5433): WARNING **: 22:14:11.283: Application.vala:6: bar
```
