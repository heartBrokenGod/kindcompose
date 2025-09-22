# kindcompose
This repository contains the necessary config for local kubernetes cluster setup

## Commands
### Install necessary tools
```bash
make install_all
```
> [!NOTE]
> This installation only works with snap enabled ubuntu distro

### Create development cluster
```bash
make start
```

### Delete development cluster
```bash
make clean
```

### After starting service in kubernetes run the Create development cluster command again
```bash
make start
```
