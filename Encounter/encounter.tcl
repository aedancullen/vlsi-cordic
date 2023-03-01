##################################################################
#                                                     
#  Encounter Command File - updated Feb. 22, 2018 for ELEC 422/527
#  Run the design through Encounter for version 14
#  Minor text typo update Feb. 12, 2019
#                                                     
##################################################################
# Initializing commands
set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799

###################################################################
###################################################################
# IMPORTANT - IMPORTANT
# Change only these two lines each time to your top level cell names
set init_verilog "CORDIC_TOP.vh"
set init_top_cell "CORDIC_TOP"
###################################################################
###################################################################
#
# No need to change anything below - standard design flow steps
# IMPORTANT - See note below about floorPlan if density error occurs
#
###################################################################
###################################################################
#
# Set location of Oklahoma State cell library root at Rice U.
set OSUcells_cad "/clear/apps/osu/soc/cadence"

# Set the Library Exchange Format cell library file wrt. the OSU root
set init_lef_file "$OSUcells_cad/lib/ami05/lib/osu05_stdcells.lef"

#set init_mmmc_file mmmc.tcl
set init_gnd_net gnd
set init_design_settop 0
set init_pwr_net vdd

init_design

saveDesign $init_top_cell.enc
getIoFlowFlag
setIoFlowFlag 0


# Floorplan the design with a 1.0 square shape and 0.8 density
# Leave 21 micron space around core for power and ground rings
# If errors occur, such as "ENCSP-2002" or "ENCSP-2020" and the layout does not
# complete, then reduce density from 0.8 in floorPlan to 0.6.
floorPlan -r 1.0 0.8 21 21 21 21

uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect gnd -type pgpin -pin gnd -inst *
globalNetConnect vdd -type pgpin -pin vdd -inst *

set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.2
set sprCreateIeRingSpacing 1.2
set sprCreateIeRingOffset 1.2
set sprCreateIeRingThreshold 1.2
set sprCreateIeRingJogDistance 1.2

setAddRingMode -stacked_via_top_layer metal3
setAddRingMode -stacked_via_bottom_layer metal1

# Add Power and Ground rings around core
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -center 1 -type core_rings -jog_distance 1.8 -threshold 1.8 -nets {gnd vdd} -follow core -layer {bottom metal1 top metal1 right metal2 left metal2} -width 6.0 -spacing 1.2 -offset 1.8

# For large designs intermediate vertical Power and Ground stripes may be
# needed for good uniform voltage. Not needed in smaller designs.
#set sprCreateIeStripeNets {}
#set sprCreateIeStripeLayers {}
#set sprCreateIeStripeWidth 6.0
#set sprCreateIeStripeSpacing 2.4
#set sprCreateIeStripeThreshold 1.2
#setAddStripeMode -stacked_via_top_layer metal3
#setAddStripeMode -stacked_via_bottom_layer metal1
#addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit metal3 -max_same_layer_jog_length 3.6 -snap_wire_center_to_grid Grid -padcore_ring_bottom_layer_limit metal1 -set_to_set_distance 99.9 -skip_via_on_pin Standardcell -padcore_ring_top_layer_limit metal3 -xleft_offset 24 -merge_stripes_value 1.8 -layer metal2 -block_ring_bottom_layer_limit metal1 -width 6.0 -spacing 1.2 -nets {gnd vdd} 


placeDesign

# Special route all of the Power and Ground lines to the rings
sroute -nets {vdd gnd} 

saveDesign $init_top_cell.enc

# Add Filler cells at edges of cell rows
addFiller -cell FILL -prefix FILLER -markFixed

# Do Final global detailed routing of core
routeDesign -globalDetail

# Run DRC and Connection checks
verifyGeometry
verifyConnectivity -type all -noAntenna

# Output GDSII and include layout of subcells to later view in magic
setStreamOutMode -snapToMGrid true -supportPathType4 false
streamOut final.gds -mapFile $OSUcells_cad/flow/ami05/gds2_encounter.map -libName DesignLib -units 100 -merge $OSUcells_cad/lib/source/gds2/osu05_stdcells.gds2 -mode ALL

# Output a final Verilog file and design database with connectivity modeled
saveNetlist final.v
saveDesign $init_top_cell.enc

puts "**************************************"
puts "* Encounter script finished          *"
puts "*                                    *"
puts "* Results:                           *"
puts "* --------                           *"
puts "* Layout:  final.gds                 *"
puts "* Netlist: final.v                   *"
puts "*                                    *"
puts "* Type 'win' to get the Main Window  *"
puts "* Type 'exit' to quit                *"
puts "*                                    *"
puts "**************************************"


