# nb

### Install `nb`
    $ git clone https://github.com/yhat/bash-nb.git
    $ cd bash-nb
    $ npm install -g 
    
*This doesn't work...yet*

    $ npm install -g nb
    
    
### Get the data

    $ ./scripts/getdata.sh

### Make some predictions

    $ nb monster carnivore hairy fins 

## htmlToText

    # select the entire page and convert to text only
    $ curl http://en.wikipedia.org/wiki/Chupacabra | html2Text 

    # select only the children of the `id="bodyContent"`
    $ curl http://en.wikipedia.org/wiki/Chupacabra | html2Text "#bodyContent" 

    # select bodyContent but leave as plain HTML
    $ curl http://en.wikipedia.org/wiki/Chupacabra | html2Text "#bodyContent" html

