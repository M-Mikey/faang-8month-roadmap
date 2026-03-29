#!/bin/bash

# Progress Tracker Script
# Run this daily to see your progress

echo "================================"
echo "  FAANG PREP PROGRESS TRACKER  "
echo "================================"
echo ""

# Calculate days elapsed
START_DATE="2026-04-07"
CURRENT_DATE=$(date +%Y-%m-%d)
DAYS_ELAPSED=$(( ( $(date -d "$CURRENT_DATE" +%s) - $(date -d "$START_DATE" +%s) ) / 86400 ))
DAY_NUM=$((DAYS_ELAPSED + 1))

if [ $DAY_NUM -lt 1 ]; then
    echo "⏳ Preparation starts on: $START_DATE"
    echo "   Days until start: $((-DAYS_ELAPSED))"
    exit 0
fi

if [ $DAY_NUM -gt 240 ]; then
    echo "🎉 CONGRATULATIONS! You completed the 240-day journey!"
    exit 0
fi

# Progress bar
PROGRESS=$((DAY_NUM * 100 / 240))
BAR_LENGTH=50
FILLED=$((PROGRESS * BAR_LENGTH / 100))
EMPTY=$((BAR_LENGTH - FILLED))

echo "📅 Current Day: $DAY_NUM / 240"
echo "📊 Progress: $PROGRESS%"
echo -n "["
printf '%*s' "$FILLED" '' | tr ' ' '='
printf '%*s' "$EMPTY" '' | tr ' ' '-'
echo "]"
echo ""

# Month and week calculation
MONTH=$(((DAY_NUM - 1) / 30 + 1))
WEEK=$(((DAY_NUM - 1) / 7 + 1))

echo "📆 Month: $MONTH / 8"
echo "📆 Week: $WEEK / 34"
echo ""

# Milestones
echo "🎯 Milestones:"
if [ $DAY_NUM -ge 30 ]; then
    echo "  ✅ Month 1 Complete (Foundation + AI)"
else
    echo "  ⏳ Month 1: Day $DAY_NUM/30"
fi

if [ $DAY_NUM -ge 60 ]; then
    echo "  ✅ Month 2 Complete (System Design + Cloud)"
elif [ $DAY_NUM -ge 30 ]; then
    echo "  ⏳ Month 2: Day $((DAY_NUM - 30))/30"
fi

if [ $DAY_NUM -ge 120 ]; then
    echo "  ✅ First 4 Months Complete!"
elif [ $DAY_NUM -ge 60 ]; then
    DAYS_TO_CHECKPOINT=$((120 - DAY_NUM))
    echo "  ⏳ $DAYS_TO_CHECKPOINT days until 4-month checkpoint"
fi

if [ $DAY_NUM -ge 180 ]; then
    echo "  ✅ 6 Months Complete - Application Phase!"
elif [ $DAY_NUM -ge 120 ]; then
    DAYS_TO_APPS=$((180 - DAY_NUM))
    echo "  ⏳ $DAYS_TO_APPS days until application blitz"
fi

echo ""
echo "📝 Today's Task:"
echo "   Check: https://github.com/M-Mikey/faang-8month-roadmap/issues"
echo ""
echo "💪 Keep going! Every day counts."
echo "================================"
