import boto3

aws_access_key = 'AKIA3TV6GR4KGACAWIGC'
aws_secret_key = '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'
bucket_name = 'compass-uol-desafio'
target_prefix = 'trusted/'
s3 = boto3.client('s3', aws_access_key_id=aws_access_key, aws_secret_access_key=aws_secret_key)

objects = s3.list_objects(Bucket=bucket_name)

i = 1
for obj in objects.get('Contents', []):
    key = obj['Key']
    if key.endswith('.parquet'):
        new_key = target_prefix + key
        copy_source = {'Bucket': bucket_name, 'Key': key}
        s3.copy_object(CopySource=copy_source, Bucket=bucket_name, Key=new_key)
        s3.delete_object(Bucket=bucket_name, Key=key)
        print(f'Arquivo {key} movido para {new_key}')
        print(i)
        i +=1

print('Concluído!')

#Este script precisa ser executado 7 vezes, visto que cada execução move no máximo 1000 arquivos por vez e temos 6829 arquivos .parquet para serem movidos.