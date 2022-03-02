# Desolator

**Desolator** is a **website smoke test tool** with additional feature of sending requests through a **torsocks proxy.**

# License

This tool is distributed under [**MIT license**](./LICENSE).

# Disclaimer

This tools is intended for testing and education purposes only. Do not use it on websites you do not own.

Author is not responsible for any misuse of this tool.

# Usage

You need to provide new-line separated list of websites you want tested into [`sites.txt`](./sites.txt) file

## Local

Assuming you have tor and torsocks CLI tool installed on your system you can simply run the script using:

```
sh desolator.sh
```

## Docker

Alternatively you can build and run a docker image using

```
docker build -t desolator .

docker run -it desolator
```
