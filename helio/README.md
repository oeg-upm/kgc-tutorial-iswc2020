# Helio tutorial
#### Helio website: https://oeg-upm.github.io/helio/
The Helio tutorial is divided into three show cases. The first shows how Helio is able to publish and RDF file, the second shows how Helio allows to customise HTML views and also create dynamic HTML views over the data, and finally, the third shows how Helio integrates through a plugin existing technologies for the generation of RDF.

The tutorial follows this directory structure

```
helio 
│─ pre-process.sh
│─ gtfs.nt.zip
│─ helio-1-publish  # The first show case
   │─ run.sh 
   └─ mappings
       └─ mapping.json
|─helio-2-views # The second show case
   │─ run.sh 
   |─views
   |   │─ template-stops.html
   |   └─ view-stops.html
   └─ mappings
       └─ mapping.json
└──helio-3-plugin # The third show case
   │─ run.sh
   │─ config.json 
   |─ morph-csv-dump
   |   └─ ... # Directory not detailed here due to its complexity
   └─ mappings
       └─ mapping.json
```

Due to the space limitation of Github, the following steps must be done to run the different Helio show cases.

1. Download the latest [Helio Publisher](https://github.com/oeg-upm/helio/releases/tag/publisher-0.3.5)
2. Unzip the file *gtfs.nt.zip*
3. Paste the unzipped file gtfs.nt and the Helio publisher jar in the respective folder, i.e., helio-1-publish, helio-2-views, or helio-3-plugin.
4. Execute the script run.sh from one of these folders


For more information about using Helio visit our [streamlined use cases](https://github.com/oeg-upm/helio/wiki/Streamlined-use-cases)
