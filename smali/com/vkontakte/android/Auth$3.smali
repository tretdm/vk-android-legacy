.class Lcom/vkontakte/android/Auth$3;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetWallInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$result:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/Auth$3;->val$result:[Z

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 249
    const-string v0, "vk"

    const-string v1, "Get user info FAILED!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/Auth$3;->val$result:[Z

    aput-boolean v2, v0, v2

    .line 251
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;ZZIIIZ)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "exportTwi"    # Z
    .param p4, "exportFb"    # Z
    .param p5, "time"    # I
    .param p6, "intro"    # I
    .param p7, "country"    # I
    .param p8, "hasNewItems"    # Z

    .prologue
    .line 226
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 229
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 230
    const-string v7, "username"

    invoke-interface {v6, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 231
    const-string v7, "userphoto"

    invoke-interface {v6, v7, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 232
    const-string v7, "usercountry"

    move/from16 v0, p7

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 233
    const-string v7, "intro"

    invoke-interface {v6, v7, p6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 234
    const-string v7, "export_twitter_avail"

    invoke-interface {v6, v7, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 235
    const-string v7, "export_facebook_avail"

    invoke-interface {v6, v7, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 236
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "stickers"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "has_new"

    move/from16 v0, p8

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    :try_start_0
    new-instance v1, Landroid/accounts/Account;

    const-string v6, "com.vkontakte.account"

    invoke-direct {v1, p1, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .local v1, "account":Landroid/accounts/Account;
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 241
    .local v3, "am":Landroid/accounts/AccountManager;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v6, v7}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 242
    .local v2, "accountCreated":Z
    const-string v6, "com.android.contacts"

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v2    # "accountCreated":Z
    .end local v3    # "am":Landroid/accounts/AccountManager;
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v5

    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
