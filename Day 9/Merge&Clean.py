import pandas as pd 
import glob

def merge_clean():

    files = glob.glob('raw_data/*.csv')

    merged_file = pd.concat([pd.read_csv(f) for f in files], ignore_index=True)

    merged_file.drop_duplicates(inplace=True)
    merged_file['Revenue'] = merged_file['Revenue'].fillna(merged_file['Revenue'].mean())
    merged_file['Date'] = pd.to_datetime(merged_file['Date'], format='mixed')

    merged_file.to_csv('Merged_Files.csv', index=False)
    print("Files merged successfully")

merge_clean()