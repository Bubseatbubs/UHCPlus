import csv
import json
import textwrap
from pathlib import Path

def csv_to_loot_table(csv_file_path: str, output_file_path: str):
    """
    Read CSV of augments and emit a single-pool loot table JSON
    with one 'minecraft:item' entry per augment. Descriptions are
    word-wrapped at 40 chars and emitted as multiple lore lines.
    Also hides armor/weapon attribute tooltips.
    """
    pool = {
        "rolls": 1,
        "entries": []
    }

    with open(csv_file_path, newline="", encoding="utf-8") as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            aug_id = int(row["ID"])
            aug_name = row["Augment"]
            item = row["Item"]
            description = row["Description"]
            wrapped = textwrap.wrap(description, width=40)
            lore_lines = [
                {"text": line, "color": "white", "italic":False}
                for line in wrapped
            ]

            entry = {
                "type": "minecraft:item",
                "name": f"minecraft:{item}",
                "weight": 1,
                "functions": [
                    {"function": "minecraft:set_count", "count": 1},
                    {
                        "function": "minecraft:set_custom_data",
                        "tag": f"{{uhcp_augSelect:1b,augment:{aug_id}s}}"
                    },
                    {
                        "function": "minecraft:set_name",
                        "target": "item_name",
                        "name": [
                            {
                                "text": aug_name,
                                "color": "gold",
                                "bold": True
                            }
                        ]
                    },
                    {
                        "function": "minecraft:toggle_tooltips",
                        "toggles": {
                            "minecraft:attribute_modifiers": False
                        }
                    },
                    {
                        "function": "minecraft:set_lore",
                        "lore": lore_lines,
                        "mode": "replace_all"
                    }
                ],
                "conditions": [
                    {
                        "condition": "minecraft:inverted",
                        "term": {
                            "condition": "minecraft:entity_properties",
                            "entity": "this",
                            "predicate": {
                                "slots": {
                                    "container.*": {
                                        "predicates": {
                                            "minecraft:custom_data":
                                                f"{{augment:{aug_id}s}}"
                                        }
                                    }
                                }
                            }
                        }
                    }
                ]
            }

            pool["entries"].append(entry)

    loot_table = {"pools": [pool]}

    out_path = Path(output_file_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    with open(out_path, "w", encoding="utf-8") as outf:
        json.dump(loot_table, outf, indent=2)
    print(f"Wrote loot table to {out_path}")

if __name__ == "__main__":
    csv_in = "scripts/augments.csv"
    json_out = "scripts/gold.json"
    csv_to_loot_table(csv_in, json_out)