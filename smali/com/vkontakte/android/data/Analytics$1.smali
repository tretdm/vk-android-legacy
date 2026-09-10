.class final Lcom/vkontakte/android/data/Analytics$1;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/data/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/32 v10, 0x5265c00

    const/4 v9, 0x2

    .line 40
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "analytics.log"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 42
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .local v3, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 45
    const-string v7, ","

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "x":[Ljava/lang/String;
    array-length v7, v6

    if-ge v7, v9, :cond_6

    .line 53
    .end local v6    # "x":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 55
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "analytics_collapsed.log"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 57
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "line":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 60
    const-string v7, ","

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 61
    .restart local v6    # "x":[Ljava/lang/String;
    array-length v7, v6

    if-ge v7, v9, :cond_7

    .line 68
    .end local v6    # "x":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 73
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    return-void

    .line 47
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "x":[Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 48
    .local v4, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    cmp-long v7, v7, v10

    if-gez v7, :cond_0

    .line 49
    new-instance v2, Lorg/json/JSONObject;

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "obj":Lorg/json/JSONObject;
    invoke-static {}, Lcom/vkontakte/android/data/Analytics;->access$000()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "time":J
    .end local v6    # "x":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 71
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 62
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .local v6, "x":[Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 63
    .restart local v4    # "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    cmp-long v7, v7, v10

    if-gez v7, :cond_3

    .line 64
    new-instance v2, Lorg/json/JSONObject;

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .restart local v2    # "obj":Lorg/json/JSONObject;
    invoke-static {}, Lcom/vkontakte/android/data/Analytics;->access$100()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    const-string v8, "e"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
