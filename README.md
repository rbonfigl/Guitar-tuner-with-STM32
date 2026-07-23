# Guitar-tuner-w/STM32
# Real-Time Guitar Tuner — STM32 Nucleo F401RE

A real-time guitar tuner built on an STM32F401RE (ARM Cortex-M4), combining interrupt-driven ADC audio capture, a CMSIS-DSP FFT pipeline for pitch detection, an SPI-DMA-driven TFT display, and a custom analog preamp PCB designed in KiCad.



https://github.com/user-attachments/assets/10d2ae89-6fe6-425d-96f3-400467c1dd40

<img width="3024" height="4032" alt="IMG_0756" src="https://github.com/user-attachments/assets/470dad35-7601-4ddf-a868-eed8dc7da9bf" />




## Overview

Guitar tuning requires accurate, low-latency pitch detection across a wide frequency range (E2–E6, roughly 82Hz–1.3kHz) with enough resolution to distinguish notes that are only a few Hz apart. This project implements the full signal chain needed to do that in real time on a resource-constrained microcontroller: analog signal conditioning, continuous ADC sampling via DMA, an FFT-based frequency analysis pipeline with sub-bin interpolation for precision, and a flicker-free visual display — all running on an STM32F401RE.

## Hardware

- **STM32 Nucleo F401RE** (ARM Cortex-M4, 84MHz)
- **ILI9341 2.8" TFT display** (SPI interface)
- **Custom mono guitar preamp PCB** — designed in KiCad, built around an MCP6002 op-amp

## Signal Chain

```
Guitar Pickup → Preamp PCB (MCP6002) → ADC (DMA, ping-pong) → 
CMSIS-DSP FFT → Peak Detection + Parabolic Interpolation → 
Note/Cents Calculation → ILI9341 Display (SPI DMA)
```

## Key Technical Details

**Audio Capture**
- Timer-triggered ADC sampling at 4kHz
- Ping-pong (double-buffered) DMA transfer, allowing continuous, gap-free audio capture — one buffer is being filled by DMA while the other is processed by the FFT pipeline, eliminating dead time between samples

**Pitch Detection**
- 1024-point CMSIS-DSP FFT covering the full guitar range (E2–E6)
- Parabolic interpolation across FFT bins for sub-bin frequency resolution — since a fixed-size FFT alone can't distinguish frequencies closer together than one bin width, interpolation estimates the true peak location between bins for much finer pitch accuracy
- Harmonic-aware peak selection to avoid locking onto overtones instead of the fundamental frequency

**Display**
- ILI9341 driven over SPI at 21MHz using DMA
- Color-coded tuning bar with real-time cents-offset indication, updating at 8Hz
- Targeted partial-frame redraws (rather than full-screen refreshes) to eliminate visible flicker while keeping the display responsive

**Analog Front End**
- Custom PCB designed in KiCad: MCP6002 op-amp in a non-inverting amplifier configuration
- Signal biased to VCC/2, required for compatibility with the STM32's single-supply ADC (which can only sample voltages between 0V and VCC, so an AC guitar signal centered at 0V must be shifted up before sampling)
- Circuit simulated in ngspice prior to PCB layout to validate gain and biasing before committing to hardware

## Repository Structure

```
Core/           - Application source (Src/) and headers (Inc/)
Drivers/        - STM32 HAL and CMSIS libraries (ST-provided)
DSP_Trial.ioc   - STM32CubeMX configuration file (peripherals, clocks, pin mapping)
```

## Build Instructions

1. Install [STM32CubeIDE](https://www.st.com/en/development-tools/stm32cubeide.html)
2. Open `DSP_Trial.ioc` to regenerate HAL initialization code, or import the project directly into CubeIDE
3. Build and flash to an STM32 Nucleo F401RE
4. Connect the preamp PCB output to the configured ADC input pin, and the ILI9341 display via SPI per the pin configuration in the `.ioc` file

## Preamp PCB
<img width="760" height="570" alt="Screenshot 2026-07-23 160245" src="https://github.com/user-attachments/assets/93f6c4fd-bf7d-4417-a7cc-4d6dcba488d9" />

Designed as a compact (~50×40mm) single op-amp preamp stage specifically for interfacing a passive guitar pickup with the STM32's ADC — presents high input impedance to avoid loading down the pickup, and provides the DC bias needed for single-supply sampling.

## Author

Roman Bonfiglio — Computer Engineering, University of Michigan
