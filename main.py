"""Minimum viable Ainfera example — pure OpenAI SDK, no other deps."""

import os

from openai import OpenAI

client = OpenAI(
    api_key=os.environ["AINFERA_API_KEY"],
    base_url="https://api.ainfera.ai/v1",
)

response = client.chat.completions.create(
    model="claude-opus-4-7",
    messages=[
        {"role": "user", "content": "Say hello in one sentence."},
    ],
)

print(response.choices[0].message.content)
print(f"\nModel:  {response.model}")
print(f"Tokens: {response.usage.total_tokens}")
print("Audit:  see x-ainfera-audit-url response header, or https://app.ainfera.ai")
