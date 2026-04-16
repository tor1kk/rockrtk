# RockRTK Buildroot

A Buildroot external tree for the [RockRTK board](https://github.com/tor1kk/rockrtk).


## Usage

Clone the `rockrtk` monorepo one level below Buildroot.  
In the Buildroot directory run:

```bash
make BR2_EXTERNAL=../rockrtk/buildroot rockrtk_defconfig
```

## License

- `board/`, `configs/`, `Config.in`, `external.*` — [MIT](LICENSE)
- `board/rockrtk/patches/linux/` — GPL-2.0 (derivative works of Linux kernel)
