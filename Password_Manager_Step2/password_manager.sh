#!/bin/bash

#choiceにExitが入るまでループ
echo "パスワードマネージャーへようこそ！"

while true; do
    echo "次の選択肢から入力してください(Add Password/Get Password/Exit):" #最後の:は全角でなく半角に修正しました
    read choice

    case $choice in
        "Add Password")  
            echo "サービス名を入力してください："
            read service_name
            echo "ユーザー名を入力してください："
            read user_name
            echo "パスワードを入力してください："
            read password
            
            echo "パスワードの追加は成功しました。"
            echo "$service_name:$user_name:$password" >> ./passwordfile.txt
            ;;

        "Get Password")  
            echo "サービス名を入力してください："
            read input_service_name
            line=$(grep "^$input_service_name:" < ./passwordfile.txt)
            echo "Debug: line=$line" # デバッグ出力
            
            if [ -n "$line" ]; then #一致した文字列が存在するならtrue
                get_service_name=$(echo "$line" | cut -d ":" -f 1)
                get_user_name=$(echo "$line" | cut -d ":" -f 2)
                get_password_name=$(echo "$line" | cut -d ":" -f 3)

                echo "サービス名: $get_service_name"
                echo "ユーザー名: $get_user_name"
                echo "パスワード: $get_password_name"
            else
                echo "そのサービスは登録されていません。"
            fi
            ;;

        "Exit") 
            echo "Thank you!" 
            break
            ;;

        * ) #それ以外の文字の処理
            echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
        
    esac
done




#サービス名を照らし合わせる
#インプットをファイル指定して<で入力リダイレクト入れて
#先頭から指定の長さgrep でその行拾ってきて echoで返す

