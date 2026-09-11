# Copilot Instructions

## Project Guidelines
- MPF show_player structure: Runs on events. Under the event name, specify show name, then pass show_tokens (e.g., led: GI), and optional parameters like loops or action or speed. loops takes int: 0 = play once then stop (default), -1 = play forever until stopped. Example: mode_tzeench_started event plays gi_lights_off once and strobe_white forever (-1 loops).
- Godot widget scenes in this MPF-GMC project must use an MPFWidget-derived script as the root node; the root should be recognized as MPFWidget by the widget system.