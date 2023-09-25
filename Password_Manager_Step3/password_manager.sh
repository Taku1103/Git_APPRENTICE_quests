#!/bin/bash


# パスワード情報を保存するファイル名
PASSWORD_FILE="./passwordfile.txt.gpg"

#変数choiceにExitが入るまでループ
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
            
            # パスワードファイルを復号化して一時ファイルに保存
            gpg --decrypt "$PASSWORD_FILE" > /tmp/passwordfile.txt

            # 新しいパスワード情報を一時ファイルに追加 上書きではない
            echo "$service_name:$user_name:$password" >> /tmp/passwordfile.txt

            # 一時ファイルをパスワードファイルを暗号化
            gpg --yes --encrypt --recipient orzorz1243@gmail.com -o  "$PASSWORD_FILE" /tmp/passwordfile.txt

            # 一時ファイルを削除
            rm /tmp/passwordfile.txt


            echo "パスワードの追加は成功しました。"
            ;;

        "Get Password")  
            echo "サービス名を入力してください："
            read input_service_name

            # パスワードファイルを復号化して、必要な情報を取得
            gpg --decrypt  "$PASSWORD_FILE" | grep "^$input_service_name:" > /tmp/tempfile

            if [ -s /tmp/tempfile ]; then # ファイルが空でなければtrue
                get_service_name=$(cut -d ":" -f 1 /tmp/tempfile)
                get_user_name=$(cut -d ":" -f 2 /tmp/tempfile)
                get_password_name=$(cut -d ":" -f 3 /tmp/tempfile)

                echo "サービス名: $get_service_name"
                echo "ユーザー名: $get_user_name"
                echo "パスワード: $get_password_name"
            else
                echo "そのサービスは登録されていません。"
            fi

            # 一時ファイルを削除
            rm /tmp/tempfile
            ;;


        "Exit") 
            echo "Thank you!" 
            break
            ;;

        * ) #それ以外の文字の処理
            echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
        
    esac
done