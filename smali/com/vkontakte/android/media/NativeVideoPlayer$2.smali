.class Lcom/vkontakte/android/media/NativeVideoPlayer$2;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/NativeVideoPlayer;->startRenderThread()V
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
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$3(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v0

    if-gez v0, :cond_2

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v0, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v0, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerError(I)V

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_4

    const/4 v8, 0x4

    .line 101
    .local v8, "bpp":I
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$3(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/2addr v0, v8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 103
    .local v11, "ibuf":Ljava/nio/IntBuffer;
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$3(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v1

    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v2

    const/4 v0, 0x4

    if-ne v8, v0, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 104
    .local v6, "bmp":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$5(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v1

    int-to-float v1, v1

    div-float v12, v0, v1

    .line 105
    .local v12, "scaleFactor":F
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scale="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 107
    .local v7, "bpaint":Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 109
    new-instance v13, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$3(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v3

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    .local v13, "srcRect":Landroid/graphics/Rect;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$6(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 111
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 112
    .local v10, "fpaint":Landroid/graphics/Paint;
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    const v0, -0xff01

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_3
    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :try_start_2
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 118
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :goto_4
    :try_start_3
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v9

    .line 125
    .local v9, "c":Landroid/graphics/Canvas;
    if-eqz v9, :cond_3

    .line 127
    invoke-virtual {v11}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0, v11, v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;Ljava/nio/IntBuffer;I)V

    .line 130
    invoke-virtual {v11}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 131
    invoke-virtual {v6, v11}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v6, v13, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$2(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 138
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "bpaint":Landroid/graphics/Paint;
    .end local v8    # "bpp":I
    .end local v9    # "c":Landroid/graphics/Canvas;
    .end local v10    # "fpaint":Landroid/graphics/Paint;
    .end local v11    # "ibuf":Ljava/nio/IntBuffer;
    .end local v12    # "scaleFactor":F
    .end local v13    # "srcRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v14

    .line 139
    .local v14, "x":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v0, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v0, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerError(I)V

    goto/16 :goto_0

    .line 99
    .end local v14    # "x":Ljava/lang/Exception;
    :cond_4
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 103
    .restart local v8    # "bpp":I
    .restart local v11    # "ibuf":Ljava/nio/IntBuffer;
    :cond_5
    :try_start_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 118
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "bpaint":Landroid/graphics/Paint;
    .restart local v10    # "fpaint":Landroid/graphics/Paint;
    .restart local v12    # "scaleFactor":F
    .restart local v13    # "srcRect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 121
    :catch_1
    move-exception v0

    goto :goto_4
.end method
