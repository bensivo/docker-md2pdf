# Markdown to PDF

A Docker-based utility for converting markdown documentation into PDF documents. Based on Wandmalfarbe's pandoc template at https://github.com/Wandmalfarbe/pandoc-latex-template.

## Usage
Build the docker image with 
```
docker build -t md2pdf .
```

Then run it with
```
docker run -v ${PWD}:/workdir md2pdf master.md master.pdf
```


## Alias
You can create a simple bash function for this command like so:
```
function md2pdf() {
    docker run -v ${PWD}:/workdir md2pdf $1 $2
}
```

Put this in your bashrc, and run it anywhere
