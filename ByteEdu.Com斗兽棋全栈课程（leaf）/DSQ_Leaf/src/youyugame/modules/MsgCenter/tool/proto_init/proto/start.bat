@echo off

protoc Poker_Proto.proto --go_out=../protobuf

echo ��ʼ����proto�ļ�
for %%s in (*.proto) do (
    if not %%s == Poker_Proto.proto (
    echo ���� %%~ns �ļ�
    cd ../protobuf
    mkdir %%~ns
    cd ../proto
    protoc %%s --go_out=../protobuf/%%~ns
    )
)

echo ɾ��proto��ʱ�ļ���
rd /q /s pokerking

echo ������ɣ�
pause 