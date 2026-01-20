#criando um chatbot com a API do GMINI bot de conversação llm básico com loop 

#primeiro importamos a api do GMINI e apelidamos como genai
import google.genai as genai
#aqui inserimos uma chave de api para ativar o acesso a api
api_key = 'my_secret_key'
#outra variavel para executar a chave de acesso
client = genai.Client(api_key=api_key)
loop while que executa o chat até o usuario pedir para sair
while True:
    #aqui inserimos uma variavel que está executando o input ou a entrada de dados do cliente/usuario
    contents = input(f'Olá {client} como posso te ajudar hoje?   ')
    #condição para o chat encerrar ao usuario digitar 'sair'
    if contents == 'sair':
        #imprime uma mensagem de encerramento do chat com a função break para encerrar
        print('Encerrando programa caso precise de algo não deixe de nos retornar!')
        break
    # caso o usuario digite qualquer outra coisa executa o chat
    else:
        # responde o usuario e executa o modelo do GMINI  2.0
        response = client.models.generate_content(
            model="gemini-2.0-flash",
            contents= contents
        )
        #imprime a resposta ao usuario
        print(response.text)
