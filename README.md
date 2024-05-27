# PLECS_AFE_3ph_2LVDC

## Description

[PLECS](https://www.plexim.com/products/plecs) simulation of a three-phase active front-end rectifier with a two-level boost voltage source converter. To regulate the power factor and the DC-link voltage, a voltage-oriented-controller (VOC) is implemented, using:
- Discrete voltage and current PI controllers, with feed-forward linear compensation
- Synchronous reference frame phase-locked-loop (SRF-PLL).
- Dead-time compensation, including zero-cross and DCM (**not ready, work in progress**)

## Author 

Dr.-Ing. Alan Wilson [{1}](mailto:alan.wilson@usm.cl)[{2}](mailto:alan.h.wilson@ieee.org)

## File and folder Content

[AFE_3ph_2LVSC_TEST.plecs](AFE_3ph_2LVSC_TEST.plecs): PLECS simulation of the AC-DC rectifier with VOC control, using arbitrary parameters (only for testing).

## Repository

### Clone repository to local

1. Install [Git](https://git-scm.com/downloads)
1. Clone repository
	```powershell
	git clone https://github.com/POWERLAB-UTFSM/PLECS_AFE_3ph_2LVSC.git
	```