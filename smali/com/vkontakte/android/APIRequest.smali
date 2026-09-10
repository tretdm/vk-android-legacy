.class public Lcom/vkontakte/android/APIRequest;
.super Ljava/lang/Object;
.source "APIRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/APIRequest$APIHandler;
    }
.end annotation


# static fields
.field private static final API_DEBUG:Z = false

.field public static final API_URL:Ljava/lang/String; = "%s/method/"

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
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/APIRequest;->reauthSemaphore:Ljava/util/concurrent/Semaphore;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    .line 55
    iput-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    .line 56
    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    .line 58
    iput-object v2, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkontakte/android/APIRequest;->numRetries:I

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "v"

    const-string v2, "3.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/APIRequest;I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/vkontakte/android/APIRequest;->numRetries:I

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest$APIHandler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/APIRequest;Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/vkontakte/android/APIRequest;->reqDone(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method private static convert([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 79
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 81
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 90
    return-object v2

    .line 83
    :cond_0
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 87
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

    .line 88
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

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
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
    .line 95
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 96
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 97
    .local v1, "s":[B
    invoke-static {v1}, Lcom/vkontakte/android/APIRequest;->convert([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "s":[B
    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v2

    .line 100
    const-string v2, ""

    goto :goto_0
.end method

.method private reqDone(Lorg/json/JSONObject;)Z
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    iput-object v3, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    .line 168
    :cond_0
    iget-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    if-eqz v1, :cond_2

    .line 183
    :cond_1
    :goto_1
    return v0

    .line 169
    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest$APIHandler;->fail(ILjava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_4
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest$APIHandler;->fail(ILjava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    if-eqz v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/APIRequest$APIHandler;->success(Lorg/json/JSONObject;)V

    .line 183
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 165
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected doExec()Lorg/json/JSONObject;
    .locals 32

    .prologue
    .line 233
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 234
    .local v10, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 235
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    const/16 v29, 0x2000

    invoke-static/range {v28 .. v29}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 237
    sget v28, Lcom/vkontakte/android/Global;->uid:I

    const v29, 0x1a10c7

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 238
    sget-object v9, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 240
    .local v9, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    new-instance v21, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct/range {v21 .. v21}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 241
    .local v21, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v25

    .local v25, "socketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    move-object/from16 v28, v9

    .line 242
    check-cast v28, Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 243
    new-instance v28, Lorg/apache/http/conn/scheme/Scheme;

    const-string v29, "https"

    const/16 v30, 0x1bb

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 244
    new-instance v16, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 247
    .local v16, "mgr":Lorg/apache/http/impl/conn/SingleClientConnManager;
    invoke-static {v9}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 251
    .end local v9    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    .end local v16    # "mgr":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .end local v21    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v25    # "socketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_0
    new-instance v29, Ljava/lang/StringBuilder;

    sget-boolean v28, Lcom/vkontakte/android/MainActivity;->useHTTPS:Z

    if-nez v28, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    sget-object v28, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v28, :cond_5

    :cond_1
    const-string v28, "http"

    :goto_0
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "://"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

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

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    const-string v30, "method"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 253
    .local v27, "url":Ljava/lang/String;
    new-instance v28, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v28, v0

    const-string v29, "Accept-Encoding"

    const-string v30, "gzip"

    invoke-virtual/range {v28 .. v30}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v28, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v28, :cond_6

    const/16 v26, 0x1

    .line 256
    .local v26, "tries":I
    :goto_1
    const/16 v18, 0x0

    .line 259
    .local v18, "obj":Lorg/json/JSONObject;
    :try_start_0
    sget-object v28, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v28, :cond_2

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    const-string v29, "access_token"

    sget-object v30, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_2
    new-instance v17, Ljava/util/ArrayList;

    const/16 v28, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .local v17, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    .line 265
    .local v8, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v28

    if-nez v28, :cond_7

    .line 272
    sget-object v28, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v28, :cond_4

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/APIRequest;->getSig()Ljava/lang/String;

    move-result-object v24

    .line 274
    .local v24, "sig":Ljava/lang/String;
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "sig"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v24    # "sig":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v28, v0

    new-instance v29, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v30, "UTF-8"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 281
    .local v22, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    move/from16 v28, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v28, :cond_8

    .line 282
    const/16 v28, 0x0

    .line 362
    .end local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v17    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    :goto_3
    return-object v28

    .line 251
    .end local v18    # "obj":Lorg/json/JSONObject;
    .end local v26    # "tries":I
    .end local v27    # "url":Ljava/lang/String;
    :cond_5
    const-string v28, "http"

    goto/16 :goto_0

    .line 255
    .restart local v27    # "url":Ljava/lang/String;
    :cond_6
    const/16 v26, 0x3

    goto :goto_1

    .line 266
    .restart local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v17    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v18    # "obj":Lorg/json/JSONObject;
    .restart local v26    # "tries":I
    :cond_7
    :try_start_1
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 267
    .local v14, "key":Ljava/lang/String;
    const-string v28, "method"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_3

    .line 269
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 335
    .end local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v7

    .line 337
    .local v7, "e":Ljava/io/IOException;
    if-nez v26, :cond_14

    .line 338
    const/16 v28, 0x0

    goto :goto_3

    .line 283
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v17    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    :cond_8
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 284
    .local v12, "is":Ljava/io/InputStream;
    const-string v28, "Content-Encoding"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 285
    .local v6, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v6, :cond_9

    const-string v28, "gzip"

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    new-instance v13, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v13, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v12    # "is":Ljava/io/InputStream;
    .local v13, "is":Ljava/io/InputStream;
    move-object v12, v13

    .line 286
    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :cond_9
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 287
    .local v4, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v28, 0x400

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 288
    .local v19, "rd":[B
    const/4 v15, 0x0

    .line 289
    .local v15, "l":I
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-gtz v15, :cond_a

    .line 290
    new-instance v28, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v29

    const-string v30, "UTF-8"

    invoke-direct/range {v28 .. v30}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 291
    .local v23, "s":Ljava/lang/String;
    const/4 v4, 0x0

    .line 296
    new-instance v28, Lorg/json/JSONTokener;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v18, v0

    .line 297
    const-string v28, "error"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 298
    const-string v28, "error"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "error_code"

    invoke-virtual/range {v28 .. v29}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 299
    .local v5, "code":I
    const/16 v28, 0x5

    move/from16 v0, v28

    if-ne v5, v0, :cond_f

    .line 301
    const/16 v28, 0x0

    sput-boolean v28, Lcom/vkontakte/android/Global;->authOK:Z

    .line 302
    sget-object v28, Lcom/vkontakte/android/APIRequest;->reauthSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 303
    sget-boolean v20, Lcom/vkontakte/android/Global;->authOK:Z

    .line 304
    .local v20, "reauthResult":Z
    if-nez v20, :cond_b

    invoke-static {}, Lcom/vkontakte/android/Auth;->doReauth()Z

    move-result v20

    .line 307
    :goto_5
    if-nez v20, :cond_c

    .line 309
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 289
    .end local v5    # "code":I
    .end local v20    # "reauthResult":Z
    .end local v23    # "s":Ljava/lang/String;
    :cond_a
    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 342
    .end local v4    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "contentEncoding":Lorg/apache/http/Header;
    .end local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v15    # "l":I
    .end local v17    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v19    # "rd":[B
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v7

    .local v7, "e":Lcom/vkontakte/android/APIException;
    move-object/from16 v28, v18

    .line 344
    goto/16 :goto_3

    .line 306
    .end local v7    # "e":Lcom/vkontakte/android/APIException;
    .restart local v4    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "code":I
    .restart local v6    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v15    # "l":I
    .restart local v17    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v19    # "rd":[B
    .restart local v20    # "reauthResult":Z
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    .restart local v23    # "s":Ljava/lang/String;
    :cond_b
    sget-object v28, Lcom/vkontakte/android/APIRequest;->reauthSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 345
    .end local v4    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "code":I
    .end local v6    # "contentEncoding":Lorg/apache/http/Header;
    .end local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v15    # "l":I
    .end local v17    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v19    # "rd":[B
    .end local v20    # "reauthResult":Z
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    .end local v23    # "s":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 354
    .local v7, "e":Ljava/lang/Throwable;
    instance-of v0, v7, Ljava/lang/OutOfMemoryError;

    move/from16 v28, v0

    if-eqz v28, :cond_15

    .line 355
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v28

    goto/16 :goto_3

    .line 312
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v4    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "code":I
    .restart local v6    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v15    # "l":I
    .restart local v17    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v19    # "rd":[B
    .restart local v20    # "reauthResult":Z
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    .restart local v23    # "s":Ljava/lang/String;
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/APIRequest;->numRetries:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/APIRequest;->numRetries:I

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/APIRequest;->numRetries:I

    move/from16 v28, v0

    if-nez v28, :cond_d

    new-instance v28, Lcom/vkontakte/android/APIException;

    const/16 v29, 0x0

    const-string v30, "too many retries"

    invoke-direct/range {v28 .. v30}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v28

    .line 314
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v18

    .end local v5    # "code":I
    .end local v20    # "reauthResult":Z
    :cond_e
    move-object/from16 v28, v18

    .line 334
    goto/16 :goto_3

    .line 315
    .restart local v5    # "code":I
    :cond_f
    const/16 v28, 0x7

    move/from16 v0, v28

    if-ne v5, v0, :cond_10

    move-object/from16 v28, v18

    .line 316
    goto/16 :goto_3

    .line 317
    :cond_10
    const/16 v28, 0xe

    move/from16 v0, v28

    if-ne v5, v0, :cond_13

    .line 318
    new-instance v11, Landroid/content/Intent;

    sget-object v28, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v29, Lcom/vkontakte/android/CaptchaActivity;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v28, 0x10000000

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    const-string v28, "url"

    const-string v29, "error"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string v30, "captcha_img"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    sget-object v28, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 322
    :goto_6
    sget-boolean v28, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    if-eqz v28, :cond_11

    .line 323
    const/16 v28, 0x0

    sput-boolean v28, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    .line 324
    sget-object v28, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    if-eqz v28, :cond_12

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    const-string v29, "captcha_sid"

    const-string v30, "error"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    const-string v31, "captcha_sid"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    const-string v29, "captcha_key"

    sget-object v30, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v28

    goto/16 :goto_3

    .line 322
    :cond_11
    const-wide/16 v28, 0x64

    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_6

    :cond_12
    move-object/from16 v28, v18

    .line 329
    goto/16 :goto_3

    .line 331
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_13
    new-instance v28, Lcom/vkontakte/android/APIException;

    const-string v29, "error"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    const-string v30, "error_msg"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v5, v1}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v28
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 340
    .end local v4    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "code":I
    .end local v6    # "contentEncoding":Lorg/apache/http/Header;
    .end local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v15    # "l":I
    .end local v17    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v19    # "rd":[B
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    .end local v23    # "s":Ljava/lang/String;
    .local v7, "e":Ljava/io/IOException;
    :cond_14
    const-string v28, "vk"

    move-object/from16 v0, v28

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    add-int/lit8 v26, v26, -0x1

    .line 362
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 359
    .local v7, "e":Ljava/lang/Throwable;
    :cond_15
    const-string v28, "vk"

    move-object/from16 v0, v28

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    const/16 v28, 0x0

    goto/16 :goto_3
.end method

.method public exec()Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 158
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

    .line 213
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

    .line 213
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 214
    return-object p0
.end method

.method public exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
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

    .line 188
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 199
    return-object p0
.end method

.method public execSync()Z
    .locals 2

    .prologue
    .line 218
    const/4 v1, 0x3

    iput v1, p0, Lcom/vkontakte/android/APIRequest;->numRetries:I

    .line 219
    invoke-virtual {p0}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v0

    .line 220
    .local v0, "o":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;->reqDone(Lorg/json/JSONObject;)Z

    move-result v1

    return v1
.end method

.method public forceHTTPS(Z)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    .line 154
    return-object p0
.end method

.method public getSig()Ljava/lang/String;
    .locals 6

    .prologue
    .line 123
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

    .line 124
    .local v2, "src":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 125
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
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

    .line 132
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

    .line 134
    invoke-static {v2}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 126
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "key":Ljava/lang/String;
    const-string v3, "method"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
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

    .line 129
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
    .line 148
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    .line 149
    return-object p0
.end method

.method public param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 143
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 138
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    return-object p0
.end method

.method public wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 366
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
    .line 370
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    .line 371
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/vkontakte/android/APIRequest$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/APIRequest$3;-><init>(Lcom/vkontakte/android/APIRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 378
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 379
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 380
    return-object p0
.end method
