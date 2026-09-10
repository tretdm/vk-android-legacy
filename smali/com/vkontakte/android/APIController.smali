.class public Lcom/vkontakte/android/APIController;
.super Ljava/lang/Object;
.source "APIController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/APIController$RequestRunner;
    }
.end annotation


# static fields
.field public static final API_DEBUG:Z

.field public static final API_URL:Ljava/lang/String;

.field public static final USER_AGENT:Ljava/lang/String;

.field private static bgThread:Lcom/vkontakte/android/background/WorkerThread;

.field private static httpclient:Lorg/apache/http/client/HttpClient;

.field private static queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vkontakte/android/APIRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static reqThread:Lcom/vkontakte/android/background/WorkerThread;

.field private static validation:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 45
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lcom/vkontakte/android/APIController;->queue:Ljava/util/LinkedList;

    .line 47
    new-instance v3, Lcom/vkontakte/android/background/WorkerThread;

    const-string v4, "API Main Thread"

    invoke-direct {v3, v4}, Lcom/vkontakte/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/vkontakte/android/APIController;->reqThread:Lcom/vkontakte/android/background/WorkerThread;

    new-instance v3, Lcom/vkontakte/android/background/WorkerThread;

    const-string v4, "API Background Thread"

    invoke-direct {v3, v4}, Lcom/vkontakte/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/vkontakte/android/APIController;->bgThread:Lcom/vkontakte/android/background/WorkerThread;

    .line 50
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "__dbg_api"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "apiHost"

    const-string v6, "api.openvk.org"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/method/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/APIController;->API_URL:Ljava/lang/String;

    .line 56
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v8, v8}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v3, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    .line 59
    const-string v1, ""

    .line 60
    .local v1, "appver":Ljava/lang/String;
    const/4 v0, 0x0

    .line 62
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

    .line 63
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 64
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "VKAndroidApp/%s-%d (Android %s; SDK %d; %s; %s %s; %s)"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "user.language"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/APIController;->USER_AGENT:Ljava/lang/String;

    .line 68
    sget-object v3, Lcom/vkontakte/android/APIController;->reqThread:Lcom/vkontakte/android/background/WorkerThread;

    invoke-virtual {v3}, Lcom/vkontakte/android/background/WorkerThread;->start()V

    .line 69
    sget-object v3, Lcom/vkontakte/android/APIController;->bgThread:Lcom/vkontakte/android/background/WorkerThread;

    invoke-virtual {v3}, Lcom/vkontakte/android/background/WorkerThread;->start()V

    .line 70
    return-void

    .line 65
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeRequest(Lcom/vkontakte/android/APIRequest;)V
    .locals 3
    .param p0, "req"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/vkontakte/android/APIRequest;->background:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/APIController;->bgThread:Lcom/vkontakte/android/background/WorkerThread;

    :goto_0
    new-instance v1, Lcom/vkontakte/android/APIController$RequestRunner;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/APIController$RequestRunner;-><init>(Lcom/vkontakte/android/APIRequest;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;I)V

    .line 74
    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/vkontakte/android/APIController;->reqThread:Lcom/vkontakte/android/background/WorkerThread;

    goto :goto_0
.end method

.method static runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;
    .locals 29
    .param p0, "req"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 78
    :try_start_0
    sget-object v25, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 79
    sget-object v25, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1e

    .line 81
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/vkontakte/android/APIRequest;->initTime:J

    .line 82
    .local v22, "time":J
    sget-object v25, Lcom/vkontakte/android/APIController;->httpclient:Lorg/apache/http/client/HttpClient;

    if-nez v25, :cond_0

    .line 83
    new-instance v8, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v8}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 84
    .local v8, "hParams":Lorg/apache/http/params/HttpParams;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 85
    sget-object v25, Lcom/vkontakte/android/APIController;->USER_AGENT:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 86
    const/16 v25, 0x2000

    move/from16 v0, v25

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    const/16 v25, 0x7530

    move/from16 v0, v25

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 88
    const/16 v25, 0x7530

    move/from16 v0, v25

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 90
    new-instance v18, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct/range {v18 .. v18}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 91
    .local v18, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v25, Lorg/apache/http/conn/scheme/Scheme;

    const-string v26, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v27

    const/16 v28, 0x1bb

    invoke-direct/range {v25 .. v28}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 92
    new-instance v25, Lorg/apache/http/conn/scheme/Scheme;

    const-string v26, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v27

    const/16 v28, 0x50

    invoke-direct/range {v25 .. v28}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 93
    new-instance v25, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v26, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v25, Lcom/vkontakte/android/APIController;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 110
    .end local v8    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v18    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v26, Ljava/lang/StringBuilder;

    sget-object v25, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    const-string v27, "useHTTPS"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-nez v25, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    sget-object v25, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v25, :cond_a

    :cond_1
    const-string v25, "https"

    :goto_1
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "://"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/vkontakte/android/APIController;->API_URL:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    const-string v27, "method"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 112
    .local v24, "url":Ljava/lang/String;
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 113
    .local v9, "httppost":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 114
    const-string v25, "Accept-Encoding"

    const-string v26, "gzip"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/16 v16, 0x0

    .line 116
    .local v16, "obj":Lorg/json/JSONObject;
    const/16 v19, 0x0

    .line 117
    .local v19, "response":Lorg/apache/http/HttpResponse;
    const/4 v11, 0x0

    .line 120
    .local v11, "is":Ljava/io/InputStream;
    :try_start_1
    sget-object v25, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v25, :cond_2

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    const-string v26, "access_token"

    sget-object v27, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual/range {v25 .. v27}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v15, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 125
    .local v7, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    sget-boolean v25, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v25, :cond_3

    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v25, "====="

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    const-string v28, "method"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-nez v25, :cond_b

    .line 132
    sget-boolean v25, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v25, :cond_4

    const-string v25, "vk"

    const-string v26, "====="

    invoke-static/range {v25 .. v26}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_4
    sget-object v25, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v25, :cond_5

    sget-object v25, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    if-eqz v25, :cond_5

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/APIRequest;->getSig()Ljava/lang/String;

    move-result-object v21

    .line 135
    .local v21, "sig":Ljava/lang/String;
    new-instance v25, Lorg/apache/http/message/BasicNameValuePair;

    const-string v26, "sig"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v21    # "sig":Ljava/lang/String;
    :cond_5
    new-instance v25, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v26, "UTF-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 140
    sget-boolean v25, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v25, :cond_6

    .line 141
    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v25, "["

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    const-string v28, "method"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "] Prepare: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    sub-long v27, v27, v22

    move-object/from16 v0, v25

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 146
    :cond_6
    sget-object v25, Lcom/vkontakte/android/APIController;->httpclient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/APIRequest;->isCanceled()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v25

    if-eqz v25, :cond_f

    .line 276
    if-eqz v19, :cond_7

    .line 278
    :try_start_2
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1d

    .line 281
    :cond_7
    :goto_3
    if-eqz v11, :cond_8

    .line 283
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 148
    :cond_8
    :goto_4
    const/16 v25, 0x0

    .line 287
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_9
    :goto_5
    return-object v25

    .line 110
    .end local v9    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v16    # "obj":Lorg/json/JSONObject;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v24    # "url":Ljava/lang/String;
    :cond_a
    const-string v25, "http"

    goto/16 :goto_1

    .line 127
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v9    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v16    # "obj":Lorg/json/JSONObject;
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    .restart local v24    # "url":Ljava/lang/String;
    :cond_b
    :try_start_4
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 128
    .local v13, "key":Ljava/lang/String;
    const-string v25, "method"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 129
    sget-boolean v25, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v25, :cond_c

    const-string v26, "vk"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_c
    new-instance v26, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v13, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 253
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v6

    .line 255
    .local v6, "e":Ljava/io/IOException;
    :try_start_5
    const-string v25, "vk"

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 276
    if-eqz v19, :cond_d

    .line 278
    :try_start_6
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14

    .line 281
    :cond_d
    :goto_6
    if-eqz v11, :cond_e

    .line 283
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    .line 287
    :cond_e
    :goto_7
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 150
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_f
    :try_start_8
    sget-boolean v25, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v25, :cond_10

    .line 151
    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v25, "["

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    const-string v28, "method"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "] Execute: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    sub-long v27, v27, v22

    move-object/from16 v0, v25

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 155
    :cond_10
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 156
    const-string v25, "Content-Encoding"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 157
    .local v5, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v5, :cond_11

    const-string v25, "gzip"

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_11

    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v11    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    move-object v11, v12

    .line 158
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :cond_11
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    .local v3, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 160
    .local v17, "rd":[B
    const/4 v14, 0x0

    .line 161
    .local v14, "l":I
    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-gtz v14, :cond_16

    .line 162
    new-instance v20, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    const-string v26, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 163
    .local v20, "s":Ljava/lang/String;
    const/4 v3, 0x0

    .line 164
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 165
    sget-boolean v25, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v25, :cond_12

    .line 166
    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v25, "["

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    const-string v28, "method"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "] Receive: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    sub-long v27, v27, v22

    move-object/from16 v0, v25

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 170
    :cond_12
    sget-boolean v25, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v25, :cond_13

    .line 171
    const-string v25, "vk"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Resp status="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v25, "vk"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Response="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_13
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 175
    const/16 v19, 0x0

    .line 176
    const/4 v11, 0x0

    .line 179
    new-instance v25, Lorg/json/JSONTokener;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v16, v0

    .line 180
    const-string v25, "error"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_31

    .line 181
    const-string v25, "error"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "error_code"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 182
    .local v4, "code":I
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v4, v0, :cond_1c

    .line 184
    const-string v25, "account.unregisterDevice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v26, v0

    const-string v27, "method"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 185
    new-instance v25, Lcom/vkontakte/android/APIException;

    const/16 v26, 0x0

    const-string v27, "already unregistered"

    invoke-direct/range {v25 .. v27}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v25
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 256
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "code":I
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v14    # "l":I
    .end local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v17    # "rd":[B
    .end local v20    # "s":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 276
    .local v6, "e":Lcom/vkontakte/android/APIException;
    if-eqz v19, :cond_14

    .line 278
    :try_start_9
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_13

    .line 281
    :cond_14
    :goto_9
    if-eqz v11, :cond_15

    .line 283
    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    :cond_15
    :goto_a
    move-object/from16 v25, v16

    .line 258
    goto/16 :goto_5

    .line 161
    .end local v6    # "e":Lcom/vkontakte/android/APIException;
    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v14    # "l":I
    .restart local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v17    # "rd":[B
    :cond_16
    const/16 v25, 0x0

    :try_start_b
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_8

    .line 259
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v14    # "l":I
    .end local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v17    # "rd":[B
    :catch_2
    move-exception v6

    .line 268
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_c
    instance-of v0, v6, Ljava/lang/OutOfMemoryError;

    move/from16 v25, v0

    if-eqz v25, :cond_35

    .line 269
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 270
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v25

    .line 276
    if-eqz v19, :cond_17

    .line 278
    :try_start_d
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_12

    .line 281
    :cond_17
    :goto_b
    if-eqz v11, :cond_9

    .line 283
    :try_start_e
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_5

    .line 284
    :catch_3
    move-exception v26

    goto/16 :goto_5

    .line 200
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "code":I
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v14    # "l":I
    .restart local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v17    # "rd":[B
    .restart local v20    # "s":Ljava/lang/String;
    :cond_18
    :try_start_f
    const-string v25, "account.unregisterDevice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v26, v0

    const-string v27, "method"

    invoke-virtual/range {v26 .. v27}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_19

    .line 201
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->onReauthError()V

    .line 202
    :cond_19
    new-instance v25, Lcom/vkontakte/android/APIException;

    const/16 v26, 0x0

    const-string v27, "reauth error"

    invoke-direct/range {v25 .. v27}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v25
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 275
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "code":I
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v14    # "l":I
    .end local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v17    # "rd":[B
    .end local v20    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v25

    .line 276
    if-eqz v19, :cond_1a

    .line 278
    :try_start_10
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 281
    :cond_1a
    :goto_c
    if-eqz v11, :cond_1b

    .line 283
    :try_start_11
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    .line 286
    :cond_1b
    :goto_d
    throw v25

    .line 205
    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "code":I
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v14    # "l":I
    .restart local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v17    # "rd":[B
    .restart local v20    # "s":Ljava/lang/String;
    :cond_1c
    const/16 v25, 0x7

    move/from16 v0, v25

    if-ne v4, v0, :cond_1f

    .line 276
    if-eqz v19, :cond_1d

    .line 278
    :try_start_12
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1c

    .line 281
    :cond_1d
    :goto_e
    if-eqz v11, :cond_1e

    .line 283
    :try_start_13
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    :cond_1e
    :goto_f
    move-object/from16 v25, v16

    .line 206
    goto/16 :goto_5

    .line 207
    :cond_1f
    const/16 v25, 0xe

    move/from16 v0, v25

    if-ne v4, v0, :cond_25

    .line 208
    :try_start_14
    new-instance v10, Landroid/content/Intent;

    sget-object v25, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v26, Lcom/vkontakte/android/CaptchaActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    const-string v25, "url"

    const-string v26, "error"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "captcha_img"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    sget-object v25, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    :goto_10
    sget-boolean v25, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    if-eqz v25, :cond_21

    .line 213
    const/16 v25, 0x0

    sput-boolean v25, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    .line 214
    sget-object v25, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    if-eqz v25, :cond_22

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    const-string v26, "captcha_sid"

    const-string v27, "error"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "captcha_sid"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    const-string v26, "captcha_key"

    sget-object v27, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual/range {v25 .. v27}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v25

    .line 276
    if-eqz v19, :cond_20

    .line 278
    :try_start_15
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1b

    .line 281
    :cond_20
    :goto_11
    if-eqz v11, :cond_9

    .line 283
    :try_start_16
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    goto/16 :goto_5

    .line 284
    :catch_4
    move-exception v26

    goto/16 :goto_5

    .line 212
    :cond_21
    const-wide/16 v25, 0x64

    :try_start_17
    invoke-static/range {v25 .. v26}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_10

    .line 276
    :cond_22
    if-eqz v19, :cond_23

    .line 278
    :try_start_18
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1a

    .line 281
    :cond_23
    :goto_12
    if-eqz v11, :cond_24

    .line 283
    :try_start_19
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    :cond_24
    :goto_13
    move-object/from16 v25, v16

    .line 219
    goto/16 :goto_5

    .line 220
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_25
    const/16 v25, 0x10

    move/from16 v0, v25

    if-ne v4, v0, :cond_28

    .line 221
    :try_start_1a
    sget-boolean v25, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v25, :cond_26

    const-string v25, "vk"

    const-string v26, "Force HTTPS"

    invoke-static/range {v25 .. v26}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_26
    sget-object v25, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "useHTTPS"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    sget-object v25, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "forceHTTPS"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-result-object v25

    .line 276
    if-eqz v19, :cond_27

    .line 278
    :try_start_1b
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_19

    .line 281
    :cond_27
    :goto_14
    if-eqz v11, :cond_9

    .line 283
    :try_start_1c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5

    goto/16 :goto_5

    .line 284
    :catch_5
    move-exception v26

    goto/16 :goto_5

    .line 225
    :cond_28
    const/16 v25, 0x11

    move/from16 v0, v25

    if-ne v4, v0, :cond_30

    .line 226
    :try_start_1d
    sget-boolean v25, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v25, :cond_29

    const-string v25, "vk"

    const-string v26, "Need validation"

    invoke-static/range {v25 .. v26}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_2
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 227
    :cond_29
    :try_start_1e
    sget-object v25, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_18
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 228
    :goto_15
    :try_start_1f
    new-instance v10, Landroid/content/Intent;

    sget-object v25, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v26, Lcom/vkontakte/android/ValidationActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .restart local v10    # "intent":Landroid/content/Intent;
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    const-string v25, "url"

    const-string v26, "error"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "redirect_uri"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const/16 v25, 0x0

    sput v25, Lcom/vkontakte/android/ValidationActivity;->result:I

    .line 232
    sget-object v25, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 233
    :goto_16
    sget v25, Lcom/vkontakte/android/ValidationActivity;->result:I

    if-eqz v25, :cond_2c

    .line 234
    sget v25, Lcom/vkontakte/android/ValidationActivity;->result:I

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2d

    .line 235
    const/16 v25, 0x0

    sput v25, Lcom/vkontakte/android/ValidationActivity;->result:I

    .line 236
    sget-boolean v25, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v25, :cond_2a

    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v25, "Repeating request "

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    const-string v28, "method"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_2a
    sget-object v25, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/Semaphore;->release()V

    .line 238
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_2
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-result-object v25

    .line 276
    if-eqz v19, :cond_2b

    .line 278
    :try_start_20
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_17

    .line 281
    :cond_2b
    :goto_17
    if-eqz v11, :cond_9

    .line 283
    :try_start_21
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_6

    goto/16 :goto_5

    .line 284
    :catch_6
    move-exception v26

    goto/16 :goto_5

    .line 233
    :cond_2c
    const-wide/16 v25, 0x64

    :try_start_22
    invoke-static/range {v25 .. v26}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_16

    .line 240
    :cond_2d
    const/16 v25, 0x0

    sput v25, Lcom/vkontakte/android/ValidationActivity;->result:I

    .line 241
    sget-object v25, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_2
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 276
    if-eqz v19, :cond_2e

    .line 278
    :try_start_23
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_16

    .line 281
    :cond_2e
    :goto_18
    if-eqz v11, :cond_2f

    .line 283
    :try_start_24
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_a

    :cond_2f
    :goto_19
    move-object/from16 v25, v16

    .line 242
    goto/16 :goto_5

    .line 244
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_30
    :try_start_25
    new-instance v25, Lcom/vkontakte/android/APIException;

    const-string v26, "error"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "error_msg"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 247
    .end local v4    # "code":I
    :cond_31
    sget-boolean v25, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v25, :cond_32

    .line 248
    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v25, "["

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    const-string v28, "method"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "] Parse JSON: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    sub-long v27, v27, v22

    move-object/from16 v0, v25

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Lcom/vkontakte/android/APIException; {:try_start_25 .. :try_end_25} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_2
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    move-result-wide v22

    .line 276
    :cond_32
    if-eqz v19, :cond_33

    .line 278
    :try_start_26
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_15

    .line 281
    :cond_33
    :goto_1a
    if-eqz v11, :cond_34

    .line 283
    :try_start_27
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_b

    :cond_34
    :goto_1b
    move-object/from16 v25, v16

    .line 252
    goto/16 :goto_5

    .line 273
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v14    # "l":I
    .end local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v17    # "rd":[B
    .end local v20    # "s":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Throwable;
    :cond_35
    :try_start_28
    const-string v25, "vk"

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 276
    if-eqz v19, :cond_36

    .line 278
    :try_start_29
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_11

    .line 281
    :cond_36
    :goto_1c
    if-eqz v11, :cond_37

    .line 283
    :try_start_2a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_e

    .line 274
    :cond_37
    :goto_1d
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 284
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_7
    move-exception v25

    goto/16 :goto_4

    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "code":I
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v14    # "l":I
    .restart local v17    # "rd":[B
    .restart local v20    # "s":Ljava/lang/String;
    :catch_8
    move-exception v25

    goto/16 :goto_f

    .restart local v10    # "intent":Landroid/content/Intent;
    :catch_9
    move-exception v25

    goto/16 :goto_13

    :catch_a
    move-exception v25

    goto/16 :goto_19

    .end local v4    # "code":I
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_b
    move-exception v25

    goto :goto_1b

    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v14    # "l":I
    .end local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v17    # "rd":[B
    .end local v20    # "s":Ljava/lang/String;
    .local v6, "e":Ljava/io/IOException;
    :catch_c
    move-exception v25

    goto/16 :goto_7

    .local v6, "e":Lcom/vkontakte/android/APIException;
    :catch_d
    move-exception v25

    goto/16 :goto_a

    .local v6, "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v25

    goto :goto_1d

    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v26

    goto/16 :goto_d

    .line 279
    :catch_10
    move-exception v26

    goto/16 :goto_c

    .restart local v6    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v25

    goto :goto_1c

    :catch_12
    move-exception v26

    goto/16 :goto_b

    .local v6, "e":Lcom/vkontakte/android/APIException;
    :catch_13
    move-exception v25

    goto/16 :goto_9

    .local v6, "e":Ljava/io/IOException;
    :catch_14
    move-exception v25

    goto/16 :goto_6

    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v14    # "l":I
    .restart local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v17    # "rd":[B
    .restart local v20    # "s":Ljava/lang/String;
    :catch_15
    move-exception v25

    goto :goto_1a

    .restart local v4    # "code":I
    .restart local v10    # "intent":Landroid/content/Intent;
    :catch_16
    move-exception v25

    goto/16 :goto_18

    :catch_17
    move-exception v26

    goto/16 :goto_17

    .line 227
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_18
    move-exception v25

    goto/16 :goto_15

    .line 279
    :catch_19
    move-exception v26

    goto/16 :goto_14

    .restart local v10    # "intent":Landroid/content/Intent;
    :catch_1a
    move-exception v25

    goto/16 :goto_12

    :catch_1b
    move-exception v26

    goto/16 :goto_11

    .end local v10    # "intent":Landroid/content/Intent;
    :catch_1c
    move-exception v25

    goto/16 :goto_e

    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "code":I
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v14    # "l":I
    .end local v17    # "rd":[B
    .end local v20    # "s":Ljava/lang/String;
    :catch_1d
    move-exception v25

    goto/16 :goto_3

    .line 80
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v15    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16    # "obj":Lorg/json/JSONObject;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v22    # "time":J
    .end local v24    # "url":Ljava/lang/String;
    :catch_1e
    move-exception v25

    goto/16 :goto_0
.end method
