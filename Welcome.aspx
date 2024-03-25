<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Login.Welcome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        body {
            background-color: #f5f5f5;
            color: #333333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            color: #333333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .header-buttons {
            display: flex;
            justify-content: flex-start;
            margin-bottom: 20px;
        }

        .header-buttons button {
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 14px;
            text-transform: uppercase;
            transition: background-color 0.3s ease;
            margin-left: 10px;
        }

        .header-buttons button:first-child {
            margin-left: 0;
        }

        .btn-primary {
            background-color: #007bff;
            color: #ffffff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-info {
            background-color: #17a2b8;
            color: #ffffff;
        }

        .btn-info:hover {
            background-color: #117a8b;
        }

        .btn-danger {
            background-color: #dc3545;
            color: #ffffff;
        }

        .btn-danger:hover {
            background-color: #bd2130;
        }
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-weight: normal;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header-buttons">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="貸出情報" />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" OnClick="Button2_Click" Text="登録情報変更" />
                <asp:Button ID="Button3" runat="server" CssClass="btn btn-danger" OnClick="Button3_Click" Text="ログアウト" />
            </div>
            <h1>PC貸出システム</h1>
            <h2><span class="auto-style13">ようこそ</span><asp:Label ID="Label1" runat="server" CssClass="auto-style13"></asp:Label>
                <span class="auto-style12">さん！</span></h2>
            <p>当社の社内用PCレンタルサービスは、社員が業務に必要なパソコンを簡単にレンタルできるサービスです。高性能なPCを利用することで、効率的かつスムーズな業務をサポートします。</p>
            <h2 class="auto-style1">1.レンタルの流れ</h2>
            <p>レンタル手続きは簡単です。まず、社内ポータルにログインし、レンタルページにアクセスします。必要な機種や期間を選択し、申し込みを完了します。管理者の承認後、指定された場所でPCを受け取ることができます。</p>
            <h2 class="auto-style2"><strong>2.返却の流れ</strong></h2>
            <p>レンタル期間が終了したら、PCを指定された場所に返却してください。返却時に、機器の状態を確認し、付属品が揃っていることを確認します。返却後、管理者に報告し、手続きを完了します。</p>
            <h2 class="auto-style1">3.付属品</h2>
            <p>レンタルに含まれる付属品は、一般的なものが揃っています。キーボード、マウス、ケーブル類など、必要なものがすべて付属しています。</p>
            <h2 class="auto-style1">4.注意点</h2>
            <p>レンタル期間中には、貸出物の破損や紛失に注意してください。また、業務以外の目的での利用は禁止されています。セキュリティと業務効率性を保つために、十分にご協力をお願いいたします。</p>
            <h2 class="auto-style1">5.よくある質問</h2>
            <p>Q: レンタル期間を延長することはできますか？<br />
            A: はい、レンタル期間の延長は可能ですが、事前に管理者にご相談ください。</p>
            <p>Q: レンタル中に故障が発生した場合、修理は誰が負担しますか？<br />
            A: レンタル中の故障は弊社が責任を負います。速やかに修理または交換させていただきます。</p>
            <h2 class="auto-style1">6.イベントやキャンペーンの告知</h2>
            <p>期間限定のキャンペーンやイベントを随時開催しています。最新情報は社内ポータルでご確認ください。特別価格や特典など、お得な情報をお見逃しなく。</p>
        </div>
    </form>
</body>
</html>
