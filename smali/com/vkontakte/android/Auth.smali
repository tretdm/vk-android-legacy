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

.field public static REAUTH_NEED_CHECK:I

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
    const/4 v0, 0x5

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_NEED_CHECK:I

    .line 31
    const/4 v0, 0x4

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I

    .line 32
    const/4 v0, 0x3

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    .line 33
    const/4 v0, 0x2

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    .line 34
    const/4 v0, 0x1

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_NETWORK:I

    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 23
    invoke-static {}, Lcom/vkontakte/android/Auth;->createNonce()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/util/HashMap;

    .prologue
    .line 23
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
    .line 44
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/Auth$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/Auth$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    return-void
.end method

.method public static authorizeRestoreAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "act"    # Lcom/vkontakte/android/Auth$AuthResultReceiver;

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/Auth$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/Auth$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method

.method private static createNonce()V
    .locals 5

    .prologue
    .line 90
    const/16 v3, 0x3d

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 95
    .local v0, "chars":[C
    const-string v3, ""

    sput-object v3, Lcom/vkontakte/android/Auth;->nonce:Ljava/lang/String;

    .line 96
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 97
    .local v2, "r":Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/vkontakte/android/Auth;->nonce:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Auth;->nonce:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void

    .line 90
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
    .locals 16
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
    .line 109
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8
    
    .line 110
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    :try_start_0
    const-string v13, "login"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "login"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_2

    .line 111
    :cond_0

    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v13, "vk"

    const-string v14, "Login/pass not available, starting AuthActivity"

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-boolean v13, Lcom/vkontakte/android/AuthActivity;->active:Z

    if-nez v13, :cond_1

    .line 114
    new-instance v3, Landroid/content/Intent;

    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v14, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v3, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v13, 0x30000000

    invoke-virtual {v3, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    .line 198
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v13

    .line 120
    :cond_2
    new-instance v13, Landroid/net/Uri$Builder;

    invoke-direct {v13}, Landroid/net/Uri$Builder;-><init>()V

    const-string v14, "http"

    invoke-virtual {v13, v14}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13
    
    sget-object v10, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;
    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v2
    
    const-string v1, "oauthHost"
    const-string v3, "api.openvk.org"
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v14
    
    #const-string v3, "oauth.vk.com"

    invoke-virtual {v13, v14}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v14, "/token"

    invoke-virtual {v13, v14}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v14, "grant_type"

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v14, "scope"

    const-string v15, "nohttps,all"

    invoke-virtual {v13, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v14, "client_id"

    const-string v15, "2274003"

    invoke-virtual {v13, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v14, "client_secret"

    const-string v15, "hHbZxrka2uZ6jB1inYsH"

    invoke-virtual {v13, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 128
    .local v1, "bldr":Landroid/net/Uri$Builder;
    sget-object v13, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 129
    const-string v13, "captcha_sid"

    sget-object v14, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    invoke-virtual {v1, v13, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v14, "captcha_key"

    sget-object v15, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    const/4 v13, 0x0

    sput-object v13, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    .line 132
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 133
    .local v7, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 134
    .local v5, "k":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v5, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    .end local v1    # "bldr":Landroid/net/Uri$Builder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "k":Ljava/lang/String;
    .end local v7    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v12

    .line 180 
    .local v12, "x":Ljava/lang/Exception;
    const-string v13, "vk"

    invoke-static {v13, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .end local v12    # "x":Ljava/lang/Exception;
    :cond_4
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_NETWORK:I

    goto :goto_0

    .line 137
    .restart local v1    # "bldr":Landroid/net/Uri$Builder;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v7    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 139
    .local v11, "url":Ljava/lang/String;
    invoke-static {v11}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v9

    .line 140
    .local v9, "r":[B
    new-instance v10, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-direct {v10, v9, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 141
    .local v10, "s":Ljava/lang/String;
    sget-boolean v13, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v13, :cond_6

    const-string v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Auth Result = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_6
    new-instance v13, Lorg/json/JSONTokener;

    invoke-direct {v13, v10}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 143
    .local v4, "jo":Lorg/json/JSONObject;
    if-eqz v4, :cond_7

    if-eqz p3, :cond_7

    .line 144
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 145
    .local v6, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 146
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 147
    .restart local v5    # "k":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 150
    .end local v5    # "k":Ljava/lang/String;
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    const-string v13, "error"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 151
    const-string v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Auth Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "error"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "error_description"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    .line 153
    const-string v13, "need_captcha"

    const-string v14, "error"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 154
    const-string v13, "captcha_sid"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/vkontakte/android/Auth;->captchaSid:Ljava/lang/String;

    .line 155
    new-instance v3, Landroid/content/Intent;

    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v14, Lcom/vkontakte/android/CaptchaActivity;

    invoke-direct {v3, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v3, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    const-string v13, "url"

    const-string v14, "captcha_img"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    :goto_3
    sget-boolean v13, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    if-nez v13, :cond_8

    const-wide/16 v13, 0x64

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 160
    :cond_8
    const/4 v13, 0x0

    sput-boolean v13, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    .line 161
    sget-object v13, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    if-eqz v13, :cond_9

    sget-object v13, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_a

    .line 162
    :cond_9
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    goto/16 :goto_0

    .line 163
    :cond_a
    invoke-static/range {p0 .. p3}, Lcom/vkontakte/android/Auth;->doAuth(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I

    move-result v13

    goto/16 :goto_0

    .line 164
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v13, "need_validation"

    const-string v14, "error"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 165
    const-string v13, "redirect_uri"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    .line 166
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I

    goto/16 :goto_0

    .line 168
    :cond_c
    const-string v13, "need_authcheck"

    const-string v14, "error"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 169
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_NEED_CHECK:I

    goto/16 :goto_0

    .line 171
    :cond_d
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    goto/16 :goto_0

    .line 175
    :cond_e
    const-string v13, "access_token"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 176
    const-string v13, "access_token"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "secret"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "user_id"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v0, p2

    invoke-static {v13, v14, v15, v0}, Lcom/vkontakte/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 177
    sget v13, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static doReauth()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    const-string v0, "password"

    invoke-static {v0, v1, v2, v1}, Lcom/vkontakte/android/Auth;->doAuth(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v0, v1, :cond_0

    .line 84
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->onReauthError()V

    .line 86
    :cond_0
    return v2
.end method

.method public static getCurrentSyncOption(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 280
    :try_start_0
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 281
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v9, "com.vkontakte.account"

    invoke-virtual {v2, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 282
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v9, v1

    if-nez v9, :cond_0

    .line 283
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

    .line 284
    .local v0, "account":Landroid/accounts/Account;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v9, v10}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 285
    const/4 v9, 0x1

    new-array v1, v9, [Landroid/accounts/Account;

    .end local v1    # "accounts":[Landroid/accounts/Account;
    const/4 v9, 0x0

    aput-object v0, v1, v9

    .line 287
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

    .line 288
    .local v5, "syncEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 289
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "sync_all"

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 290
    .local v4, "syncAll":Z
    if-nez v5, :cond_2

    const/4 v7, 0x2

    .line 296
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "syncAll":Z
    .end local v5    # "syncEnabled":Z
    :cond_1
    :goto_0
    return v7

    .line 291
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v2    # "am":Landroid/accounts/AccountManager;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "syncAll":Z
    .restart local v5    # "syncEnabled":Z
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v4, :cond_1

    .line 292
    :cond_3
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    move v7, v8

    goto :goto_0

    .line 293
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "syncAll":Z
    .end local v5    # "syncEnabled":Z
    :catch_0
    move-exception v6

    .line 294
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
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
    .line 178
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 179
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 180
    .local v2, "isReauth":Z
    if-eqz p3, :cond_0

    .line 181
    const-string v9, "reauth_uid"

    invoke-interface {v4, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 182
    const-string v9, "reauth_uid"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 183
    .local v7, "ru":I
    if-eq v7, p2, :cond_1

    .line 184
    const-string v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UserID should be "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

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

    .line 185
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/vkontakte/android/LongPollService;->logOut(ZZ)V

    .line 186
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "reauth_uid"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    .end local v7    # "ru":I
    :cond_0
    :goto_0
    sput p2, Lcom/vkontakte/android/Global;->uid:I

    .line 194
    sput-object p0, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 195
    sput-object p1, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 196
    const/4 v9, 0x1

    sput-boolean v9, Lcom/vkontakte/android/Global;->authOK:Z

    .line 198
    if-nez p3, :cond_2

    const/4 v9, 0x1

    .line 275
    :goto_1
    return v9

    .line 188
    .restart local v7    # "ru":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 199
    .end local v7    # "ru":I
    :cond_2
    const/4 v3, 0x1

    .line 200
    .local v3, "needCreateAccount":Z
    if-eqz v2, :cond_4

    .line 201
    const/4 v3, 0x0

    .line 215
    :goto_2
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 220
    .local v5, "prefs1":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 222
    const/4 v9, 0x1

    new-array v6, v9, [Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    .line 224
    .local v6, "result":[Z
    if-eqz v3, :cond_3

    .line 225
    new-instance v9, Lcom/vkontakte/android/api/GetWallInfo;

    sget v10, Lcom/vkontakte/android/Global;->uid:I

    invoke-direct {v9, v10}, Lcom/vkontakte/android/api/GetWallInfo;-><init>(I)V

    new-instance v10, Lcom/vkontakte/android/Auth$3;

    invoke-direct {v10, v6}, Lcom/vkontakte/android/Auth$3;-><init>([Z)V

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/api/GetWallInfo;->setCallback(Lcom/vkontakte/android/api/GetWallInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 260
    :cond_3
    const/4 v9, 0x0

    aget-boolean v9, v6, v9

    if-eqz v9, :cond_6

    .line 261
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 262
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "uid"

    sget v11, Lcom/vkontakte/android/Global;->uid:I

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "sid"

    sget-object v11, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "secret"

    sget-object v11, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "new_auth"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    :goto_3
    const/4 v9, 0x0

    aget-boolean v9, v6, v9

    goto :goto_1

    .line 204
    .end local v5    # "prefs1":Landroid/content/SharedPreferences;
    .end local v6    # "result":[Z
    :cond_4
    :try_start_0
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 205
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v9, "com.vkontakte.account"

    invoke-virtual {v1, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 206
    .local v0, "acc":[Landroid/accounts/Account;
    array-length v9, v0

    if-lez v9, :cond_5

    .line 207
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    .line 210
    .end local v0    # "acc":[Landroid/accounts/Account;
    .end local v1    # "am":Landroid/accounts/AccountManager;
    :catch_0
    move-exception v8

    .line 211
    .local v8, "x":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_2

    .line 269
    .end local v8    # "x":Ljava/lang/Exception;
    .restart local v5    # "prefs1":Landroid/content/SharedPreferences;
    .restart local v6    # "result":[Z
    :cond_6
    const/4 v9, 0x0

    sput-object v9, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 270
    const/4 v9, 0x0

    sput v9, Lcom/vkontakte/android/Global;->uid:I

    .line 271
    const/4 v9, 0x0

    sput-object v9, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 272
    const/4 v9, 0x0

    sput-boolean v9, Lcom/vkontakte/android/Global;->authOK:Z

    goto :goto_3
.end method
