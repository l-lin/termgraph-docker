# termgraph

Docker wrapper to use [termgraph](https://github.com/mkaz/termgraph) (because I do not like pip binary distribution).

```bash
$ cat <<EOF > ex1.dat
# Example Data Set 1
2007,183.32
2008,231.23
2009,16.43
2010,50.21
2011,508.97
2012,212.05
2014,1.0
EOF

$ docker run -it --rm \
  --volume "$(pwd):/data" \
  --user $(id -u):$(id -g) \
  grc.io/l-lin/termgraph:latest \
    ex1.dat

2007: ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 183.32
2008: ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 231.23
2009: ▇ 16.43
2010: ▇▇▇▇ 50.21
2011: ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 508.97
2012: ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 212.05
2014: ▏ 1.00
```

