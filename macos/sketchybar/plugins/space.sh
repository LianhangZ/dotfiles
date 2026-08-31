#!/bin/sh

. "$CONFIG_DIR/plugins/app_icon.sh"

SID="${NAME#space.}"
FOCUSED_WORKSPACE="${FOCUSED_WORKSPACE:-$(aerospace list-workspaces --focused 2>/dev/null)}"
WINDOW_COUNT="$(aerospace list-windows --workspace "$SID" --count 2>/dev/null || echo 0)"

APP_ICONS=""
if [ "$WINDOW_COUNT" -gt 0 ]; then
  APPS="$(aerospace list-windows --workspace "$SID" --format "%{app-name}" 2>/dev/null | awk '!seen[$0]++')"
  while IFS= read -r app; do
    [ -z "$app" ] && continue
    APP_ICONS="${APP_ICONS} $(app_icon "$app")"
  done <<EOF
$APPS
EOF
fi

LABEL_DRAWING="$([ -n "$APP_ICONS" ] && printf on || printf off)"

if [ "$SID" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set "$NAME" drawing=on background.drawing=on label="$APP_ICONS" label.drawing="$LABEL_DRAWING"
elif [ "$WINDOW_COUNT" -gt 0 ]; then
  sketchybar --set "$NAME" drawing=on background.drawing=off label="$APP_ICONS" label.drawing=on
else
  sketchybar --set "$NAME" drawing=off background.drawing=off label="" label.drawing=off
fi
