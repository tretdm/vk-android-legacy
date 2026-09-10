.class Lcom/vkontakte/android/ValidationActivity$1;
.super Landroid/webkit/WebViewClient;
.source "ValidationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ValidationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ValidationActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ValidationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ValidationActivity$1;->this$0:Lcom/vkontakte/android/ValidationActivity;

    .line 37
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 96
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 38
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 39
    .local v5, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity$1;->this$0:Lcom/vkontakte/android/ValidationActivity;
    
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v2
    
    const-string v1, "oauthHost"
    const-string v3, "oauth.vk.com"
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "/blank.html"

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 40
    const/16 v6, 0x23

    const/16 v7, 0x3f

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 43
    iget-object v6, p0, Lcom/vkontakte/android/ValidationActivity$1;->this$0:Lcom/vkontakte/android/ValidationActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "return_result"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44

    const-string v6, "access_token"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "access_token"

    const-string v7, "access_token"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v6, "secret"

    const-string v7, "secret"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v6, "user_id"

    const-string v7, "user_id"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget-object v6, p0, Lcom/vkontakte/android/ValidationActivity$1;->this$0:Lcom/vkontakte/android/ValidationActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v0}, Lcom/vkontakte/android/ValidationActivity;->setResult(ILandroid/content/Intent;)V
    
    .line 50
    const-string v7, "user_id"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    
    sput v7, Lcom/vkontakte/android/Global;->uid:I

    .line 72
    const-string v7, "access_token"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    sput-object v7, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 73
    const-string v7, "secret"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    sput-object v7, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 74
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "uid"

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "sid"

    sget-object v8, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "secret"

    sget-object v8, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "new_auth"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v6, p0, Lcom/vkontakte/android/ValidationActivity$1;->this$0:Lcom/vkontakte/android/ValidationActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/ValidationActivity;->finish()V

    .line 88
    :cond_0
    :goto_1
    return v9

    .line 51
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/ValidationActivity$1;->this$0:Lcom/vkontakte/android/ValidationActivity;

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/ValidationActivity;->setResult(I)V

    goto :goto_0

    .line 56
    :cond_2
    const-string v6, "fail"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 57
    invoke-static {v9, v8}, Lcom/vkontakte/android/LongPollService;->logOut(ZZ)V

    .line 58
    sput v9, Lcom/vkontakte/android/ValidationActivity;->result:I

    .line 59
    iget-object v6, p0, Lcom/vkontakte/android/ValidationActivity$1;->this$0:Lcom/vkontakte/android/ValidationActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/ValidationActivity;->finish()V

    goto :goto_1

    .line 60
    :cond_3
    const-string v6, "cancel"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 61
    sput v9, Lcom/vkontakte/android/ValidationActivity;->result:I

    .line 62
    iget-object v6, p0, Lcom/vkontakte/android/ValidationActivity$1;->this$0:Lcom/vkontakte/android/ValidationActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/ValidationActivity;->finish()V

    goto :goto_1

    .line 63
    :cond_4
    const-string v6, "access_token"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 65
    const-string v6, "access_token"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "token":Ljava/lang/String;
    const-string v6, "secret"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "secret":Ljava/lang/String;
    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 68
    .local v4, "uid":I
    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v6, :cond_5

    .line 69
    invoke-static {v9, v8}, Lcom/vkontakte/android/LongPollService;->logOut(ZZ)V

    .line 71
    :cond_5
    sput v4, Lcom/vkontakte/android/Global;->uid:I

    .line 72
    sput-object v3, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 73
    sput-object v2, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 74
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "uid"

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "sid"

    sget-object v8, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "secret"

    sget-object v8, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "new_auth"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "secret":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "uid":I
    const/4 v6, 0x2

    sput v6, Lcom/vkontakte/android/ValidationActivity;->result:I

    .line 83
    iget-object v6, p0, Lcom/vkontakte/android/ValidationActivity$1;->this$0:Lcom/vkontakte/android/ValidationActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/ValidationActivity;->finish()V

    goto/16 :goto_1

    .line 86
    :cond_7
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
