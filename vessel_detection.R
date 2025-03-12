library(terra)

# Basic Ship Detection Function
detect_ships <- function(sentinel_raster, window_size = 20, max_ship_size = 200) {
  # Ensure window_size is odd
  window_size <- ifelse(window_size %% 2 == 0, window_size + 1, window_size)
  
  # Apply focal (moving window) to compute local sea average
  focal_matrix <- matrix(1, nrow = window_size, ncol = window_size)
  sea_avg <- focal(sentinel_raster, focal_matrix, fun = mean, na.rm = TRUE)
  
  # Identify ships (pixels significantly brighter than local sea average)
  ships <- sentinel_raster > sea_avg
  
  # Convert to labeled connected components (clusters of ship pixels)
  ships_clusters <- patches(ships)
  
  # Exclude large objects
  ship_sizes <- freq(ships_clusters)
  valid_ship_ids <- ship_sizes[ship_sizes[,2] <= max_ship_size, 1]
  valid_ships <- ships_clusters
  valid_ships[!(valid_ships %in% valid_ship_ids)] <- NA  # Remove oversized detections
  
  return(valid_ships)
}

# Ship Counter Function
ship_counter <- function(valid_ships) {
  unique_ships <- unique(values(valid_ships, na.rm = TRUE))  # Extract unique ship IDs
  return(length(unique_ships))  # Return number of detected ships
}



# Example Usage:
# sentinel_raster <- rast("C:/Users/cleme/Eagle/active_remote_sensing/sar_tutorials/basics/outpout_products/subset_canada_ship_test_RS2-SLC-U18-ASC-22-Aug-2013_02.tif")
sentinel_raster <- rast("C:/Users/cleme/Desktop/line_extract/output_line_test/subset_0_of_S1A_IW_GRDH_1SDV_20250220T154807_20250220T154832_057982_0727FF_64BB_COG_Cal_Spk_TC_crop.tif")
#sentinel_raster <- rast("C:/Users/cleme/Desktop/line_extract/S1A_IW_GRDH_1SDV_20210301T154757_20210301T154822_036807_0453D8_BEA1_COG.SAFE/measurement/s1a-iw-grd-vh-20210301t154757-20210301t154822-036807-0453d8-002-cog.tiff")

#library(terra)
# Load the raster
#r <- rast("your_file.tif")
# Rectify the raster
#sentinel_raster_fixed <- rectify(sentinel_raster)
# Save or use the corrected raster
#writeRaster(r_fixed, "your_fixed_file.tif", overwrite = TRUE)

detected_ships <- detect_ships(sentinel_raster)
plot(detected_ships)  # Visualize detected ships
total_ships <- ship_counter(detected_ships)
print(paste("Total ships detected:", total_ships))
