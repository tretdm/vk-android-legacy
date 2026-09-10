.class public Lcom/vkontakte/android/EpicFailHandler;
.super Ljava/lang/Object;
.source "EpicFailHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/EpicFailHandler;->defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 19
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "VK_fail_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "filename":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 26
    .local v5, "sdDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .local v0, "f":Ljava/io/File;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 28
    .local v4, "result":Ljava/io/Writer;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 29
    .local v3, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "stacktrace":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 33
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 34
    .local v2, "os":Ljava/io/FileOutputStream;
    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 35
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v8, p0, Lcom/vkontakte/android/EpicFailHandler;->defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v8, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 42
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v3    # "printWriter":Ljava/io/PrintWriter;
    .end local v4    # "result":Ljava/io/Writer;
    .end local v5    # "sdDir":Ljava/io/File;
    .end local v6    # "stacktrace":Ljava/lang/String;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v7

    .line 38
    .local v7, "x":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    iget-object v8, p0, Lcom/vkontakte/android/EpicFailHandler;->defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v8, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    .end local v7    # "x":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 40
    iget-object v9, p0, Lcom/vkontakte/android/EpicFailHandler;->defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v9, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 41
    throw v8
.end method
