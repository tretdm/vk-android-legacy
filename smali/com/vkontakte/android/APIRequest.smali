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
.field public static final ERROR_ACCESS:I = 0xf

.field public static final ERROR_PARAM:I = 0x64


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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    .line 36
    iput-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    .line 37
    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    .line 38
    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    .line 40
    iput-object v2, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->background:Z

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "v"

    const-string v2, "5.21"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "lang"

    invoke-static {}, Lcom/vkontakte/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private static convert([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 55
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 57
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 66
    return-object v2

    .line 59
    :cond_0
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 63
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

    .line 64
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

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
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
    .line 71
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 72
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 73
    .local v1, "s":[B
    invoke-static {v1}, Lcom/vkontakte/android/APIRequest;->convert([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 76
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "s":[B
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v2

    .line 76
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    .line 158
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

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_1

    .line 160
    new-instance v0, Lcom/vkontakte/android/APIRequest$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/APIRequest$1;-><init>(Lcom/vkontakte/android/APIRequest;)V

    .line 167
    .local v0, "r":Ljava/lang/Runnable;
    const-string v1, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 173
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-void

    .line 170
    .restart local v0    # "r":Ljava/lang/Runnable;
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected doExec()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public exec()Lcom/vkontakte/android/APIRequest;
    .locals 0

    .prologue
    .line 120
    invoke-static {p0}, Lcom/vkontakte/android/APIController;->executeRequest(Lcom/vkontakte/android/APIRequest;)V

    .line 121
    return-object p0
.end method

.method public exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "v"    # Landroid/app/Activity;

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-object p0

    .line 134
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->uiHandler:Landroid/os/Handler;

    .line 135
    invoke-static {p0}, Lcom/vkontakte/android/APIController;->executeRequest(Lcom/vkontakte/android/APIRequest;)V

    goto :goto_0
.end method

.method public exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object p0

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->uiHandler:Landroid/os/Handler;

    .line 128
    invoke-static {p0}, Lcom/vkontakte/android/APIController;->executeRequest(Lcom/vkontakte/android/APIRequest;)V

    goto :goto_0
.end method

.method public execSync()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-static {p0}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;

    move-result-object v0

    .line 141
    .local v0, "o":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 142
    new-instance v3, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v5, -0x2

    const-string v6, "Response parse failed"

    invoke-direct {v3, v5, v6}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    move v3, v4

    .line 153
    :goto_0
    return v3

    .line 145
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/APIRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 147
    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
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

    .line 153
    :cond_1
    if-eqz v1, :cond_2

    instance-of v3, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v5, -0x3

    const-string v6, "Callback invocation failed (parse error?)"

    invoke-direct {v3, v5, v6}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    move v3, v4

    .line 150
    goto :goto_0

    .end local v2    # "x":Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 153
    goto :goto_0
.end method

.method public forceHTTPS(Z)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/vkontakte/android/APIRequest;->forceHTTPS:Z

    .line 111
    return-object p0
.end method

.method public getSig()Ljava/lang/String;
    .locals 7

    .prologue
    .line 80
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

    .line 81
    .local v3, "src":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 82
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
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

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v3}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 84
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "key":Ljava/lang/String;
    const-string v4, "method"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
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
    .line 105
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    .line 106
    return-object p0
.end method

.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 209
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 210
    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, p1}, Lcom/vkontakte/android/APIRequest$APIHandler;->success(Lorg/json/JSONObject;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 214
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    move-object v1, v0

    .line 215
    .local v1, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest;->handler:Lcom/vkontakte/android/APIRequest$APIHandler;

    iget v3, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/APIRequest$APIHandler;->fail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v1    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    return v0
.end method

.method public param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 100
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    return-object p0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 181
    return-object p1
.end method

.method parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 186
    :try_start_0
    iget-boolean v4, p0, Lcom/vkontakte/android/APIRequest;->cancel:Z

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    if-nez p1, :cond_2

    .line 188
    new-instance v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v4, -0x1

    const-string v5, "I/O error"

    invoke-direct {v0, v4, v5}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v3

    .line 203
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    new-instance v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/4 v4, -0x2

    const-string v5, "Parse error"

    invoke-direct {v0, v4, v5}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 191
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

    .line 194
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 195
    .local v1, "time":J
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/APIRequest;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, "result":Ljava/lang/Object;
    sget-boolean v4, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v4, :cond_0

    .line 197
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

    .line 198
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
    .line 115
    iput-boolean p1, p0, Lcom/vkontakte/android/APIRequest;->background:Z

    .line 116
    return-object p0
.end method

.method public wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    const v0, 0x7f08002a

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
    .line 230
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/vkontakte/android/APIRequest$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/APIRequest$2;-><init>(Lcom/vkontakte/android/APIRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02027a

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 242
    return-object p0
.end method
