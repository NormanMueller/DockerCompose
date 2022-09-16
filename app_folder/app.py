def handler(event, context):
    print ("Hi")
    liste = []
    for e in event:
        print(e)
        liste.append(e)
    return liste