# 01deg_jra55_ryf
0.1 degree ACCESS-OM2 experiment with JRA55 RYF atmospheric forcing.

This configuration is designed to run the default ACCESS-OM2-01 with the JRA55-v1.3 RYF9091 forcing.
Note that the default timestep for this run is 600 seconds, but you may need shorter timesteps during the first year of model equilibration.

Experiment: JRA55-v1.3 RYF9091 forcing has been modified by applying spatially varying global anomalies from CMIP6 SSP245 for the period 2081-2100 for the following variables:
        -u_10
        -v_10
        -surface air temp
        -downwelling longwave radiation
        -specific humidity (calculated to maintain constant relative humidity - i.e. not a CMIP6 mean)
        -rainfall
        -snowfall
        -runoff (from Golledge et al., 2019)
