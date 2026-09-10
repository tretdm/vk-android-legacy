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

.field private static final COUNTER_RESET_TIME:J = 0x7d0L

.field private static final MAX_REQUESTS_PER_COUNT:J = 0xaL

.field public static final USER_AGENT:Ljava/lang/String;

.field private static bgThread:Lcom/vkontakte/android/background/WorkerThread;

.field private static counterResetTime:J

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

.field private static requestCounter:I

.field private static validation:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lcom/vkontakte/android/APIController;->queue:Ljava/util/LinkedList;

    .line 48
    new-instance v3, Lcom/vkontakte/android/background/WorkerThread;

    const-string v6, "API Main Thread"

    invoke-direct {v3, v6}, Lcom/vkontakte/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/vkontakte/android/APIController;->reqThread:Lcom/vkontakte/android/background/WorkerThread;

    new-instance v3, Lcom/vkontakte/android/background/WorkerThread;

    const-string v6, "API Background Thread"

    invoke-direct {v3, v6}, Lcom/vkontakte/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/vkontakte/android/APIController;->bgThread:Lcom/vkontakte/android/background/WorkerThread;

    .line 54
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "__dbg_api"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    const v6, 0x1887270

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "apiHost"

    const-string v8, "api.openvk.org"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/method/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/APIController;->API_URL:Ljava/lang/String;

    .line 60
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v3, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    .line 61
    sput v4, Lcom/vkontakte/android/APIController;->requestCounter:I

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/vkontakte/android/APIController;->counterResetTime:J

    .line 65
    const-string v1, ""

    .line 66
    .local v1, "appver":Ljava/lang/String;
    const/4 v0, 0x0

    .line 68
    .local v0, "appbuild":I
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 69
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 70
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "VKAndroidApp/%s-%d (Android %s; SDK %d; %s; %s %s; %s)"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    const/4 v4, 0x2

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v7, v4

    const/4 v4, 0x3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v5, v7, v4

    const/4 v4, 0x5

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v5, v7, v4

    const/4 v4, 0x6

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v7, v4

    const/4 v4, 0x7

    const-string v5, "user.language"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/APIController;->USER_AGENT:Ljava/lang/String;

    .line 74
    sget-object v3, Lcom/vkontakte/android/APIController;->reqThread:Lcom/vkontakte/android/background/WorkerThread;

    invoke-virtual {v3}, Lcom/vkontakte/android/background/WorkerThread;->start()V

    .line 75
    sget-object v3, Lcom/vkontakte/android/APIController;->bgThread:Lcom/vkontakte/android/background/WorkerThread;

    invoke-virtual {v3}, Lcom/vkontakte/android/background/WorkerThread;->start()V

    .line 76
    return-void

    .end local v0    # "appbuild":I
    .end local v1    # "appver":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 54
    goto/16 :goto_0

    .line 71
    .restart local v0    # "appbuild":I
    .restart local v1    # "appver":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeRequest(Lcom/vkontakte/android/APIRequest;)V
    .locals 3
    .param p0, "req"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/vkontakte/android/APIRequest;->background:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/APIController;->bgThread:Lcom/vkontakte/android/background/WorkerThread;

    :goto_0
    new-instance v1, Lcom/vkontakte/android/APIController$RequestRunner;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/APIController$RequestRunner;-><init>(Lcom/vkontakte/android/APIRequest;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;I)V

    .line 80
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/vkontakte/android/APIController;->reqThread:Lcom/vkontakte/android/background/WorkerThread;

    goto :goto_0
.end method

.method public static runInApi(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 359
    sget-object v0, Lcom/vkontakte/android/APIController;->reqThread:Lcom/vkontakte/android/background/WorkerThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vkontakte/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;I)V

    .line 360
    return-void
.end method

.method public static runInBg(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 355
    sget-object v0, Lcom/vkontakte/android/APIController;->bgThread:Lcom/vkontakte/android/background/WorkerThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vkontakte/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;I)V

    .line 356
    return-void
.end method

.method static runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;
    .locals 33
    .param p0, "req"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 84
    :try_start_0
    sget-object v29, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 85
    sget-object v29, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1c

    .line 87
    :goto_0
    sget v29, Lcom/vkontakte/android/APIController;->requestCounter:I

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    const-wide/16 v31, 0xa

    cmp-long v29, v29, v31

    if-gez v29, :cond_a

    .line 94
    sget v29, Lcom/vkontakte/android/APIController;->requestCounter:I

    add-int/lit8 v29, v29, 0x1

    sput v29, Lcom/vkontakte/android/APIController;->requestCounter:I

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/vkontakte/android/APIRequest;->initTime:J

    .line 96
    .local v26, "time":J
    sget-object v29, Lcom/vkontakte/android/APIController;->httpclient:Lorg/apache/http/client/HttpClient;

    if-nez v29, :cond_0

    .line 97
    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 98
    .local v11, "hParams":Lorg/apache/http/params/HttpParams;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 99
    sget-object v29, Lcom/vkontakte/android/APIController;->USER_AGENT:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 100
    const/16 v29, 0x2000

    move/from16 v0, v29

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 101
    const/16 v29, 0x7530

    move/from16 v0, v29

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 102
    const/16 v29, 0x7530

    move/from16 v0, v29

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 104
    new-instance v22, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct/range {v22 .. v22}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 105
    .local v22, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v29, Lorg/apache/http/conn/scheme/Scheme;

    const-string v30, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v31

    const/16 v32, 0x1bb

    invoke-direct/range {v29 .. v32}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 106
    new-instance v29, Lorg/apache/http/conn/scheme/Scheme;

    const-string v30, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v31

    const/16 v32, 0x50

    invoke-direct/range {v29 .. v32}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 107
    new-instance v29, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v30, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-direct {v0, v11, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v29, Lcom/vkontakte/android/APIController;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 124
    .end local v11    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v22    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v30, Ljava/lang/StringBuilder;

    sget-object v29, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v29

    const-string v31, "useHTTPS"

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    if-nez v29, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    move/from16 v29, v0

    if-nez v29, :cond_1

    sget-object v29, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v29, :cond_c

    :cond_1
    const-string v29, "https"

    :goto_1
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "://"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/vkontakte/android/APIController;->API_URL:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    const-string v31, "method"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 126
    .local v28, "url":Ljava/lang/String;
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 127
    .local v12, "httppost":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 128
    const-string v29, "Accept-Encoding"

    const-string v30, "gzip"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/16 v20, 0x0

    .line 130
    .local v20, "obj":Lorg/json/JSONObject;
    const/16 v23, 0x0

    .line 131
    .local v23, "response":Lorg/apache/http/HttpResponse;
    const/4 v15, 0x0

    .line 134
    .local v15, "is":Ljava/io/InputStream;
    :try_start_1
    sget-object v29, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v29, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    const-string v30, "access_token"

    sget-object v31, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual/range {v29 .. v31}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_2
    new-instance v19, Ljava/util/ArrayList;

    const/16 v29, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v19, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 139
    .local v7, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_3

    const-string v30, "vk"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "====="

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    const-string v32, "method"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v29

    if-nez v29, :cond_d

    .line 146
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_4

    const-string v29, "vk"

    const-string v30, "====="

    invoke-static/range {v29 .. v30}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_4
    sget-object v29, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v29, :cond_5

    sget-object v29, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    if-eqz v29, :cond_5

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/APIRequest;->getSig()Ljava/lang/String;

    move-result-object v25

    .line 149
    .local v25, "sig":Ljava/lang/String;
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "sig"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v25    # "sig":Ljava/lang/String;
    :cond_5
    new-instance v29, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v30, "UTF-8"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 153
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_6

    .line 154
    const-string v30, "vk"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "["

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    const-string v32, "method"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, "] Prepare: "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v26

    move-object/from16 v0, v29

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 159
    :cond_6
    sget-object v29, Lcom/vkontakte/android/APIController;->httpclient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, v29

    invoke-interface {v0, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v23

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/APIRequest;->isCanceled()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v29

    if-eqz v29, :cond_11

    .line 283
    if-eqz v23, :cond_7

    .line 285
    :try_start_2
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1b

    .line 288
    :cond_7
    :goto_3
    if-eqz v15, :cond_8

    .line 290
    :try_start_3
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 161
    :cond_8
    :goto_4
    const/16 v29, 0x0

    .line 294
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_9
    :goto_5
    return-object v29

    .line 88
    .end local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v20    # "obj":Lorg/json/JSONObject;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v26    # "time":J
    .end local v28    # "url":Ljava/lang/String;
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sget-wide v31, Lcom/vkontakte/android/APIController;->counterResetTime:J

    sub-long v29, v29, v31

    const-wide/16 v31, 0x7d0

    cmp-long v29, v29, v31

    if-lez v29, :cond_b

    .line 89
    const/16 v29, 0x0

    sput v29, Lcom/vkontakte/android/APIController;->requestCounter:I

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sput-wide v29, Lcom/vkontakte/android/APIController;->counterResetTime:J

    .line 92
    :cond_b
    const-wide/16 v29, 0x7d0

    :try_start_4
    invoke-static/range {v29 .. v30}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v29

    goto/16 :goto_0

    .line 124
    .restart local v26    # "time":J
    :cond_c
    const-string v29, "http"

    goto/16 :goto_1

    .line 141
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v20    # "obj":Lorg/json/JSONObject;
    .restart local v23    # "response":Lorg/apache/http/HttpResponse;
    .restart local v28    # "url":Ljava/lang/String;
    :cond_d
    :try_start_5
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 142
    .local v17, "key":Ljava/lang/String;
    const-string v29, "method"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    .line 143
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_e

    const-string v30, "vk"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, "="

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_e
    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 270
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v6

    .line 271
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    const-string v29, "vk"

    move-object/from16 v0, v29

    invoke-static {v0, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 283
    if-eqz v23, :cond_f

    .line 285
    :try_start_7
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_13

    .line 288
    :cond_f
    :goto_6
    if-eqz v15, :cond_10

    .line 290
    :try_start_8
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    .line 294
    :cond_10
    :goto_7
    const/16 v29, 0x0

    goto/16 :goto_5

    .line 163
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_11
    :try_start_9
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_12

    .line 164
    const-string v30, "vk"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "["

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    const-string v32, "method"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, "] Execute: "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v26

    move-object/from16 v0, v29

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 168
    :cond_12
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 169
    const-string v29, "Content-Encoding"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 170
    .local v5, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v5, :cond_13

    const-string v29, "gzip"

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_13

    new-instance v16, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v15    # "is":Ljava/io/InputStream;
    .local v16, "is":Ljava/io/InputStream;
    move-object/from16 v15, v16

    .line 171
    .end local v16    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    :cond_13
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    .local v3, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v29, 0x400

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 173
    .local v21, "rd":[B
    const/16 v18, 0x0

    .line 174
    .local v18, "l":I
    :goto_8
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/io/InputStream;->read([B)I

    move-result v18

    if-gtz v18, :cond_19

    .line 175
    new-instance v24, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v29

    const-string v30, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 176
    .local v24, "s":Ljava/lang/String;
    const/4 v3, 0x0

    .line 177
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 178
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_14

    .line 179
    const-string v30, "vk"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "["

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    const-string v32, "method"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, "] Receive: "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v26

    move-object/from16 v0, v29

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 183
    :cond_14
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_15

    .line 184
    const-string v29, "vk"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Resp status="

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v29, "vk"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Response="

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_15
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 188
    const/16 v23, 0x0

    .line 189
    const/4 v15, 0x0

    .line 192
    new-instance v29, Lorg/json/JSONTokener;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v20, v0

    .line 193
    const-string v29, "error"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 194
    .local v9, "error":Lorg/json/JSONObject;
    const-string v29, "execute_errors"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 195
    const-string v29, "execute_errors"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 196
    .local v10, "errs":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v29

    if-lt v13, v0, :cond_1b

    .line 205
    .end local v10    # "errs":Lorg/json/JSONArray;
    .end local v13    # "i":I
    :cond_16
    :goto_a
    if-eqz v9, :cond_36

    .line 206
    const-string v29, "error_code"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 207
    .local v4, "code":I
    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v4, v0, :cond_22

    .line 209
    const-string v29, "account.unregisterDevice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v30, v0

    const-string v31, "method"

    invoke-virtual/range {v30 .. v31}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 210
    new-instance v29, Lcom/vkontakte/android/APIException;

    const/16 v30, 0x0

    const-string v31, "already unregistered"

    invoke-direct/range {v29 .. v31}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v29
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 272
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "code":I
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v18    # "l":I
    .end local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v21    # "rd":[B
    .end local v24    # "s":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 283
    .local v6, "e":Lcom/vkontakte/android/APIException;
    if-eqz v23, :cond_17

    .line 285
    :try_start_a
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12

    .line 288
    :cond_17
    :goto_b
    if-eqz v15, :cond_18

    .line 290
    :try_start_b
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    :cond_18
    :goto_c
    move-object/from16 v29, v20

    .line 273
    goto/16 :goto_5

    .line 174
    .end local v6    # "e":Lcom/vkontakte/android/APIException;
    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v18    # "l":I
    .restart local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v21    # "rd":[B
    :cond_19
    const/16 v29, 0x0

    :try_start_c
    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_8

    .line 274
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v18    # "l":I
    .end local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v21    # "rd":[B
    :catch_3
    move-exception v6

    .line 275
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_d
    instance-of v0, v6, Ljava/lang/OutOfMemoryError;

    move/from16 v29, v0

    if-eqz v29, :cond_3a

    .line 276
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 277
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v29

    .line 283
    if-eqz v23, :cond_1a

    .line 285
    :try_start_e
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    .line 288
    :cond_1a
    :goto_d
    if-eqz v15, :cond_9

    .line 290
    :try_start_f
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_5

    .line 291
    :catch_4
    move-exception v30

    goto/16 :goto_5

    .line 197
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v9    # "error":Lorg/json/JSONObject;
    .restart local v10    # "errs":Lorg/json/JSONArray;
    .restart local v13    # "i":I
    .restart local v18    # "l":I
    .restart local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v21    # "rd":[B
    .restart local v24    # "s":Ljava/lang/String;
    :cond_1b
    :try_start_10
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 198
    .local v8, "err":Lorg/json/JSONObject;
    const-string v29, "error_code"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 199
    .restart local v4    # "code":I
    const/16 v29, 0xe

    move/from16 v0, v29

    if-eq v4, v0, :cond_1c

    const/16 v29, 0x11

    move/from16 v0, v29

    if-ne v4, v0, :cond_1d

    .line 200
    :cond_1c
    move-object v9, v8

    .line 201
    goto/16 :goto_a

    .line 196
    :cond_1d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_9

    .line 212
    .end local v8    # "err":Lorg/json/JSONObject;
    .end local v10    # "errs":Lorg/json/JSONArray;
    .end local v13    # "i":I
    :cond_1e
    const-string v29, "account.unregisterDevice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v30, v0

    const-string v31, "method"

    invoke-virtual/range {v30 .. v31}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1f

    .line 213
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->onReauthError()V

    .line 214
    :cond_1f
    new-instance v29, Lcom/vkontakte/android/APIException;

    const/16 v30, 0x0

    const-string v31, "reauth error"

    invoke-direct/range {v29 .. v31}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v29
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 282
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "code":I
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v18    # "l":I
    .end local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v21    # "rd":[B
    .end local v24    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v29

    .line 283
    if-eqz v23, :cond_20

    .line 285
    :try_start_11
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    .line 288
    :cond_20
    :goto_e
    if-eqz v15, :cond_21

    .line 290
    :try_start_12
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 293
    :cond_21
    :goto_f
    throw v29

    .line 215
    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "code":I
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v9    # "error":Lorg/json/JSONObject;
    .restart local v18    # "l":I
    .restart local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v21    # "rd":[B
    .restart local v24    # "s":Ljava/lang/String;
    :cond_22
    const/16 v29, 0x7

    move/from16 v0, v29

    if-ne v4, v0, :cond_25

    .line 283
    if-eqz v23, :cond_23

    .line 285
    :try_start_13
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1a

    .line 288
    :cond_23
    :goto_10
    if-eqz v15, :cond_24

    .line 290
    :try_start_14
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    :cond_24
    :goto_11
    move-object/from16 v29, v20

    .line 216
    goto/16 :goto_5

    .line 217
    :cond_25
    const/16 v29, 0xe

    move/from16 v0, v29

    if-ne v4, v0, :cond_2c

    .line 218
    :try_start_15
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_26

    const-string v29, "vk"

    const-string v30, "API captcha"

    invoke-static/range {v29 .. v30}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 219
    :cond_26
    :try_start_16
    sget-object v29, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 220
    :goto_12
    :try_start_17
    new-instance v14, Landroid/content/Intent;

    sget-object v29, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v30, Lcom/vkontakte/android/CaptchaActivity;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v29, 0x10000000

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    const-string v29, "url"

    const-string v30, "captcha_img"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    sget-object v29, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 224
    :goto_13
    sget-boolean v29, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    if-eqz v29, :cond_2a

    .line 225
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_27

    const-string v29, "vk"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Captcha activity returned with "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v31, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_27
    const/16 v29, 0x0

    sput-boolean v29, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    .line 227
    sget-object v29, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    if-eqz v29, :cond_2b

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    const-string v30, "captcha_sid"

    const-string v31, "captcha_sid"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    const-string v30, "captcha_key"

    sget-object v31, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual/range {v29 .. v31}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_28

    const-string v30, "vk"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "Resending request "

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    const-string v32, "method"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_28
    sget-object v29, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/Semaphore;->release()V

    .line 232
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result-object v29

    .line 283
    if-eqz v23, :cond_29

    .line 285
    :try_start_18
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    .line 288
    :cond_29
    :goto_14
    if-eqz v15, :cond_9

    .line 290
    :try_start_19
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    goto/16 :goto_5

    .line 291
    :catch_5
    move-exception v30

    goto/16 :goto_5

    .line 224
    :cond_2a
    const-wide/16 v29, 0x64

    :try_start_1a
    invoke-static/range {v29 .. v30}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_13

    .line 234
    :cond_2b
    sget-object v29, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/Semaphore;->release()V

    .line 236
    new-instance v29, Lcom/vkontakte/android/APIException;

    const-string v30, "error_msg"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v4, v1}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v29

    .line 237
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_2c
    const/16 v29, 0x10

    move/from16 v0, v29

    if-ne v4, v0, :cond_2f

    .line 238
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_2d

    const-string v29, "vk"

    const-string v30, "Force HTTPS"

    invoke-static/range {v29 .. v30}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2d
    sget-object v29, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v29

    const-string v30, "useHTTPS"

    const/16 v31, 0x1

    invoke-interface/range {v29 .. v31}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    sget-object v29, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v29

    const-string v30, "forceHTTPS"

    const/16 v31, 0x1

    invoke-interface/range {v29 .. v31}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-result-object v29

    .line 283
    if-eqz v23, :cond_2e

    .line 285
    :try_start_1b
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_17

    .line 288
    :cond_2e
    :goto_15
    if-eqz v15, :cond_9

    .line 290
    :try_start_1c
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6

    goto/16 :goto_5

    .line 291
    :catch_6
    move-exception v30

    goto/16 :goto_5

    .line 242
    :cond_2f
    const/16 v29, 0x11

    move/from16 v0, v29

    if-ne v4, v0, :cond_35

    .line 243
    :try_start_1d
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_30

    const-string v29, "vk"

    const-string v30, "Need validation"

    invoke-static/range {v29 .. v30}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 244
    :cond_30
    :try_start_1e
    sget-object v29, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_16
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 245
    :goto_16
    :try_start_1f
    new-instance v14, Landroid/content/Intent;

    sget-object v29, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v30, Lcom/vkontakte/android/ValidationActivity;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .restart local v14    # "intent":Landroid/content/Intent;
    const/high16 v29, 0x10000000

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    const-string v29, "url"

    const-string v30, "redirect_uri"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const/16 v29, 0x0

    sput v29, Lcom/vkontakte/android/ValidationActivity;->result:I

    .line 249
    sget-object v29, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 250
    :goto_17
    sget v29, Lcom/vkontakte/android/ValidationActivity;->result:I

    if-eqz v29, :cond_33

    .line 251
    sget v29, Lcom/vkontakte/android/ValidationActivity;->result:I

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_34

    .line 252
    const/16 v29, 0x0

    sput v29, Lcom/vkontakte/android/ValidationActivity;->result:I

    .line 253
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_31

    const-string v30, "vk"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "Repeating request "

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    const-string v32, "method"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_31
    sget-object v29, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/Semaphore;->release()V

    .line 255
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-result-object v29

    .line 283
    if-eqz v23, :cond_32

    .line 285
    :try_start_20
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_15

    .line 288
    :cond_32
    :goto_18
    if-eqz v15, :cond_9

    .line 290
    :try_start_21
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_7

    goto/16 :goto_5

    .line 291
    :catch_7
    move-exception v30

    goto/16 :goto_5

    .line 250
    :cond_33
    const-wide/16 v29, 0x64

    :try_start_22
    invoke-static/range {v29 .. v30}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_17

    .line 257
    :cond_34
    const/16 v29, 0x0

    sput v29, Lcom/vkontakte/android/ValidationActivity;->result:I

    .line 258
    sget-object v29, Lcom/vkontakte/android/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/Semaphore;->release()V

    .line 260
    new-instance v29, Lcom/vkontakte/android/APIException;

    const-string v30, "error_msg"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v4, v1}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v29

    .line 262
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_35
    new-instance v29, Lcom/vkontakte/android/APIException;

    const-string v30, "error_msg"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v4, v1}, Lcom/vkontakte/android/APIException;-><init>(ILjava/lang/String;)V

    throw v29

    .line 265
    .end local v4    # "code":I
    :cond_36
    sget-boolean v29, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v29, :cond_37

    .line 266
    const-string v30, "vk"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "["

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    const-string v32, "method"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, "] Parse JSON: "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v26

    move-object/from16 v0, v29

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Lcom/vkontakte/android/APIException; {:try_start_22 .. :try_end_22} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_3
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    move-result-wide v26

    .line 283
    :cond_37
    if-eqz v23, :cond_38

    .line 285
    :try_start_23
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_14

    .line 288
    :cond_38
    :goto_19
    if-eqz v15, :cond_39

    .line 290
    :try_start_24
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_a

    :cond_39
    :goto_1a
    move-object/from16 v29, v20

    .line 269
    goto/16 :goto_5

    .line 280
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v18    # "l":I
    .end local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v21    # "rd":[B
    .end local v24    # "s":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Throwable;
    :cond_3a
    :try_start_25
    const-string v29, "vk"

    move-object/from16 v0, v29

    invoke-static {v0, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 283
    if-eqz v23, :cond_3b

    .line 285
    :try_start_26
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_10

    .line 288
    :cond_3b
    :goto_1b
    if-eqz v15, :cond_3c

    .line 290
    :try_start_27
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_d

    .line 281
    :cond_3c
    :goto_1c
    const/16 v29, 0x0

    goto/16 :goto_5

    .line 291
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_8
    move-exception v29

    goto/16 :goto_4

    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "code":I
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v9    # "error":Lorg/json/JSONObject;
    .restart local v18    # "l":I
    .restart local v21    # "rd":[B
    .restart local v24    # "s":Ljava/lang/String;
    :catch_9
    move-exception v29

    goto/16 :goto_11

    .end local v4    # "code":I
    :catch_a
    move-exception v29

    goto :goto_1a

    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v18    # "l":I
    .end local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v21    # "rd":[B
    .end local v24    # "s":Ljava/lang/String;
    .local v6, "e":Ljava/io/IOException;
    :catch_b
    move-exception v29

    goto/16 :goto_7

    .local v6, "e":Lcom/vkontakte/android/APIException;
    :catch_c
    move-exception v29

    goto/16 :goto_c

    .local v6, "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v29

    goto :goto_1c

    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v30

    goto/16 :goto_f

    .line 286
    :catch_f
    move-exception v30

    goto/16 :goto_e

    .restart local v6    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v29

    goto :goto_1b

    :catch_11
    move-exception v30

    goto/16 :goto_d

    .local v6, "e":Lcom/vkontakte/android/APIException;
    :catch_12
    move-exception v29

    goto/16 :goto_b

    .local v6, "e":Ljava/io/IOException;
    :catch_13
    move-exception v29

    goto/16 :goto_6

    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v9    # "error":Lorg/json/JSONObject;
    .restart local v18    # "l":I
    .restart local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v21    # "rd":[B
    .restart local v24    # "s":Ljava/lang/String;
    :catch_14
    move-exception v29

    goto :goto_19

    .restart local v4    # "code":I
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_15
    move-exception v30

    goto/16 :goto_18

    .line 244
    .end local v14    # "intent":Landroid/content/Intent;
    :catch_16
    move-exception v29

    goto/16 :goto_16

    .line 286
    :catch_17
    move-exception v30

    goto/16 :goto_15

    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_18
    move-exception v30

    goto/16 :goto_14

    .line 219
    .end local v14    # "intent":Landroid/content/Intent;
    :catch_19
    move-exception v29

    goto/16 :goto_12

    .line 286
    :catch_1a
    move-exception v29

    goto/16 :goto_10

    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "code":I
    .end local v5    # "contentEncoding":Lorg/apache/http/Header;
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v18    # "l":I
    .end local v21    # "rd":[B
    .end local v24    # "s":Ljava/lang/String;
    :catch_1b
    move-exception v29

    goto/16 :goto_3

    .line 86
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v12    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v19    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v20    # "obj":Lorg/json/JSONObject;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v26    # "time":J
    .end local v28    # "url":Ljava/lang/String;
    :catch_1c
    move-exception v29

    goto/16 :goto_0
.end method
