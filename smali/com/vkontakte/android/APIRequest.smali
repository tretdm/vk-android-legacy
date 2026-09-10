.class public Lcom/vkontakte/android/APIRequest;
.super Ljava/lang/Object;
.source "APIRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/APIRequest$APIHandler;,
        Lcom/vkontakte/android/APIRequest$ErrorResponse;
    }
.end annotation


# static fields
.field private static final API_DEBUG:Z

.field public static final API_URL:Ljava/lang/String; = "%s/method/"

.field public static final USER_AGENT:Ljava/lang/String;

.field private static httpclient:Lorg/apache/http/client/HttpClient;

.field private static reauthSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field private cancel:Z

.field private forceHTTPS:Z

.field private handler:Lcom/vkontakte/android/APIRequest$APIHandler;

.field private httppost:Lorg/apache/http/client/methods/HttpPost;

.field private numRetries:I

.field public params:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v7, v7}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v3, Lcom/vkontakte/android/APIRequest;->reauthSemaphore:Ljava/util/concurrent/Semaphore;

    .line 66
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "__dbg_api"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/vkontakte/android/APIRequest;->API_DEBUG:Z

    .line 76
    const-string v1, ""

    .line 77
    .local v1, "appver":Ljava/lang/String;
    const/4 v0, 0x0

    .line 79
    .local v0, "appbuild":I
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 80
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 81
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string v3, "VKAndroidApp/%s-%d (Android %s; SDK %d; %s; %s %s; %s)"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "user.language"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/APIRequest;->USER_AGENT:Ljava/lang/String;

    .line 85
    return-void

    .line 82
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    .line 57
    iput-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    .line 60
    iput-object v2, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkontakte/android/APIRequest;->numRetries:I

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "v"

    const-string v2, "4.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "lang"

    invoke-static {}, Lcom/vkontakte/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/APIRequest;I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/vkontakte/android/APIRequest;->numRetries:I

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/APIRequest;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/vkontakte/android/APIRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/APIRequest;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/APIRequest;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private static convert([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 97
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 99
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 108
    return-object v2

    .line 101
    :cond_0
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 105
    .local v0, "hex":[C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v4, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "h"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 114
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 115
    .local v1, "s":[B
    invoke-static {v1}, Lcom/vkontakte/android/APIRequest;->convert([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 118
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "s":[B
    :goto_0
    return-object v2

    .line 116
    :catch_0
    move-exception v2

    .line 118
    const-string v2, ""

    goto :goto_0
.end method

.method private parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 249
    :try_start_0
    iget-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 261
    :goto_0
    return-object v1

    .line 250
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 251
    :cond_1
    new-instance v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v2, -0x1

    const-string v3, "I/O error"

    invoke-direct {v1, p0, v2, v3}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(Lcom/vkontakte/android/APIRequest;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    new-instance v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v2, -0x2

    const-string v3, "Parse error"

    invoke-direct {v1, p0, v2, v3}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(Lcom/vkontakte/android/APIRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 253
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    new-instance v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(Lcom/vkontakte/android/APIRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/APIRequest;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 239
    sget-object v0, Lcom/vkontakte/android/APIRequest;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected doExec()Lorg/json/JSONObject;
    .locals 27

    .prologue
    .line 280
    sget-object v23, Lcom/vkontakte/android/APIRequest;->httpclient:Lorg/apache/http/client/HttpClient;

    if-nez v23, :cond_0

    .line 281
    new-instance v8, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v8}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 282
    .local v8, "hParams":Lorg/apache/http/params/HttpParams;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 283
    sget-object v23, Lcom/vkontakte/android/APIRequest;->USER_AGENT:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 284
    const/16 v23, 0x2000

    move/from16 v0, v23

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 285
    const v23, 0xea60

    move/from16 v0, v23

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 286
    const v23, 0xea60

    move/from16 v0, v23

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 287
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 288
    new-instance v17, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 289
    .local v17, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v23, Lorg/apache/http/conn/scheme/Scheme;

    const-string v24, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v25

    const/16 v26, 0x1bb

    invoke-direct/range {v23 .. v26}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 290
    new-instance v23, Lorg/apache/http/conn/scheme/Scheme;

    const-string v24, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v25

    const/16 v26, 0x50

    invoke-direct/range {v23 .. v26}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 291
    new-instance v23, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v24, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v23, Lcom/vkontakte/android/APIRequest;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 308
    .end local v8    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v17    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v24, Ljava/lang/StringBuilder;

    sget-boolean v23, Lcom/vkontakte/android/MainActivity;->useHTTPS:Z

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    sget-object v23, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v23, :cond_7

    :cond_1
    const-string v23, "https"

    :goto_0
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "://"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 310
    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v2, "apiHost"

    const-string v3, "api.openvk.org"

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v1, "%s/method/"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    const-string v25, "method"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 313
    .local v22, "url":Ljava/lang/String;
    new-instance v23, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v23, v0

    const-string v24, "Accept-Encoding"

    const-string v25, "gzip"

    invoke-virtual/range {v23 .. v25}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v23, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v23, :cond_8

    const/16 v21, 0x1

    .line 316
    .local v21, "tries":I
    :goto_1
    const/4 v15, 0x0

    .line 317
    .local v15, "obj":Lorg/json/JSONObject;
    :try_start_0
    sget-object v23, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v23, :cond_2

    .line 318
    sget-object v23, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal(Landroid/content/Context;Z)V

    .line 319
    :cond_2
    sget-object v23, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v23, :cond_3

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    const-string v24, "access_token"

    sget-object v25, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual/range {v23 .. v25}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v14, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 324
    .local v7, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    sget-boolean v23, Lcom/vkontakte/android/APIRequest;->API_DEBUG:Z

    if-eqz v23, :cond_4

    const-string v24, "vk"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v23, "====="

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    const-string v26, "method"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-nez v23, :cond_9

    .line 331
    sget-boolean v23, Lcom/vkontakte/android/APIRequest;->API_DEBUG:Z

    if-eqz v23, :cond_5

    const-string v23, "vk"

    const-string v24, "====="

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_5
    sget-object v23, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v23, :cond_6

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/APIRequest;->getSig()Ljava/lang/String;

    move-result-object v20

    .line 334
    .local v20, "sig":Ljava/lang/String;
    new-instance v23, Lorg/apache/http/message/BasicNameValuePair;

    const-string v24, "sig"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v20    # "sig":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v23, v0

    new-instance v24, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v25, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v14, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 340
    sget-object v23, Lcom/vkontakte/android/APIRequest;->httpclient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 341
    .local v18, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    move/from16 v23, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v23, :cond_b

    .line 342
    const/16 v23, 0x0

    .line 431
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v14    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :goto_3
    return-object v23

    .line 308
    .end local v15    # "obj":Lorg/json/JSONObject;
    .end local v21    # "tries":I
    .end local v22    # "url":Ljava/lang/String;
    :cond_7
    const-string v23, "http"

    goto/16 :goto_0

    .line 312
    .restart local v22    # "url":Ljava/lang/String;
    :cond_8
    const/16 v21, 0x3

    goto/16 :goto_1

    .line 326
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v14    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v15    # "obj":Lorg/json/JSONObject;
    .restart local v21    # "tries":I
    :cond_9
    :try_start_1
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 327
    .local v12, "key":Ljava/lang/String;
    const-string v23, "method"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 328
    sget-boolean v23, Lcom/vkontakte/android/APIRequest;->API_DEBUG:Z

    if-eqz v23, :cond_a

    const-string v24, "vk"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_a
    new-instance v24, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 404
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v6

    .line 406
    .local v6, "e":Ljava/io/IOException;
    if-nez v21, :cond_17

    .line 407
    const/16 v23, 0x0

    goto :goto_3

    .line 343
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v14    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    :cond_b
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 344
    .local v10, "is":Ljava/io/InputStream;
    const-string v23, "Content-Encoding"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 345
    .local v5, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v5, :cond_c

    const-string v23, "gzip"

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    new-instance v11, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v11, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v10    # "is":Ljava/io/InputStream;
    .local v11, "is":Ljava/io/InputStream;
    move-object v10, v11

    .line 346
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_c
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 347
    .local v3, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 348
    .local v16, "rd":[B
    const/4 v13, 0x0

    .line 349
    .local v13, "l":I
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-gtz v13, :cond_e

    .line 350
    new-instance v23, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    const-string v25, "UTF-8"

    invoke-direct/range {v23 .. v25}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 351
    .local v19, "s":Ljava/lang/String;
    const/4 v3, 0x0

    .line 352
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 354
    sget-boolean v23, Lcom/vkontakte/android/APIRequest;->API_DEBUG:Z

    if-eqz v23, :cond_d

    const-string v23, "vk"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Response="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_d
    new-instance v23, Lorg/json/JSONTokener;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Lorg/json/JSONObject;

    move-object v15, v0

    .line 358
    const-string v23, "error"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 359
    const-string v23, "error"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "error_code"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 360
    .local v4, "code":I
    const/16 v23, 0x5

    move/from16 v0, v23

    if-ne v4, v0, :cond_11

    .line 362
    const-string v23, "account.unregisterDevice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v24, v0

    const-string v25, "method"

    invoke-virtual/range {v24 .. v25}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 363
    new-instance v23, Lcom/vkontakte/android/APIException;

    const/16 v24, 0x0

    const-string v25, "already unregistered"

    invoke-direct/range {v23 .. v25}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v23

    .line 411
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "code":I
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v13    # "l":I
    .end local v14    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16    # "rd":[B
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "s":Ljava/lang/String;
    :catch_1
    move-exception v6

    .local v6, "e":Lcom/vkontakte/android/APIException;
    move-object/from16 v23, v15

    .line 413
    goto/16 :goto_3

    .line 349
    .end local v6    # "e":Lcom/vkontakte/android/APIException;
    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v13    # "l":I
    .restart local v14    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v16    # "rd":[B
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    :cond_e
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_4

    .line 414
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v13    # "l":I
    .end local v14    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16    # "rd":[B
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v6

    .line 423
    .local v6, "e":Ljava/lang/Throwable;
    instance-of v0, v6, Ljava/lang/OutOfMemoryError;

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 424
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v23

    goto/16 :goto_3

    .line 378
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "code":I
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v13    # "l":I
    .restart local v14    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v16    # "rd":[B
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "s":Ljava/lang/String;
    :cond_f
    :try_start_2
    const-string v23, "account.unregisterDevice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v24, v0

    const-string v25, "method"

    invoke-virtual/range {v24 .. v25}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_10

    .line 379
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->onReauthError()V

    .line 380
    :cond_10
    new-instance v23, Lcom/vkontakte/android/APIException;

    const/16 v24, 0x0

    const-string v25, "reauth error"

    invoke-direct/range {v23 .. v25}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v23

    .line 383
    :cond_11
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ne v4, v0, :cond_12

    move-object/from16 v23, v15

    .line 384
    goto/16 :goto_3

    .line 385
    :cond_12
    const/16 v23, 0xe

    move/from16 v0, v23

    if-ne v4, v0, :cond_15

    .line 386
    new-instance v9, Landroid/content/Intent;

    sget-object v23, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v24, Lcom/vkontakte/android/CaptchaActivity;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v23, 0x10000000

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    const-string v23, "url"

    const-string v24, "error"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "captcha_img"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    sget-object v23, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 390
    :goto_5
    sget-boolean v23, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    if-eqz v23, :cond_13

    .line 391
    const/16 v23, 0x0

    sput-boolean v23, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    .line 392
    sget-object v23, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    if-eqz v23, :cond_14

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    const-string v24, "captcha_sid"

    const-string v25, "error"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "captcha_sid"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    const-string v24, "captcha_key"

    sget-object v25, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual/range {v23 .. v25}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v23

    goto/16 :goto_3

    .line 390
    :cond_13
    const-wide/16 v23, 0x64

    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_5

    :cond_14
    move-object/from16 v23, v15

    .line 397
    goto/16 :goto_3

    .line 399
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_15
    new-instance v23, Lcom/vkontakte/android/APIException;

    const-string v24, "error"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "error_msg"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v23
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .end local v4    # "code":I
    :cond_16
    move-object/from16 v23, v15

    .line 403
    goto/16 :goto_3

    .line 409
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v13    # "l":I
    .end local v14    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16    # "rd":[B
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "s":Ljava/lang/String;
    .local v6, "e":Ljava/io/IOException;
    :cond_17
    const-string v23, "vk"

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 410
    add-int/lit8 v21, v21, -0x1

    .line 431
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 428
    .local v6, "e":Ljava/lang/Throwable;
    :cond_18
    const-string v23, "vk"

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    const/16 v23, 0x0

    goto/16 :goto_3
.end method

.method public exec()Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    return-object v0
.end method

.method public exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;
    .locals 5
    .param p1, "v"    # Landroid/app/Activity;

    .prologue
    .line 203
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/APIRequest$2;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/APIRequest$2;-><init>(Lcom/vkontakte/android/APIRequest;Landroid/app/Activity;)V

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "API "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v4, "method"

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 222
    return-object p0
.end method

.method public exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/APIRequest$1;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/APIRequest$1;-><init>(Lcom/vkontakte/android/APIRequest;Landroid/view/View;)V

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "API "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v4, "method"

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 199
    return-object p0
.end method

.method public execSync()Z
    .locals 3

    .prologue
    .line 226
    const/4 v2, 0x3

    iput v2, p0, Lcom/vkontakte/android/APIRequest;->numRetries:I

    .line 227
    invoke-virtual {p0}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v0

    .line 228
    .local v0, "o":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 230
    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 231
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public forceHTTPS(Z)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    .line 172
    return-object p0
.end method

.method public getSig()Ljava/lang/String;
    .locals 6

    .prologue
    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "/method/"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v5, "method"

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "src":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 143
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 150
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v2}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 144
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    .local v1, "key":Ljava/lang/String;
    const-string v3, "method"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "h"    # Lcom/vkontakte/android/APIRequest$APIHandler;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    .line 167
    return-object p0
.end method

.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 266
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 267
    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, p1}, Lcom/vkontakte/android/APIRequest$APIHandler;->success(Lorg/json/JSONObject;)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 271
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    move-object v1, v0

    .line 272
    .local v1, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    iget v3, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/APIRequest$APIHandler;->fail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v1    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 161
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 156
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    return-object p0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 244
    return-object p1
.end method

.method public wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 435
    const v0, 0x7f090001

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;IZ)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    return-object v0
.end method

.method public wrapProgress(Landroid/content/Context;IZ)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strRes"    # I
    .param p3, "cancelable"    # Z

    .prologue
    .line 439
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    .line 440
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/vkontakte/android/APIRequest$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/APIRequest$3;-><init>(Lcom/vkontakte/android/APIRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 447
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 448
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 449
    return-object p0
.end method
