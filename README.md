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
    
    P(cryptids|monster)=.9989355354
    P(dinosaurs|monster)=.0010644645
    ==============================
    P(cryptids|carnivore)=.5186436777
    P(dinosaurs|carnivore)=.4813563222
    ==============================
    P(cryptids|hairy)=1.0000000000
    P(dinosaurs|hairy)=0
    ==============================
    P(cryptids|fins)=.9259958352
    P(dinosaurs|fins)=.0740041647
    ==============================

## htmlToText

    # select the entire page and convert to text only
    $ curl http://en.wikipedia.org/wiki/Chupacabra | html2Text 

    # select only the children of the `id="bodyContent"`
    $ curl http://en.wikipedia.org/wiki/Chupacabra | html2Text "#bodyContent" 

    # select bodyContent but leave as plain HTML
    $ curl http://en.wikipedia.org/wiki/Chupacabra | html2Text "#bodyContent" html

