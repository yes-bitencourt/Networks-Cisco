#SENAI-SW2

enable ou en //Ativar comandos privilegiados
configure terminal ou conf t //Entrar no modo de configuração global
hostname SENAI-SW2 //Definir o nome do host na rede 
show running-config ou sh r //Mostrar informações do sistema em execução
interface port-channel 1 //Selecionar uma interface para configurar
switchport trunk allowed vlan 10,20,30,40 //Permiti a passagem das vlans 
interface range f0/23-24 //Definir o intervalo de interfaces 
channel-group 1 mode active //Definir o modo de operação do etherchannel para ativo
show vlan brief ou sh vl b //Mostrar o resumo da(s) vlan(s)
show vtp status //Mostrar o status do VTP  
username senai privilege 15 secret senai@132 //Criar um usuário + o nível de privilegio + senha 
line vty 0 15 //Acessar os comandos de configuração das linhas virtuais 
transport input telnet //Definir o protocolo telnet para acesso ao terminal remoto 
login local //Verificação de autenticação local 
write memory ou wr //Salvar as configurações da RAM para a NVRAM 

#SENAI-SW1

enable ou en //Ativar comandos privilegiados
configure terminal ou conf t //Entrar no modo de configuração global
hostname SENAI-SW1 //Definir o nome do host na rede 
show running-config ou sh r //Mostrar informações do sistema em execução
interface f0/10 //Acessar a interface Fastethernet 0/10
switchport mode trunk //Definir o modo de comutação da porta como trunk
switchport trunk allowed vlan 10,20,30,40 //Permiti a passagem das vlans
interface port-channel 1 //Selecionar a interface port-channel para configurar
switchport trunk allowed vlan 10,20,30,40 //Permiti a passagem das vlans
interface range f0/23-24 //Definir o intervalo de interfaces 
channel-group 1 mode active //Definir o modo de operação do etherchannel para ativo
show vlan brief ou sh vl b //Mostrar o resumo da(s) vlan(s)
show vtp status //Mostrar o status do VTP  
username senai privilege 15 secret senai@132 //Criar um usuário + o nível de privilegio + senha 
line vty 0 15 //Acessar os comandos de configuração das linhas virtuais 
login local //Verificação de autenticação local
show cdp neighbors //Visualizar as entradas dos vizinhos via CDP 
write memory ou wr //Salvar as configurações da RAM para a NVRAM 

#SENAI-RT

enable ou en //Ativar comandos privilegiados
configure terminal ou conf t //Entrar no modo de configuração global
hostname SENAI-RT //Definir o nome do host na rede 
show running-config ou sh r //Mostrar informações do sistema em execução
interface g0/0 //Acessar a interface
no shutdown //Ligar a interface 
interface g0/0.10 //Acessar a SVI
ip address 192.168.10.1 255.255.255.0 //Cofigurar o IP e a Mascára de sub-rede 
interface g0/0.20 //Acessar a SVI
encapsulation dot1Q 20 //Definir o tipo de encapsulamento 
interface g0/0.30 //Acessar a SVI
ip address 192.168.30.1 255.255.255.0 //Cofigurar o IP e a Mascára de sub-rede 
no interface g0/0.400 //Excluir a SVI
interface g0/0.40 //Criar a SVI
encapsulation dot1Q 40 //Definir o tipo de encapsulamento 
ip address 192.168.40.1 255.255.255.0 //Cofigurar o IP e a Mascára de sub-rede 
username senai privilege 15 secret senai@132 //Criar um usuário + o nível de privilegio + senha 
line vty 0 15 //Acessar os comandos de configuração das linhas virtuais 
login local //Verificação de autenticação local
write memory ou wr //Salvar as configurações da RAM para a NVRAM 

