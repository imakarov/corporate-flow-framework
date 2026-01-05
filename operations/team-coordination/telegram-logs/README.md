# Telegram Logs - Team Coordination

*Released by [Co.Actor](https://co-actor.com) — convert your team expertise into inbound leads*

Converted Telegram chat exports for team communications.

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
# Find discussions about specific topic
grep -r "topic" telegram-logs/

# View specific date
cat telegram-logs/chat-name/2025/2025-10-20.md
```

---

**Last Updated**: YYYY-MM-DD
