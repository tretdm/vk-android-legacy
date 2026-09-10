.class Lcom/vkontakte/android/media/NativeVideoPlayer$4;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/NativeVideoPlayer;->openInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 190
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1002(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)Z

    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, "prevReported":I
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1100(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/net/URLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 193
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    const-string v6, "vk"

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1100(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/net/URLConnection;

    move-result-object v7

    const-string v8, "content-range"

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1200(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v6

    if-nez v6, :cond_0

    .line 195
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1100(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/net/URLConnection;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1202(Lcom/vkontakte/android/media/NativeVideoPlayer;I)I

    .line 196
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1200(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1300(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 198
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1200(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v7

    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1400(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3e051eb8    # 0.13f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    mul-int/lit16 v8, v8, 0x400

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1500(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 199
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1600(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    :try_start_3
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1600(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 201
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    const/16 v6, 0x1000

    :try_start_4
    new-array v0, v6, [B

    .line 203
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 204
    .local v4, "tmp":I
    :cond_1
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1700(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 206
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6, v0, v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1800(Lcom/vkontakte/android/media/NativeVideoPlayer;[BI)V

    .line 207
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6, v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1912(Lcom/vkontakte/android/media/NativeVideoPlayer;I)I

    .line 208
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$2000(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1900(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1200(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 209
    .local v1, "f":I
    if-eq v1, v3, :cond_1

    .line 210
    move v3, v1

    .line 211
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v6, v6, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v6, v6, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    invoke-interface {v6, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerBufferingUpdate(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 222
    .end local v0    # "buf":[B
    .end local v1    # "f":I
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "prevReported":I
    .end local v4    # "tmp":I
    :catch_0
    move-exception v5

    .line 223
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "VK_FFPlayer"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v6, v6, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v6, v6, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerError(I)V

    .line 226
    .end local v5    # "x":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6, v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1002(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)Z

    .line 227
    return-void

    .line 201
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "prevReported":I
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6

    .line 214
    .restart local v0    # "buf":[B
    .restart local v4    # "tmp":I
    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 216
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1700(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 217
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1702(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)Z

    .line 218
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1600(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 219
    :try_start_7
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1600(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 220
    monitor-exit v7

    goto :goto_2

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 193
    .end local v0    # "buf":[B
    .end local v4    # "tmp":I
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method
