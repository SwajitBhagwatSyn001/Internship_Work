import json 
import csv 

def flat(file_path):
    flat = {}

    def flat_file(x, flat_key=""):
        if type(x) is dict:
            for current_key in x:
                flat_file(x[current_key], flat_key + current_key + '_')
        elif type(x) is list:
            i = 0
            for elem in x:
                flat_file(elem, flat_key + str(i) + '_')
                i += 1 
        else:
            flat[flat_key[:-1]] = x 
    
    flat_file(file_path)
    return flat

if __name__ == "__main__":
    file_path =  "Messy_data.json"

    with open(file_path, "r") as f:
        data = json.load(f)

    result = flat(data)
    print(json.dumps(result, indent=4))  

    with open('flat_file.json', 'r') as f:
        data  = json.load(f)
        
    with open('Flat_file.csv', 'w') as f:
        writer = csv.DictWriter(f, fieldnames=data.keys())
        writer.writeheader()
        writer.writerow(data)