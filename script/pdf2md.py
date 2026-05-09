import os
import pymupdf4llm
from pathlib import Path

source_dir = Path("学习通资料/TD练习")
dest_dir = Path("学习通资料/TD练习-md")

# Ensure destination directory exists
dest_dir.mkdir(parents=True, exist_ok=True)

for pdf_file in source_dir.glob("*.pdf"):
    md_file = dest_dir / (pdf_file.stem + ".md")
    print(f"Converting {pdf_file} to {md_file}...")

    # Convert PDF to Markdown
    try:
        md_text = pymupdf4llm.to_markdown(str(pdf_file))
        md_file.write_text(md_text, encoding="utf-8")
        print(f"Success: {md_file}")
    except Exception as e:
        print(f"Failed to convert {pdf_file}: {e}")

print("All conversions completed.")