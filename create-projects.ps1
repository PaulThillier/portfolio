# Run this from D:\Documents\0-Portfolio
# Creates all project markdown files

$projects = @{
"src\content\projects\relay-tester.md" = @"
---
title: Relay Tester
description: Automotive relay tester built for my mechanic job. Outputs relay resistance and activation time on a large LCD with pass/fail LEDs for quick diagnosis.
category: electronics
status: complete
tags: [ATmega, LCD, PCB, Automotive]
versions:
  - tag: v1.0
    date: 2024-06
    title: Initial build
    note: Basic 4-pin relay testing, resistance output
  - tag: v2.0
    date: 2024-10
    title: Full feature release
    note: Added 5-pin mode, 10x stress test mode, green/red pass/fail LEDs
---

Built this relay tester for my job as a mechanic. Gives you resistance, activation time on a large LCD, and an instant pass/fail LED so you can diagnose a relay in seconds.

## Features

- 4-pin and 5-pin relay modes
- Displays coil resistance and activation time
- Green/red LED pass/fail indicator
- 10x stress test mode for catching intermittent failures

## Hardware

- ATmega microcontroller
- 16x2 LCD display
- Custom PCB
"@

"src\content\projects\android-auto.md" = @"
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
"@

"src\content\projects\bmw-k100.md" = @"
---
title: BMW K100 Gear Selector
description: Converts the BMW K100 3-wire V+ gear position output to a 6-wire GND output for an aftermarket speedometer — 5 gears plus neutral.
category: automotive
status: complete
tags: [Signal Conversion, Motorcycle, BMW]
versions:
  - tag: v1.0
    date: 2024-10
    title: Initial build
    note: Working signal converter, installed on bike
---

The BMW K100 outputs gear position as a 3-wire V+ signal, but the aftermarket speedometer I was fitting expects a 6-wire GND-referenced output. This converter bridges the two.
"@

"src\content\projects\smart-weather-station.md" = @"
---
title: Smart Weather Station
description: IoT weather station for my grandpa's garden that logs all sensor data directly to a Google Sheet for easy analysis.
category: iot
status: complete
tags: [ESP32, Google Sheets, IoT, Sensors]
versions:
  - tag: v1.0
    date: 2024-10
    title: Initial deployment
    note: Temperature, humidity, soil moisture logging to Google Sheets
---

Built over the summer for my grandpa's garden. All sensor readings go straight to a Google Sheet via WiFi so he can track conditions over time without any app.
"@

"src\content\projects\smart-blinds.md" = @"
---
title: Smart Blind Opener
description: ESP8266-powered blind opener integrated with IFTTT and Google Assistant to automatically open blinds in the morning.
category: iot
status: complete
tags: [ESP8266, IFTTT, Servo, Google Assistant]
versions:
  - tag: v1.0
    date: 2024-10
    title: Initial build
    note: Basic open/close via Google Assistant voice command
---

Simple but effective — an ESP8266 driving a servo to open the blinds, connected to Google Assistant via IFTTT so they open automatically each morning.
"@

"src\content\projects\chevy-blazer-ac.md" = @"
---
title: Chevy Blazer AC Direction Control
description: ESP32-based controller to automate AC airflow direction in a Chevy Blazer using a micro servo and 12V to 5V conversion.
category: automotive
status: complete
tags: [ESP32, Servo, Automotive, 12V]
versions:
  - tag: v1.0
    date: 2024-12
    title: Initial build
    note: Working servo control, 12V buck converter onboard
---

Wanted to automate the AC vent direction in my Chevy Blazer. Used a mini ESP32, a micro servo, and a 12V to 5V buck converter to fit cleanly into the dash.
"@

"src\content\projects\rfid-safety-card.md" = @"
---
title: RFID Safety Card
description: RFID-based access control safety card system.
category: electronics
status: complete
tags: [RFID, Access Control, Embedded]
versions:
  - tag: v1.0
    date: 2024-10
    title: Initial build
    note: RFID card read/write and access control
---

RFID-based safety card system for access control applications.
"@

"src\content\projects\remote-start.md" = @"
---
title: Remote Start System
description: Custom remote start system for a vehicle.
category: automotive
status: complete
tags: [Embedded, Automotive, RF]
versions:
  - tag: v1.0
    date: 2024-10
    title: Initial build
    note: Working remote start
---

Custom remote start system built from scratch.
"@

"src\content\projects\audio-visualizer.md" = @"
---
title: Audio Visualizer
description: Real-time audio visualizer with LED strip output driven by FFT frequency analysis.
category: electronics
status: wip
tags: [FastLED, FFT, ESP32, LEDs]
versions:
  - tag: v1.0
    date: 2025-10
    title: Basic beat detection
    note: LED strip reacting to audio amplitude
  - tag: v2.0
    date: 2026-01
    title: FFT frequency bands
    note: Full spectrum analysis with per-band LED mapping
---

Real-time audio visualizer using FFT to split audio into frequency bands and map them to an LED strip. Work in progress.
"@

"src\content\projects\spectrum-analyzer.md" = @"
---
title: Spectrum Analyzer FHT
description: Audio spectrum analyzer using Fast Hartley Transform for efficient frequency analysis on microcontroller hardware.
category: electronics
status: wip
tags: [FHT, Arduino, Audio, DSP]
versions:
  - tag: v1.0
    date: 2026-01
    title: Initial FHT implementation
    note: Working frequency analysis on Arduino
---

Spectrum analyzer using the Fast Hartley Transform (FHT) — a more efficient alternative to FFT for real-time frequency analysis on constrained hardware.
"@

"src\content\projects\zeotrope-light.md" = @"
---
title: Zoetrope Light
description: A spinning zoetrope lamp with synchronized LED strobing to create animated light patterns.
category: electronics
status: complete
tags: [LEDs, Motor, Animation, 3D Print]
versions:
  - tag: v1.0
    date: 2025-10
    title: Initial build
    note: Working zoetrope with strobe sync
---

A zoetrope-style lamp where a spinning disc with cutout patterns is strobed by LEDs in sync with the rotation speed to create the illusion of animation.
"@

"src\content\projects\distance-nightlight.md" = @"
---
title: Distance Controlled Nightlight
description: A nightlight that adjusts brightness based on proximity using an ultrasonic distance sensor.
category: electronics
status: complete
tags: [Ultrasonic, LED, Arduino, Sensors]
versions:
  - tag: v1.0
    date: 2024-10
    title: Initial build
    note: Proximity-based brightness control
---

Nightlight that dims or brightens based on how close you are to it — uses an ultrasonic sensor to measure distance and maps it to LED brightness.
"@

"src\content\projects\robotics.md" = @"
---
title: FIRST Robotics — 4 Years
description: Four years competing in the FIRST Robotics Competition throughout high school. The experience that set me on the engineering path.
category: robotics
status: complete
tags: [FIRST, Robotics, Mechanical, Electrical, Java]
versions:
  - tag: Year 1
    date: 2020-01
    title: Freshman year
    note: First season, learning the ropes
  - tag: Year 2
    date: 2021-01
    title: Sophomore year
    note: Took on electrical responsibilities
  - tag: Year 3
    date: 2022-01
    title: Junior year
    note: Lead electrical, designed control systems
  - tag: Year 4
    date: 2023-01
    title: Senior year
    note: Lead engineer, mentored new members
---

Four years in the FIRST Robotics Competition. Went from a freshman who barely knew how to solder to leading the electrical system design as a senior.
"@

"src\content\projects\mustang-underglow.md" = @"
---
title: Mustang Underglow Effects
description: Custom underglow LED system for the Mustang with multiple effects and music reactivity.
category: automotive
status: wip
tags: [FastLED, ESP32, LEDs, Automotive]
versions:
  - tag: v1.0
    date: 2026-01
    title: Static underglow
    note: Basic color control
  - tag: v2.0
    date: 2026-01
    title: Effects and music reactive
    note: Multiple animated effects, beat detection
---

Custom underglow system for the Mustang with music reactivity. Work in progress.
"@

"src\content\projects\suspension-control.md" = @"
---
title: Suspension Control System
description: Electronic control system for managing adjustable suspension settings.
category: automotive
status: wip
tags: [Embedded, Automotive, Suspension]
versions:
  - tag: v1.0
    date: 2024-10
    title: Initial design
    note: Basic damper control
---

Electronic controller for adjustable suspension. Work in progress.
"@

"src\content\projects\adjustable-suspension-mustang.md" = @"
---
title: Adjustable Suspension — Mustang
description: Custom adjustable suspension system for a classic Mustang restomod build.
category: automotive
status: wip
tags: [Fabrication, Suspension, Mustang]
versions:
  - tag: v1.0
    date: 2025-01
    title: Initial design
    note: Concept and measurements
---

Designing and fabricating an adjustable suspension system for a classic Mustang restomod. Work in progress.
"@

"src\content\projects\smart-switches.md" = @"
---
title: Smart Switches
description: Custom smart switch system for home automation with local control and no cloud dependency.
category: iot
status: complete
tags: [ESP8266, Home Automation, MQTT]
versions:
  - tag: v1.0
    date: 2025-03
    title: Initial deployment
    note: Local MQTT control, no cloud
---

Smart switches running on ESP8266 with local MQTT — no cloud dependency, fully self-hosted.
"@

"src\content\projects\alarm-clock.md" = @"
---
title: Alarm Clock
description: Custom-built alarm clock with a unique interface and hardware design.
category: electronics
status: wip
tags: [Embedded, Display, RTC]
versions:
  - tag: v1.0
    date: 2026-01
    title: Initial build
    note: Basic timekeeping and alarm
---

Custom alarm clock. Work in progress.
"@

"src\content\projects\arduino-ohmmeter.md" = @"
---
title: Arduino Ohmmeter
description: Precision ohmmeter built on Arduino for measuring component resistance with multiple range switching.
category: electronics
status: complete
tags: [Arduino, Test Equipment, Analog]
versions:
  - tag: v1.0
    date: 2024-10
    title: Initial build
    note: Multi-range resistance measurement
---

A bench ohmmeter built around Arduino with multiple measurement ranges for accuracy across a wide resistance span.
"@
}

foreach ($path in $projects.Keys) {
    $dir = Split-Path $path
    if (!(Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
    Set-Content -Path $path -Value $projects[$path] -Encoding UTF8
    Write-Host "Created $path"
}

Write-Host "`nAll project files created successfully!"
