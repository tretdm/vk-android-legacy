.class Lcom/vkontakte/android/ui/GifView$1;
.super Ljava/lang/Object;
.source "GifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/GifView;->loadURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/GifView;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/GifView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView$1;->this$0:Lcom/vkontakte/android/ui/GifView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/GifView$1;->val$url:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 102
    :try_start_0
    const-string v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Loading: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/vkontakte/android/ui/GifView$1;->val$url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v8, Ljava/net/URL;

    iget-object v10, p0, Lcom/vkontakte/android/ui/GifView$1;->val$url:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    .local v8, "u":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 105
    .local v1, "conn":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 106
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, ".vkontakte"

    invoke-direct {v2, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 110
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v10, ".nomedia"

    invoke-direct {v5, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v5, "nomedia":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 112
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v10, "tmp.gif"

    invoke-direct {v3, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 114
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v10

    const/high16 v11, 0x3200000

    if-le v10, v11, :cond_2

    .line 115
    new-instance v10, Ljava/io/IOException;

    const-string v11, "too big"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "nomedia":Ljava/io/File;
    .end local v8    # "u":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 135
    .local v9, "x":Ljava/lang/Exception;
    const-string v10, "vk"

    invoke-static {v10, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    iget-object v10, p0, Lcom/vkontakte/android/ui/GifView$1;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/vkontakte/android/ui/GifView;->access$11(Lcom/vkontakte/android/ui/GifView;Z)V

    .line 137
    iget-object v10, p0, Lcom/vkontakte/android/ui/GifView$1;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/GifView;->postInvalidate()V

    .line 139
    .end local v9    # "x":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 117
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "nomedia":Ljava/io/File;
    .restart local v8    # "u":Ljava/net/URL;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 118
    .local v6, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 119
    .local v4, "in":Ljava/io/InputStream;
    const/16 v10, 0x2800

    new-array v0, v10, [B

    .line 120
    .local v0, "buf":[B
    const/4 v7, 0x0

    .line 121
    .local v7, "r":I
    :cond_3
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_4

    .line 132
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 133
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 122
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 123
    iget-object v10, p0, Lcom/vkontakte/android/ui/GifView$1;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v10}, Lcom/vkontakte/android/ui/GifView;->access$14(Lcom/vkontakte/android/ui/GifView;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 124
    iget-object v10, p0, Lcom/vkontakte/android/ui/GifView$1;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/ui/GifView;->load(Ljava/lang/String;)V

    .line 125
    :cond_5
    iget-object v10, p0, Lcom/vkontakte/android/ui/GifView$1;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v10}, Lcom/vkontakte/android/ui/GifView;->access$15(Lcom/vkontakte/android/ui/GifView;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 126
    iget-object v10, p0, Lcom/vkontakte/android/ui/GifView$1;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/vkontakte/android/ui/GifView;->access$12(Lcom/vkontakte/android/ui/GifView;Z)V

    .line 127
    iget-object v10, p0, Lcom/vkontakte/android/ui/GifView$1;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v10}, Lcom/vkontakte/android/ui/GifView;->access$13(Lcom/vkontakte/android/ui/GifView;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :try_start_2
    iget-object v10, p0, Lcom/vkontakte/android/ui/GifView$1;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v10}, Lcom/vkontakte/android/ui/GifView;->access$13(Lcom/vkontakte/android/ui/GifView;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    .line 127
    monitor-exit v11

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
