# To use: Place a CSV file called "augments.csv" with the columns ID, Augment, Item, and Description
# into this folder, then run. You should then see an "announce.mcfunction" automatically populate
# which you can then copy and paste into augments/announce/[tier]

import csv

def csv_to_tellraw_commands_formatted(csv_file_path, output_file_path):
    """Convert CSV file to Minecraft tellraw commands with better formatting."""
    
    commands = []
    
    with open(csv_file_path, 'r', newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            augment_id = int(row['ID'])
            name = row['Augment']
            description = row['Description']
            
            command = (
                f'execute as @a[scores={{uhcp_augment={augment_id}}},tag=UHCP_CurrentAnnounce] run tellraw '
                f'@a[tag=UHCP_AugmentAnnounce] ['
                f'{{"selector":"@s"}},'
                f'{{"text": ": ","color":"white"}},'
                f'{{"text":"{name}","color":"gold","hover_event":{{"action":"show_text","value":"{description}"}}}}]'
            )
            commands.append(command)
        commands.append("tag @a remove UHCP_CurrentAnnounce")
        
    with open(output_file_path, 'w', encoding='utf-8') as outfile:
        for command in commands:
            outfile.write(command + '\n')
    
    print(f"Tellraw commands created successfully: {output_file_path}")
    print(f"Total augments processed: {len(commands) - 1}") 

if __name__ == "__main__":
    csv_file = "scripts/augments.csv"  # Input CSV File
    output_file_formatted = "scripts/announce.mcfunction"
    csv_to_tellraw_commands_formatted(csv_file, output_file_formatted)