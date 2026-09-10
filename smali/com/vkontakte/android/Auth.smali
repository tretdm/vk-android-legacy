.class public Lcom/vkontakte/android/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/Auth$AuthResultReceiver;
    }
.end annotation


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
    .line 87
    invoke-static {}, Lcom/vkontakte/android/Auth;->createNonce()V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I
    .locals 1

    .prologue
    .line 98
    invoke-static {p0, p1, p2, p3}, Lcom/vkontakte/android/Auth;->doAuth(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public static authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V
    .locals 2
    .param p0, "login"    # Ljava/lang/String;
    .param p1, "pass"    # Ljava/lang/String;
    .param p2, "act"    # Lcom/vkontakte/android/Auth$AuthResultReceiver;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/Auth$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/Auth$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method

.method public static authorizeRestoreAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "act"    # Lcom/vkontakte/android/Auth$AuthResultReceiver;

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/Auth$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/Auth$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method

.method private static createNonce()V
    .locals 5

    .prologue
    .line 88
    const/16 v3, 0x3d

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 93
    .local v0, "chars":[C
    const-string v3, ""

    sput-object v3, Lcom/vkontakte/android/Auth;->nonce:Ljava/lang/String;

    .line 94
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 95
    .local v2, "r":Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 96
    return-void

    .line 95
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

    .line 88
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

.method private static doAuth(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I
    .locals 15
    .param p0, "grantType"    # Ljava/lang/String;
    .param p2, "persist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    :try_start_0
    const-string v12, "login"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "login"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    .line 101
    :cond_0
    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 102
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-string v12, "vk"

    const-string v13, "Login/pass not available, starting AuthActivity"

    invoke-static {v12, v13}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-boolean v12, Lcom/vkontakte/android/AuthActivity;->active:Z

    if-nez v12, :cond_1

    .line 104
    new-instance v2, Landroid/content/Intent;

    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v13, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v2, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v12, 0x30000000

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v12, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    sget v12, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    .line 170
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v12

    .line 110
    :cond_2
    new-instance v12, Landroid/net/Uri$Builder;

    invoke-direct {v12}, Landroid/net/Uri$Builder;-><init>()V

    .line 111
    const-string v13, "http"

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 112
    sget-object v10, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;
    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v2
    
    const-string v1, "oauthHost"
    const-string v3, "api.openvk.org"
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v13
    
    #const-string v13, "oauth.vk.com"

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 113
    const-string v13, "/token"

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 114
    const-string v13, "grant_type"

    invoke-virtual {v12, v13, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 115
    const-string v13, "scope"

    const-string v14, "nohttps,all"

    invoke-virtual {v12, v13, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 116
    const-string v13, "client_id"

    const-string v14, "2274003"

    invoke-virtual {v12, v13, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 117
    const-string v13, "client_secret"

    const-string v14, "hHbZxrka2uZ6jB1inYsH"

    invoke-virtual {v12, v13, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 118
    .local v1, "bldr":Landroid/net/Uri$Builder;
    sget-object v12, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 119
    const-string v12, "captcha_sid"

    sget-object v13, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    invoke-virtual {v1, v12, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    const-string v13, "captcha_key"

    sget-object v14, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    const/4 v12, 0x0

    sput-object v12, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    .line 122
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 123
    .local v6, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 127
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, "url":Ljava/lang/String;
    invoke-static {v10}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v8

    .line 130
    .local v8, "r":[B
    new-instance v9, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v9, v8, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 131
    .local v9, "s":Ljava/lang/String;
    sget-boolean v12, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v12, :cond_4

    const-string v12, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Auth Result = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_4
    new-instance v12, Lorg/json/JSONTokener;

    invoke-direct {v12, v9}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 133
    .local v3, "jo":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    if-eqz p3, :cond_5

    .line 134
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 135
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_9

    .line 140
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    const-string v12, "error"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 141
    const-string v12, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Auth Error: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "error"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "error"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " / "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "error_description"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    .line 143
    const-string v12, "need_captcha"

    const-string v13, "error"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 144
    const-string v12, "captcha_sid"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    .line 145
    new-instance v2, Landroid/content/Intent;

    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v13, Lcom/vkontakte/android/CaptchaActivity;

    invoke-direct {v2, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    const-string v12, "url"

    const-string v13, "captcha_img"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v12, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    :goto_3
    sget-boolean v12, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    if-eqz v12, :cond_a

    .line 150
    const/4 v12, 0x0

    sput-boolean v12, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    .line 151
    sget-object v12, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    if-eqz v12, :cond_6

    sget-object v12, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_b

    .line 152
    :cond_6
    sget v12, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    goto/16 :goto_0

    .line 123
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v8    # "r":[B
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 124
    .local v4, "k":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v4, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 167
    .end local v1    # "bldr":Landroid/net/Uri$Builder;
    .end local v4    # "k":Ljava/lang/String;
    .end local v6    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 168
    .local v11, "x":Ljava/lang/Exception;
    const-string v12, "vk"

    invoke-static {v12, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .end local v11    # "x":Ljava/lang/Exception;
    :cond_8
    sget v12, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_NETWORK:I

    goto/16 :goto_0

    .line 136
    .restart local v1    # "bldr":Landroid/net/Uri$Builder;
    .restart local v3    # "jo":Lorg/json/JSONObject;
    .restart local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "r":[B
    .restart local v9    # "s":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_9
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 137
    .restart local v4    # "k":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 149
    .end local v4    # "k":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_a
    const-wide/16 v12, 0x64

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 154
    :cond_b
    invoke-static/range {p0 .. p3}, Lcom/vkontakte/android/Auth;->doAuth(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I

    move-result v12

    goto/16 :goto_0

    .line 155
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_c
    const-string v12, "need_validation"

    const-string v13, "error"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 156
    const-string v12, "redirect_uri"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    .line 157
    sget v12, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I

    goto/16 :goto_0

    .line 159
    :cond_d
    sget v12, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    goto/16 :goto_0

    .line 163
    :cond_e
    const-string v12, "access_token"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 164
    const-string v12, "access_token"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "secret"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "user_id"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    move/from16 v0, p2

    invoke-static {v12, v13, v14, v0}, Lcom/vkontakte/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 165
    sget v12, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static doReauth()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 81
    const-string v0, "password"

    invoke-static {v0, v1, v2, v1}, Lcom/vkontakte/android/Auth;->doAuth(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v0, v1, :cond_0

    .line 82
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->onReauthError()V

    .line 84
    :cond_0
    return v2
.end method

.method public static getCurrentSyncOption(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 276
    :try_start_0
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 277
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v9, "com.vkontakte.account"

    invoke-virtual {v2, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 278
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v9, v1

    if-nez v9, :cond_0

    .line 279
    new-instance v0, Landroid/accounts/Account;

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "username"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.vkontakte.account"

    invoke-direct {v0, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v0, "account":Landroid/accounts/Account;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v9, v10}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 281
    const/4 v9, 0x1

    new-array v1, v9, [Landroid/accounts/Account;

    .end local v1    # "accounts":[Landroid/accounts/Account;
    const/4 v9, 0x0

    aput-object v0, v1, v9

    .line 283
    .end local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    :cond_0
    const/4 v9, 0x0

    aget-object v9, v1, v9

    const-string v10, "com.android.contacts"

    invoke-static {v9, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 284
    .local v5, "syncEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 285
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "sync_all"

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 286
    .local v4, "syncAll":Z
    if-nez v5, :cond_2

    const/4 v7, 0x2

    .line 292
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "syncAll":Z
    .end local v5    # "syncEnabled":Z
    :cond_1
    :goto_0
    return v7

    .line 287
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v2    # "am":Landroid/accounts/AccountManager;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "syncAll":Z
    .restart local v5    # "syncEnabled":Z
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v4, :cond_1

    .line 288
    :cond_3
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    move v7, v8

    goto :goto_0

    .line 289
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "syncAll":Z
    .end local v5    # "syncEnabled":Z
    :catch_0
    move-exception v6

    .line 290
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .end local v6    # "x":Ljava/lang/Exception;
    :cond_4
    const/4 v7, -0x1

    goto :goto_0
.end method

.method public static setData(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 12
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "userID"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 174
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 175
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 176
    .local v2, "isReauth":Z
    if-eqz p3, :cond_0

    .line 177
    const-string v9, "reauth_uid"

    invoke-interface {v4, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 178
    const-string v9, "reauth_uid"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 179
    .local v7, "ru":I
    if-eq v7, p2, :cond_1

    .line 180
    const-string v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "UserID should be "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", forcing full reauth"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/vkontakte/android/LongPollService;->logOut(ZZ)V

    .line 182
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "reauth_uid"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    .end local v7    # "ru":I
    :cond_0
    :goto_0
    sput p2, Lcom/vkontakte/android/Global;->uid:I

    .line 190
    sput-object p0, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 191
    sput-object p1, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 192
    const/4 v9, 0x1

    sput-boolean v9, Lcom/vkontakte/android/Global;->authOK:Z

    .line 194
    if-nez p3, :cond_2

    const/4 v9, 0x1

    .line 271
    :goto_1
    return v9

    .line 184
    .restart local v7    # "ru":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 195
    .end local v7    # "ru":I
    :cond_2
    const/4 v3, 0x1

    .line 196
    .local v3, "needCreateAccount":Z
    if-eqz v2, :cond_4

    .line 197
    const/4 v3, 0x0

    .line 211
    :goto_2
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 216
    .local v5, "prefs1":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 218
    const/4 v9, 0x1

    new-array v6, v9, [Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    .line 220
    .local v6, "result":[Z
    if-eqz v3, :cond_3

    .line 221
    new-instance v9, Lcom/vkontakte/android/api/GetWallInfo;

    sget v10, Lcom/vkontakte/android/Global;->uid:I

    invoke-direct {v9, v10}, Lcom/vkontakte/android/api/GetWallInfo;-><init>(I)V

    .line 222
    new-instance v10, Lcom/vkontakte/android/Auth$3;

    invoke-direct {v10, v6}, Lcom/vkontakte/android/Auth$3;-><init>([Z)V

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/api/GetWallInfo;->setCallback(Lcom/vkontakte/android/api/GetWallInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v9

    .line 253
    invoke-virtual {v9}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 256
    :cond_3
    const/4 v9, 0x0

    aget-boolean v9, v6, v9

    if-eqz v9, :cond_6

    .line 257
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 258
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 259
    const-string v10, "uid"

    sget v11, Lcom/vkontakte/android/Global;->uid:I

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 260
    const-string v10, "sid"

    sget-object v11, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 261
    const-string v10, "secret"

    sget-object v11, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 262
    const-string v10, "new_auth"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 263
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    :goto_3
    const/4 v9, 0x0

    aget-boolean v9, v6, v9

    goto :goto_1

    .line 200
    .end local v5    # "prefs1":Landroid/content/SharedPreferences;
    .end local v6    # "result":[Z
    :cond_4
    :try_start_0
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 201
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v9, "com.vkontakte.account"

    invoke-virtual {v1, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 202
    .local v0, "acc":[Landroid/accounts/Account;
    array-length v9, v0

    if-lez v9, :cond_5

    .line 203
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    .line 206
    .end local v0    # "acc":[Landroid/accounts/Account;
    .end local v1    # "am":Landroid/accounts/AccountManager;
    :catch_0
    move-exception v8

    .line 207
    .local v8, "x":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_2

    .line 265
    .end local v8    # "x":Ljava/lang/Exception;
    .restart local v5    # "prefs1":Landroid/content/SharedPreferences;
    .restart local v6    # "result":[Z
    :cond_6
    const/4 v9, 0x0

    sput-object v9, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 266
    const/4 v9, 0x0

    sput v9, Lcom/vkontakte/android/Global;->uid:I

    .line 267
    const/4 v9, 0x0

    sput-object v9, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 268
    const/4 v9, 0x0

    sput-boolean v9, Lcom/vkontakte/android/Global;->authOK:Z

    goto :goto_3
.end method
