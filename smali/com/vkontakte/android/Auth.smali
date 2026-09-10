.class public Lcom/vkontakte/android/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.vkontakte.account"

.field public static final API_ID:I = 0x22b2d3

.field public static final API_SECRET:Ljava/lang/String; = "hHbZxrka2uZ6jB1inYsH"

.field public static REAUTH_CANCELED:I

.field public static REAUTH_ERROR_INCORRECT_PASSWORD:I

.field public static REAUTH_ERROR_NETWORK:I

.field public static REAUTH_OPEN_BROWSER:I

.field public static REAUTH_SUCCESS:I

.field private static captchaSid:Ljava/lang/String;

.field public static lastError:Ljava/lang/String;

.field static nonce:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I

    .line 31
    const/4 v0, 0x3

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    .line 33
    const/4 v0, 0x1

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_NETWORK:I

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

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
    .line 65
    invoke-static {}, Lcom/vkontakte/android/Auth;->createNonce()V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 90
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
    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/Auth$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/Auth$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/AuthActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 54
    return-void
.end method

.method private static createNonce()V
    .locals 5

    .prologue
    .line 66
    const/16 v3, 0x3d

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 71
    .local v0, "chars":[C
    const-string v3, ""

    sput-object v3, Lcom/vkontakte/android/Auth;->nonce:Ljava/lang/String;

    .line 72
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 73
    .local v2, "r":Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 74
    return-void

    .line 73
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

    .line 66
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
    .locals 12
    .param p0, "login"    # Ljava/lang/String;
    .param p1, "pass"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    const-string v5, ""

    .line 93
    .local v5, "sig":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 94
    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 95
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "login"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 96
    const-string v8, "sig"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 97
    if-nez p0, :cond_2

    .line 98
    const-string v8, "vk"

    const-string v9, "Login/pass not available, starting AuthActivity"

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-boolean v8, Lcom/vkontakte/android/AuthActivity;->active:Z

    if-nez v8, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v9, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v8, 0x30000000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget v8, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    .line 169
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "sig":Ljava/lang/String;
    :goto_0
    return v8

    .line 107
    .restart local v5    # "sig":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":vk.com:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 128
    :cond_2
    const-string v8, "http://%1$s/token?grant_type=password&scope=nohttps&client_id=2274003&client_secret=hHbZxrka2uZ6jB1inYsH&username=%2$s&password=%3$s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v1, "oauthHost"

    const-string v3, "api.openvk.org"

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    if-nez p1, :cond_5

    .end local v5    # "sig":Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "url":Ljava/lang/String;
    sget-object v8, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&captcha_sid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&captcha_key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 131
    const/4 v8, 0x0

    sput-object v8, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    .line 134
    :cond_3
    invoke-static {v6}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v3

    .line 135
    .local v3, "r":[B
    new-instance v4, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v4, v3, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .local v4, "s":Ljava/lang/String;
    const-string v8, "vk"

    invoke-static {v8, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v8, Lorg/json/JSONTokener;

    invoke-direct {v8, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 137
    .local v1, "jo":Lorg/json/JSONObject;
    const-string v8, "error"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 138
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Auth Error: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "error"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "error"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "error_description"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    .line 140
    const-string v8, "need_captcha"

    const-string v9, "error"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 141
    const-string v8, "captcha_sid"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    .line 142
    new-instance v0, Landroid/content/Intent;

    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v9, Lcom/vkontakte/android/CaptchaActivity;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const-string v8, "url"

    const-string v9, "captcha_img"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    :goto_2
    sget-boolean v8, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    if-eqz v8, :cond_6

    .line 147
    const/4 v8, 0x0

    sput-boolean v8, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    .line 148
    sget-object v8, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    if-eqz v8, :cond_4

    sget-object v8, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_8

    .line 149
    :cond_4
    sget v8, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    goto/16 :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "jo":Lorg/json/JSONObject;
    .end local v3    # "r":[B
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    .restart local v5    # "sig":Ljava/lang/String;
    :cond_5
    move-object v5, p1

    .line 128
    goto/16 :goto_1

    .line 146
    .end local v5    # "sig":Ljava/lang/String;
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "jo":Lorg/json/JSONObject;
    .restart local v3    # "r":[B
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_6
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 166
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "jo":Lorg/json/JSONObject;
    .end local v3    # "r":[B
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 167
    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v7    # "x":Ljava/lang/Exception;
    :cond_7
    sget v8, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_NETWORK:I

    goto/16 :goto_0

    .line 151
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "jo":Lorg/json/JSONObject;
    .restart local v3    # "r":[B
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-static {p0, p1}, Lcom/vkontakte/android/Auth;->doAuth(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_0

    .line 152
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v8, "need_validation"

    const-string v9, "error"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 153
    const-string v8, "redirect_uri"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    .line 154
    sget v8, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I

    goto/16 :goto_0

    .line 156
    :cond_a
    sget v8, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    goto/16 :goto_0

    .line 160
    :cond_b
    const-string v8, "access_token"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 162
    const-string v8, "access_token"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "secret"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "user_id"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/vkontakte/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    sget v8, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static doReauth()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-static {}, Lcom/vkontakte/android/Auth;->createNonce()V

    .line 59
    invoke-static {v0, v0}, Lcom/vkontakte/android/Auth;->doAuth(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v0, v1, :cond_0

    .line 60
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->onReauthError()V

    .line 62
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getCurrentSyncOption(Landroid/content/Context;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 261
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

    .line 262
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

    .line 263
    .local v1, "accounts":[Ljava/lang/Object;
    array-length v7, v1

    if-nez v7, :cond_0

    .line 264
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

    .line 265
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

    .line 266
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

    .line 267
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/Object;

    .end local v1    # "accounts":[Ljava/lang/Object;
    const/4 v7, 0x0

    aput-object v0, v1, v7

    .line 269
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

    .line 270
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

    .line 269
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 271
    .local v5, "syncEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 272
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "sync_all"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 273
    .local v4, "syncAll":Z
    if-nez v5, :cond_1

    const/4 v7, 0x2

    .line 279
    .end local v1    # "accounts":[Ljava/lang/Object;
    .end local v2    # "am":Ljava/lang/Object;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "syncAll":Z
    .end local v5    # "syncEnabled":Z
    :goto_0
    return v7

    .line 274
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

    .line 275
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    .line 276
    .end local v1    # "accounts":[Ljava/lang/Object;
    .end local v2    # "am":Ljava/lang/Object;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "syncAll":Z
    .end local v5    # "syncEnabled":Z
    :catch_0
    move-exception v6

    .line 277
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .end local v6    # "x":Ljava/lang/Exception;
    :cond_3
    const/4 v7, -0x1

    goto :goto_0
.end method

.method public static setData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "userID"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 173
    sput p2, Lcom/vkontakte/android/Global;->uid:I

    .line 174
    sput-object p0, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 175
    sput-object p1, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 176
    sput-boolean v7, Lcom/vkontakte/android/Global;->authOK:Z

    .line 177
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 178
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 179
    const-string v9, "uid"

    sget v10, Lcom/vkontakte/android/Global;->uid:I

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 180
    const-string v9, "sid"

    sget-object v10, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 181
    const-string v9, "secret"

    sget-object v10, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 182
    const-string v9, "new_auth"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 183
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    const/4 v2, 0x1

    .line 187
    .local v2, "needCreateAccount":Z
    :try_start_0
    const-string v6, "android.accounts.AccountManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v9, "get"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "am":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v9, "getAccountsByType"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "com.vkontakte.account"

    aput-object v11, v9, v10

    invoke-virtual {v6, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    array-length v1, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v1, "l":I
    if-nez v1, :cond_2

    move v2, v7

    .line 194
    .end local v0    # "am":Ljava/lang/Object;
    .end local v1    # "l":I
    :goto_0
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 195
    .local v4, "prefs1":Landroid/content/SharedPreferences;
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x8

    if-ge v6, v8, :cond_0

    const-string v6, "enableC2DM"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 196
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "enableC2DM"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 200
    :cond_0
    if-eqz v2, :cond_1

    .line 201
    new-instance v6, Lcom/vkontakte/android/api/GetWallInfo;

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-direct {v6, v7}, Lcom/vkontakte/android/api/GetWallInfo;-><init>(I)V

    .line 202
    new-instance v7, Lcom/vkontakte/android/Auth$2;

    invoke-direct {v7}, Lcom/vkontakte/android/Auth$2;-><init>()V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/api/GetWallInfo;->setCallback(Lcom/vkontakte/android/api/GetWallInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 255
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 257
    :cond_1
    return-void

    .end local v4    # "prefs1":Landroid/content/SharedPreferences;
    .restart local v0    # "am":Ljava/lang/Object;
    .restart local v1    # "l":I
    :cond_2
    move v2, v8

    .line 189
    goto :goto_0

    .line 190
    .end local v0    # "am":Ljava/lang/Object;
    .end local v1    # "l":I
    :catch_0
    move-exception v5

    .line 191
    .local v5, "x":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
