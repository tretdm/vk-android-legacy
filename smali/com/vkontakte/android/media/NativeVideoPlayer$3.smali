.class Lcom/vkontakte/android/media/NativeVideoPlayer$3;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 167
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$10(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)V

    .line 168
    const/4 v3, 0x0

    .line 169
    .local v3, "prevReported":I
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$11(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/net/URLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 170
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    const-string v6, "vk"

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$11(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/net/URLConnection;

    move-result-object v7

    const-string v8, "content-range"

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$12(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v6

    if-nez v6, :cond_0

    .line 172
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$11(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/net/URLConnection;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$13(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 173
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$12(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$14(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 175
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$12(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v7

    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$15(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3e051eb8    # 0.13f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    mul-int/lit16 v8, v8, 0x400

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$16(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 176
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$17(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    :try_start_3
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$17(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 176
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    const/16 v6, 0x1000

    :try_start_4
    new-array v0, v6, [B

    .line 180
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 181
    .local v4, "tmp":I
    :cond_1
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$18(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 191
    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 193
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$18(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 194
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$23(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)V

    .line 195
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$17(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 196
    :try_start_5
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$17(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 195
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 203
    .end local v0    # "buf":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "prevReported":I
    .end local v4    # "tmp":I
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6, v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$10(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)V

    .line 204
    return-void

    .line 176
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "prevReported":I
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 199
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "prevReported":I
    :catch_0
    move-exception v5

    .line 200
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "VK_FFPlayer"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v6, v6, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v6, v6, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerError(I)V

    goto :goto_2

    .line 183
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v0    # "buf":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "prevReported":I
    .restart local v4    # "tmp":I
    :cond_4
    :try_start_8
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6, v0, v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$19(Lcom/vkontakte/android/media/NativeVideoPlayer;[BI)V

    .line 184
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$20(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v6, v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$21(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 185
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$22(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$20(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$12(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 186
    .local v1, "f":I
    if-eq v1, v3, :cond_1

    .line 187
    move v3, v1

    .line 188
    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v6, v6, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v6, v6, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    invoke-interface {v6, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerBufferingUpdate(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    .line 195
    .end local v1    # "f":I
    :catchall_1
    move-exception v6

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 170
    .end local v0    # "buf":[B
    .end local v4    # "tmp":I
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method
