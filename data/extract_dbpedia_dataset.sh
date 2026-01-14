# The below script downloads the original dataset from DBpedia and converts it to N-Triples (.nt) format

# Make sure to download
#     Java version v17 + 
#     Apache Jena v5.6 +

curl -L -O https://databus.dbpedia.org/dbpedia/mappings/mappingbased-objects/2022.12.01/mappingbased-objects_lang=en.ttl.bz2

export PATH=/home/avishkar/Applications/apache-jena-5.6.0/bin:$PATH # update path
riot --version

bzcat mappingbased-objects_lang=en.ttl.bz2 \
  | riot --syntax=TURTLE --out=NT \
  > mappingbased-objects_lang=en.nt

