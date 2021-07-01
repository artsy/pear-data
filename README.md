# Artsy's .pear-data 💜

## Get latest and merge with your local .pear-data

```sh
curl https://raw.githubusercontent.com/artsy/pear-data/main/.pear-data --output /tmp/artsy-pear-data
jq -s '{ current: .[0].current, known: (.[1].known + .[0].known) | unique }' ~/.pear-data /tmp/artsy-pear-data > ~/.pear-data
```

## Context
[Jon](https://github.com/jonallured)'s amazing [pear](https://github.com/jonallured/pear) is a tool many of us use, here at Artsy. Often we have new engineers joining us, and we wanted an easy way to add their data to our `.pear-data`. Now we have them all in this repo, and anyone can add more, themselves or others.
