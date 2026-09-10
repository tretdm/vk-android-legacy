.class Lcom/vkontakte/android/SDKAuthActivity$WebClient;
.super Landroid/webkit/WebViewClient;
.source "SDKAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/SDKAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SDKAuthActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/SDKAuthActivity;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/vkontakte/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/SDKAuthActivity;Lcom/vkontakte/android/SDKAuthActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/SDKAuthActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/SDKAuthActivity$1;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SDKAuthActivity$WebClient;-><init>(Lcom/vkontakte/android/SDKAuthActivity;)V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errCode"    # I
    .param p3, "descr"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SDKAuthActivity;->access$200(Lcom/vkontakte/android/SDKAuthActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SDKAuthActivity;->access$200(Lcom/vkontakte/android/SDKAuthActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SDKAuthActivity;->access$300(Lcom/vkontakte/android/SDKAuthActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 253
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 201
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 202
    .local v5, "uri":Landroid/net/Uri;
    const-string v6, "oauth.vk.com"

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "/blank.html"

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 203
    const/16 v6, 0x23

    const/16 v7, 0x3f

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 206
    const-string v6, "error"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 208
    const-string v6, "vk_sdk_auth"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auth not successful [fail]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v1, "result":Landroid/content/Intent;
    const-string v6, "error"

    const-string v7, "error"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v6, "error_reason"

    const-string v7, "error_reason"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v6, "error_description"

    const-string v7, "error_description"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v6, p0, Lcom/vkontakte/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    invoke-virtual {v6, v9, v1}, Lcom/vkontakte/android/SDKAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 215
    iget-object v6, p0, Lcom/vkontakte/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/SDKAuthActivity;->finish()V

    .line 242
    .end local v1    # "result":Landroid/content/Intent;
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 216
    :cond_0
    const-string v6, "access_token"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 217
    const-string v6, "access_token"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "token":Ljava/lang/String;
    const-string v6, "secret"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "secret":Ljava/lang/String;
    const-string v6, "expires_in"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "expiresIn":Ljava/lang/String;
    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 221
    .local v4, "uid":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 222
    .restart local v1    # "result":Landroid/content/Intent;
    const-string v6, "access_token"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    if-eqz v2, :cond_1

    .line 224
    const-string v6, "secret"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    :cond_1
    const-string v6, "user_id"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v7, "https_required"

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "forceHTTPS"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "1"

    :goto_1
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    if-eqz v0, :cond_2

    .line 229
    :try_start_0
    const-string v6, "expires_in"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_2
    :goto_2
    const-string v6, "vk_sdk_auth"

    const-string v7, "Auth ok"

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v6, p0, Lcom/vkontakte/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v1}, Lcom/vkontakte/android/SDKAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 233
    iget-object v6, p0, Lcom/vkontakte/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/SDKAuthActivity;->finish()V

    goto :goto_0

    .line 226
    :cond_3
    const-string v6, "0"

    goto :goto_1

    .line 235
    .end local v0    # "expiresIn":Ljava/lang/String;
    .end local v1    # "result":Landroid/content/Intent;
    .end local v2    # "secret":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_4
    const-string v6, "vk_sdk_auth"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auth not successful [unknown]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v6, p0, Lcom/vkontakte/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    invoke-virtual {v6, v9}, Lcom/vkontakte/android/SDKAuthActivity;->setResult(I)V

    .line 237
    iget-object v6, p0, Lcom/vkontakte/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/SDKAuthActivity;->finish()V

    goto/16 :goto_0

    .line 240
    :cond_5
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    .restart local v0    # "expiresIn":Ljava/lang/String;
    .restart local v1    # "result":Landroid/content/Intent;
    .restart local v2    # "secret":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    .restart local v4    # "uid":I
    :catch_0
    move-exception v6

    goto :goto_2
.end method
