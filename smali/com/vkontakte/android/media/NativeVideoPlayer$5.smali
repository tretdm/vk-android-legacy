.class Lcom/vkontakte/android/media/NativeVideoPlayer$5;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/NativeVideoPlayer;->initFormat(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

.field private final synthetic val$bufsize:I

.field private final synthetic val$ch:I

.field private final synthetic val$rate:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/NativeVideoPlayer;III)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iput p2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$bufsize:I

    iput p3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$ch:I

    iput p4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$rate:I

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 248
    iget v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$bufsize:I

    new-array v0, v3, [B

    .line 251
    .local v0, "b":[B
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$26(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    .line 288
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$26(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 290
    :goto_2
    return-void

    .line 253
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$26(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/AudioTrack;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 254
    :try_start_3
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$26(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 253
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$27(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$28(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 258
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$27(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$28(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$bufsize:I

    iget v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$ch:I

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$rate:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$29(Lcom/vkontakte/android/media/NativeVideoPlayer;F)V

    .line 262
    :goto_4
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$31(Lcom/vkontakte/android/media/NativeVideoPlayer;)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fe6666666666666L    # 0.7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$27(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$bufsize:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$32(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 264
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$28(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$28(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$30(Lcom/vkontakte/android/media/NativeVideoPlayer;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$32(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 267
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$33(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$34(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$31(Lcom/vkontakte/android/media/NativeVideoPlayer;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    if-lez v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$34(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$31(Lcom/vkontakte/android/media/NativeVideoPlayer;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->setDelay(I)V

    .line 269
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$35(Lcom/vkontakte/android/media/NativeVideoPlayer;J)V

    .line 272
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$28(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$bufsize:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$30(Lcom/vkontakte/android/media/NativeVideoPlayer;)[B

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 273
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$30(Lcom/vkontakte/android/media/NativeVideoPlayer;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$28(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$bufsize:I

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$28(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$bufsize:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$32(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 283
    :goto_5
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$26(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/AudioTrack;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$bufsize:I

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 285
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 253
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 256
    :catch_1
    move-exception v3

    goto/16 :goto_3

    .line 260
    :cond_3
    :try_start_7
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$30(Lcom/vkontakte/android/media/NativeVideoPlayer;)[B

    move-result-object v4

    array-length v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$28(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$27(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$bufsize:I

    iget v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$ch:I

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$rate:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$29(Lcom/vkontakte/android/media/NativeVideoPlayer;F)V

    goto/16 :goto_4

    .line 276
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$30(Lcom/vkontakte/android/media/NativeVideoPlayer;)[B

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$28(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    sub-int v1, v3, v4

    .line 277
    .local v1, "r1":I
    iget v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->val$bufsize:I

    sub-int v2, v3, v1

    .line 278
    .local v2, "r2":I
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$30(Lcom/vkontakte/android/media/NativeVideoPlayer;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$28(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$30(Lcom/vkontakte/android/media/NativeVideoPlayer;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3, v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$32(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    .line 289
    .end local v1    # "r1":I
    .end local v2    # "r2":I
    :catch_2
    move-exception v3

    goto/16 :goto_2
.end method
