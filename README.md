# ainfera-openai-compat — Ainfera + OpenAI SDK

**The simplest possible drop-in.** Works with any client that speaks
OpenAI's API.

## Two env-var change

```bash
# Before
export OPENAI_API_KEY=sk-...
export OPENAI_API_BASE=https://api.openai.com/v1

# After
export OPENAI_API_KEY=ai_infera_...                  # Ainfera key
export OPENAI_API_BASE=https://api.ainfera.ai/v1   # Ainfera endpoint
```

Your existing code keeps working. You now have:

- One Agent Card across providers (L1)
- Drain-proof wallet — survives prompt injection (L3)
- Hash-chained audit per call (L4)
- 5 frontier models via one key: Claude Opus 4.7 · GPT-5.5 · Gemini 3.1 Pro · Grok 4 · Mistral Large 3
- Quality scored by [Artificial Analysis](https://artificialanalysis.ai) per call

> EU AI Act Annex IV ready — every call hash-chained, signed, exportable.

## Quickstart

```bash
git clone https://github.com/ainfera-ai/ainfera-openai-compat
cd ainfera-openai-compat
pip install -r requirements.txt
export AINFERA_API_KEY=ai_infera_...  # https://app.ainfera.ai/signup
python main.py
```

Or with `curl` only — no Python client needed:

```bash
AINFERA_API_KEY=ai_infera_... ./curl-example.sh
```

## What this proves

Ainfera works with **any** client that speaks OpenAI's API:

- LangChain → [ainfera-langchain](https://github.com/ainfera-ai/ainfera-langchain)
- CrewAI → [ainfera-crewai](https://github.com/ainfera-ai/ainfera-crewai)
- Google ADK → [ainfera-google-adk](https://github.com/ainfera-ai/ainfera-google-adk)
- AutoGen, LlamaIndex, Haystack — same pattern
- Your own custom client — same pattern
- `curl` — same pattern (see `curl-example.sh`)

## MCP clients

If you want to call Ainfera from Claude Desktop or Cursor directly, see
[ainfera-mcp](https://github.com/ainfera-ai/ainfera-mcp).

Apache 2.0. © Ainfera Inc. 2026.
