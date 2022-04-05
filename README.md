# CMB-S4 data portal prototype

Implementation of data cataloging and sharing for the CMB-S4 experiment based on the LSST DESC Data Portal.

## Permissions

The portal supports 3 levels of permissions:

* Public: accessible to all users that can login to Globus
* CMB-S4: members of the CMB-S4 collaboration (Membership is synchronized using the [Globus SDK](https://zonca.dev/2021/09/globus-groups-python-sdk.html))
* CMB-S4 DM: members of the Data Management group

Please [Open an issue](https://github.com/zonca/cmb-s4-data-portal/issues/new) if permissions are not up to date.

## Add a dataset to the portal

The data is stored on CMB-S4 project space in the NERSC Community File System (CFS) at:

    /global/project/projectdirs/cmbs4/gsharing/globus
    
The portal doesn't support nested folders, so you first need to restructure the data so that they just a single folder or a list of a few folders with only files in them.

We can optionally create a "Dataset filter" (for example in the current portal we have "Data Challenge 1" and "Design tool simulations 1" to group folders together.

There are convenience functions to download an entire folder or the users can select individual files.
