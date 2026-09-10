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
.field private static httpclient:Lorg/apache/http/client/HttpClient;

.field private static reauthSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field public background:Z

.field private cancel:Z

.field forceHTTPS:Z

.field private handler:Lcom/vkontakte/android/APIRequest$APIHandler;

.field httppost:Lorg/apache/http/client/methods/HttpPost;

.field public initTime:J

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

.field progressDialog:Landroid/app/ProgressDialog;

.field public uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/APIRequest;->reauthSemaphore:Ljava/util/concurrent/Semaphore;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    .line 32
    iput-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    .line 33
    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    .line 34
    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    .line 36
    iput-object v2, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->background:Z

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "v"

    const-string v2, "5.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "lang"

    invoke-static {}, Lcom/vkontakte/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private static convert([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 53
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 55
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 64
    return-object v2

    .line 57
    :cond_0
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 61
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

    .line 62
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

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
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
    .line 69
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 70
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 71
    .local v1, "s":[B
    invoke-static {v1}, Lcom/vkontakte/android/APIRequest;->convert([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 74
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "s":[B
    :goto_0
    return-object v2

    .line 72
    :catch_0
    move-exception v2

    .line 74
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 192
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    .line 193
    sget-boolean v1, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Cancel request "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v4, "method"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_1

    .line 195
    new-instance v0, Lcom/vkontakte/android/APIRequest$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/APIRequest$1;-><init>(Lcom/vkontakte/android/APIRequest;)V

    .line 202
    .local v0, "r":Ljava/lang/Runnable;
    const-string v1, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 208
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-void

    .line 205
    .restart local v0    # "r":Ljava/lang/Runnable;
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected doExec()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public exec()Lcom/vkontakte/android/APIRequest;
    .locals 0

    .prologue
    .line 118
    invoke-static {p0}, Lcom/vkontakte/android/APIController;->executeRequest(Lcom/vkontakte/android/APIRequest;)V

    .line 119
    return-object p0
.end method

.method public exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "v"    # Landroid/app/Activity;

    .prologue
    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->uiHandler:Landroid/os/Handler;

    .line 170
    invoke-static {p0}, Lcom/vkontakte/android/APIController;->executeRequest(Lcom/vkontakte/android/APIRequest;)V

    .line 171
    return-object p0
.end method

.method public exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->uiHandler:Landroid/os/Handler;

    .line 144
    invoke-static {p0}, Lcom/vkontakte/android/APIController;->executeRequest(Lcom/vkontakte/android/APIRequest;)V

    .line 145
    return-object p0
.end method

.method public execSync()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-static {p0}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;

    move-result-object v0

    .line 176
    .local v0, "o":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 177
    new-instance v3, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v5, -0x2

    const-string v6, "Response parse failed"

    invoke-direct {v3, v5, v6}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    move v3, v4

    .line 188
    :goto_0
    return v3

    .line 180
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/APIRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    sget-boolean v3, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v7, "method"

    invoke-virtual {v3, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] Request done in "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/vkontakte/android/APIRequest;->initTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_1
    if-eqz v1, :cond_2

    instance-of v3, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v5, -0x3

    const-string v6, "Callback invocation failed (parse error?)"

    invoke-direct {v3, v5, v6}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    move v3, v4

    .line 185
    goto :goto_0

    .end local v2    # "x":Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 188
    goto :goto_0
.end method

.method public forceHTTPS(Z)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    .line 109
    return-object p0
.end method

.method public getSig()Ljava/lang/String;
    .locals 7

    .prologue
    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "/method/"

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v6, "method"

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "src":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 80
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v3}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 82
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "key":Ljava/lang/String;
    const-string v4, "method"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "h"    # Lcom/vkontakte/android/APIRequest$APIHandler;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    .line 104
    return-object p0
.end method

.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 244
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 245
    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, p1}, Lcom/vkontakte/android/APIRequest$APIHandler;->success(Lorg/json/JSONObject;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    move-object v1, v0

    .line 250
    .local v1, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    iget v3, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/APIRequest$APIHandler;->fail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    .end local v1    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    return v0
.end method

.method public param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 98
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-object p0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 216
    return-object p1
.end method

.method parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 221
    :try_start_0
    iget-boolean v4, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    if-eqz p1, :cond_2

    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 223
    :cond_2
    new-instance v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v4, -0x1

    const-string v5, "I/O error"

    invoke-direct {v0, v4, v5}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v3

    .line 238
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    new-instance v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v4, -0x2

    const-string v5, "Parse error"

    invoke-direct {v0, v4, v5}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 226
    new-instance v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "error"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "error_msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 230
    .local v1, "time":J
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/APIRequest;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, "result":Ljava/lang/Object;
    sget-boolean v4, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v4, :cond_0

    .line 232
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v7, "method"

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] Parse Data: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    goto/16 :goto_0
.end method

.method public setBackground(Z)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "bg"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/vkontakte/android/APIRequest;->background:Z

    .line 114
    return-object p0
.end method

.method public wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const v0, 0x7f060010

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;IZZ)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    return-object v0
.end method

.method public wrapProgress(Landroid/content/Context;IZZ)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strRes"    # I
    .param p3, "cancelable"    # Z
    .param p4, "cancelByClick"    # Z

    .prologue
    .line 265
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/vkontakte/android/APIRequest$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/APIRequest$2;-><init>(Lcom/vkontakte/android/APIRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 276
    return-object p0
.end method
