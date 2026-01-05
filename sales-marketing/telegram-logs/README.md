# Telegram Logs - Sales & Marketing

Converted Telegram chat exports for sales and marketing team communications.

## Structure

```
telegram-logs/
  /chat-name/
    2025/
      2025-10-02.md
      2025-10-27.md
```

## Features

Each file includes:
- **Date header** with message count
- **Telegram link** to open chat for that day
- **All messages** with author and timestamp
- **Media indicators** (photos/videos/files mentioned but not copied)

## How to Update

To convert new Telegram exports, use the telegram-to-markdown tool from `tools/`.

## Search Examples

```bash
# Find discussions about campaigns
grep -r "campaign" telegram-logs/

# View specific date
cat telegram-logs/chat-name/2025/2025-10-20.md

# Find mentions of specific topics
grep -r "presentation" telegram-logs/
```

---

**Last Updated**: YYYY-MM-DD
