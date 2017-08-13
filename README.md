# jupyter-ihaskell-playground

A Docker based Jupyter environment to interact with the IHaskell kernel. Included notebooks are associated with the exercises in [Haskell Programming: From First Principles](http://haskellbook.com).

## Usage

First, build the container image (this takes a while):

```bash
$ docker-compose build
```

Then, launch it with Docker Compose and copy the URL into your browser:


```bash
$ docker-compose up
Starting dockerihaskell_ihaskell_1 ... 
Starting dockerihaskell_ihaskell_1 ... done
Attaching to dockerihaskell_ihaskell_1
ihaskell_1  | [W 15:08:56.105 NotebookApp] WARNING: The notebook server is listening on all IP addresses and not using encryption. This is not recommended.
ihaskell_1  | [I 15:08:56.112 NotebookApp] Serving notebooks from local directory: /notebooks
ihaskell_1  | [I 15:08:56.113 NotebookApp] 0 active kernels 
ihaskell_1  | [I 15:08:56.113 NotebookApp] The Jupyter Notebook is running at: http://[all ip addresses on your system]:8888/?token=c5df5319d5315da773ee9e7bfaf7a563350ff4a882ea98a3
ihaskell_1  | [I 15:08:56.113 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
ihaskell_1  | [W 15:08:56.114 NotebookApp] No web browser found: could not locate runnable browser.
ihaskell_1  | [C 15:08:56.115 NotebookApp] 
ihaskell_1  |     
ihaskell_1  |     Copy/paste this URL into your browser when you connect for the first time,
ihaskell_1  |     to login with a token:
ihaskell_1  |         http://localhost:8888/?token=c5df5319d5315da773ee9e7bfaf7a563350ff4a882ea98a3
```
