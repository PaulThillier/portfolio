---
title: Android Auto Controller
description: Raspberry Pi-based Android Auto head unit with complex PipeWire/PulseAudio audio routing, OBD-II integration, and a custom 5.1 audio pipeline.
category: embedded
status: complete
tags: [Raspberry Pi, PipeWire, Linux, OBD-II]
versions:
  - tag: v1.0
    date: 2025-06
    title: Basic Android Auto
    note: Hudiy head unit app running on Pi
  - tag: v2.0
    date: 2025-10
    title: Full audio pipeline
    note: Virtual 5.1 null sink, HiFiBerry DAC+, LADSPA EQ, WebRTC echo cancellation, Bluetooth OBD-II
---

A Raspberry Pi running Android Auto via the Hudiy head unit application, with a fully custom audio pipeline built on PipeWire/PulseAudio.

## Audio Pipeline

- Virtual 5.1 null sink for channel routing
- Channel-specific loopbacks to Logitech G430 headset and HiFiBerry DAC+
- LADSPA EQ and WebRTC echo cancellation in the signal chain
- Volume sync via pactl subscribe
- qpwgraph patchbay restoration at startup

## OBD-II Integration

- Bluetooth ELM327 scanner connected via RFCOMM
- Stable serial descriptor path for reliable reconnection
