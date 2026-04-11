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
