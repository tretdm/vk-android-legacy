.class public Lcom/vkontakte/android/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.vkontakte.account"

.field public static REAUTH_CANCELED:I

.field public static REAUTH_ERROR_INCORRECT_PASSWORD:I

.field public static REAUTH_OPEN_BROWSER:I

.field public static REAUTH_ERROR_NETWORK:I

.field public static REAUTH_SUCCESS:I

.field public static redirectUri:Ljava/lang/String;

.field private static captchaSid:Ljava/lang/String;

.field static nonce:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I
    
    const/4 v0, 0x3

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    .line 32
    const/4 v0, 0x1

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_NETWORK:I

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I
    
    .line 40
    const-string v0, ""

    sput-object v0, Lcom/vkontakte/android/Auth;->redirectUri:Ljava/lang/String;


    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/vkontakte/android/Auth;->createNonce()V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/vkontakte/android/Auth;->doAuth(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/AuthActivity;)V
    .locals 2
    .param p0, "login"    # Ljava/lang/String;
    .param p1, "pass"    # Ljava/lang/String;
    .param p2, "act"    # Lcom/vkontakte/android/AuthActivity;

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/Auth$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/Auth$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/AuthActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method

.method private static createNonce()V
    .locals 5

    .prologue
    .line 58
    const/16 v3, 0x3d

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 63
    .local v0, "chars":[C
    const-string v3, ""

    sput-object v3, Lcom/vkontakte/android/Auth;->nonce:Ljava/lang/String;

    .line 64
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 65
    .local v2, "r":Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 66
    return-void

    .line 65
    :cond_0
    sget-object v3, Lcom/vkontakte/android/Auth;->nonce:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Auth;->nonce:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    nop

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
    .end array-data
.end method

.method private static doAuth(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p0, "login"    # Ljava/lang/String;
    .param p1, "pass"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    const-string v10, ""

    .line 85
    .local v10, "sig":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 86
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 87
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v13, "login"

    const/4 v14, 0x0

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    const-string v13, "sig"

    const/4 v14, 0x0

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 89
    if-nez p0, :cond_1

    .line 90
    const-string v13, "vk"

    const-string v14, "Login/pass not available, starting AuthActivity"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v2, Landroid/content/Intent;

    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v14, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v2, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v13, 0x30000000

    invoke-virtual {v2, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    .line 235
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "sig":Ljava/lang/String;
    :goto_0
    return v13

    .line 97
    .restart local v10    # "sig":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ":vk.com:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 99
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 100
    const-string v14, "login"

    move-object/from16 v0, p0

    invoke-interface {v13, v14, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 101
    const-string v14, "sig"

    invoke-interface {v13, v14, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 102
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    :cond_1
    const-string v13, "http://%1$s/token?grant_type=password&scope=nohttps&client_id=2274003&client_secret=hHbZxrka2uZ6jB1inYsH&username=%2$s&password=%3$s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;
    
    const/4 v15, 0x0
    
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v1, "oauthHost"

    const-string v3, "api.openvk.org"

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    
    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    if-nez p1, :cond_4

    .end local v10    # "sig":Ljava/lang/String;
    :goto_1
    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, "url":Ljava/lang/String;
    sget-object v13, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 120
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "&captcha_sid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&captcha_key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 121
    const/4 v13, 0x0

    sput-object v13, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    .line 123
    :cond_2
    invoke-static {v11}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v8

    .line 124
    .local v8, "r":[B
    new-instance v9, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-direct {v9, v8, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .local v9, "s":Ljava/lang/String;
    const-string v13, "vk"

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v13, Lorg/json/JSONTokener;

    invoke-direct {v13, v9}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 126
    .local v3, "jo":Lorg/json/JSONObject;
    const-string v13, "error"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 127
    const-string v13, "need_captcha"

    const-string v14, "error"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 128
    const-string v13, "captcha_sid"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    .line 129
    new-instance v2, Landroid/content/Intent;

    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v14, Lcom/vkontakte/android/CaptchaActivity;

    invoke-direct {v2, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v2, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    const-string v13, "url"

    const-string v14, "captcha_img"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    :goto_2
    sget-boolean v13, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    if-eqz v13, :cond_5

    .line 134
    const/4 v13, 0x0

    sput-boolean v13, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    .line 135
    sget-object v13, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    if-eqz v13, :cond_3

    sget-object v13, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_7

    .line 136
    :cond_3
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    goto/16 :goto_0

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v8    # "r":[B
    .end local v9    # "s":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    .restart local v10    # "sig":Ljava/lang/String;
    :cond_4
    move-object/from16 v10, p1

    .line 118
    goto/16 :goto_1

    .line 133
    .end local v10    # "sig":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "jo":Lorg/json/JSONObject;
    .restart local v8    # "r":[B
    .restart local v9    # "s":Ljava/lang/String;
    .restart local v11    # "url":Ljava/lang/String;
    :cond_5
    const-wide/16 v13, 0x64

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 232
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v8    # "r":[B
    .end local v9    # "s":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 233
    .local v12, "x":Ljava/lang/Exception;
    const-string v13, "vk"

    invoke-static {v13, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v12    # "x":Ljava/lang/Exception;
    :cond_6
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_NETWORK:I

    goto/16 :goto_0

    .line 138
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "jo":Lorg/json/JSONObject;
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    .restart local v8    # "r":[B
    .restart local v9    # "s":Ljava/lang/String;
    .restart local v11    # "url":Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-static/range {p0 .. p1}, Lcom/vkontakte/android/Auth;->doAuth(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_0

    .line 140
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_8
    
    const-string v13, "need_validation"

    const-string v14, "error"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_aa

    .line 153
    const-string v14, "redirect_uri"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    
    sput-object v10, Lcom/vkontakte/android/Auth;->redirectUri:Ljava/lang/String;

    .line 154
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I
    
    goto/16 :goto_0

    :cond_aa
    
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    goto/16 :goto_0

    .line 144
    :cond_9
    const-string v13, "access_token"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 145
    const-string v13, "user_id"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/vkontakte/android/Global;->uid:I

    .line 146
    const-string v13, "access_token"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 147
    const-string v13, "secret"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 148
    const/4 v13, 0x1

    sput-boolean v13, Lcom/vkontakte/android/Global;->authOK:Z

    .line 149
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 150
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 151
    const-string v14, "uid"

    sget v15, Lcom/vkontakte/android/Global;->uid:I

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 152
    const-string v14, "sid"

    sget-object v15, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 153
    const-string v14, "secret"

    sget-object v15, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 154
    const-string v14, "new_auth"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 155
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    const/4 v5, 0x1

    .line 159
    .local v5, "needCreateAccount":Z
    :try_start_2
    const-string v13, "android.accounts.AccountManager"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v14, "get"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget-object v17, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    .local v1, "am":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getAccountsByType"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "com.vkontakte.account"

    aput-object v16, v14, v15

    invoke-virtual {v13, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    array-length v4, v13
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    .local v4, "l":I
    if-nez v4, :cond_c

    const/4 v5, 0x1

    .line 166
    .end local v1    # "am":Ljava/lang/Object;
    .end local v4    # "l":I
    :goto_3
    :try_start_3
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 167
    .local v7, "prefs1":Landroid/content/SharedPreferences;
    sget-object v13, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x8

    if-ge v13, v14, :cond_a

    const-string v13, "enableC2DM"

    invoke-interface {v7, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 168
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "enableC2DM"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 172
    :cond_a
    if-eqz v5, :cond_b

    .line 173
    new-instance v13, Lcom/vkontakte/android/api/GetWallInfo;

    sget v14, Lcom/vkontakte/android/Global;->uid:I

    invoke-direct {v13, v14}, Lcom/vkontakte/android/api/GetWallInfo;-><init>(I)V

    .line 174
    new-instance v14, Lcom/vkontakte/android/Auth$2;

    invoke-direct {v14}, Lcom/vkontakte/android/Auth$2;-><init>()V

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/api/GetWallInfo;->setCallback(Lcom/vkontakte/android/api/GetWallInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v13

    .line 227
    invoke-virtual {v13}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 230
    :cond_b
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 161
    .end local v7    # "prefs1":Landroid/content/SharedPreferences;
    .restart local v1    # "am":Ljava/lang/Object;
    .restart local v4    # "l":I
    :cond_c
    const/4 v5, 0x0

    goto :goto_3

    .line 162
    .end local v1    # "am":Ljava/lang/Object;
    .end local v4    # "l":I
    :catch_1
    move-exception v12

    .line 163
    .local v12, "x":Ljava/lang/ClassNotFoundException;
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public static doReauth()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-static {}, Lcom/vkontakte/android/Auth;->createNonce()V

    .line 51
    invoke-static {v0, v0}, Lcom/vkontakte/android/Auth;->doAuth(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v0, v1, :cond_0

    .line 52
    sget-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v0}, Lcom/vkontakte/android/LongPollService;->onReauthError()V

    .line 54
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getCurrentSyncOption(Landroid/content/Context;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    :try_start_0
    const-string v7, "android.accounts.AccountManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "get"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 241
    .local v2, "am":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getAccountsByType"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.vkontakte.account"

    aput-object v10, v8, v9

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 242
    .local v1, "accounts":[Ljava/lang/Object;
    array-length v7, v1

    if-nez v7, :cond_0

    .line 243
    const-string v7, "android.accounts.Account"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "username"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "com.vkontakte.account"

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, "account":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "addAccountExplicitly"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Landroid/os/Bundle;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 245
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/Object;

    .end local v1    # "accounts":[Ljava/lang/Object;
    const/4 v7, 0x0

    aput-object v0, v1, v7

    .line 248
    .end local v0    # "account":Ljava/lang/Object;
    .restart local v1    # "accounts":[Ljava/lang/Object;
    :cond_0
    const-class v7, Landroid/content/ContentResolver;

    const-string v8, "getSyncAutomatically"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 249
    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v1, v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.android.contacts"

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 248
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 250
    .local v5, "syncEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 251
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "sync_all"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 252
    .local v4, "syncAll":Z
    if-nez v5, :cond_1

    const/4 v7, 0x2

    .line 258
    .end local v1    # "accounts":[Ljava/lang/Object;
    .end local v2    # "am":Ljava/lang/Object;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "syncAll":Z
    .end local v5    # "syncEnabled":Z
    :goto_0
    return v7

    .line 253
    .restart local v1    # "accounts":[Ljava/lang/Object;
    .restart local v2    # "am":Ljava/lang/Object;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "syncAll":Z
    .restart local v5    # "syncEnabled":Z
    :cond_1
    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    .line 254
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    .line 255
    .end local v1    # "accounts":[Ljava/lang/Object;
    .end local v2    # "am":Ljava/lang/Object;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "syncAll":Z
    .end local v5    # "syncEnabled":Z
    :catch_0
    move-exception v6

    .line 256
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .end local v6    # "x":Ljava/lang/Exception;
    :cond_3
    const/4 v7, -0x1

    goto :goto_0
.end method
