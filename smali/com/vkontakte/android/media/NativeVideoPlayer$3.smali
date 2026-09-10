.class Lcom/vkontakte/android/media/NativeVideoPlayer$3;
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
    .line 112
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v8, 0x4

    const/4 v14, 0x1

    .line 114
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$300(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v9

    if-ltz v9, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$400(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v9

    if-gez v9, :cond_2

    .line 115
    :cond_0
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v8, v8, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v8, v8, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    invoke-interface {v8, v14}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerError(I)V

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    :try_start_0
    sget-object v9, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x9

    if-le v9, v10, :cond_4

    move v1, v8

    .line 123
    .local v1, "bpp":I
    :goto_1
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$300(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v9

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$400(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v10

    mul-int/2addr v9, v10

    mul-int/2addr v9, v1

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    .line 125
    .local v4, "ibuf":Ljava/nio/IntBuffer;
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$300(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v10

    iget-object v11, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$400(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v11

    if-ne v1, v8, :cond_5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    invoke-static {v10, v11, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$202(Lcom/vkontakte/android/media/NativeVideoPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 126
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$500(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$400(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 127
    .local v5, "scaleFactor":F
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 129
    .local v0, "bpaint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 131
    new-instance v6, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$300(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v10

    iget-object v11, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$400(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v11

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 133
    .local v6, "srcRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 134
    .local v3, "fpaint":Landroid/graphics/Paint;
    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    const v8, -0xff01

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$600(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_1

    .line 140
    :try_start_1
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$700(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :try_start_2
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$700(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 142
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :goto_4
    :try_start_3
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$800(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/view/SurfaceHolder;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 146
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$800(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 147
    .local v2, "c":Landroid/graphics/Canvas;
    if-eqz v2, :cond_3

    .line 149
    invoke-virtual {v4}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 150
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8, v4, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$900(Lcom/vkontakte/android/media/NativeVideoPlayer;Ljava/nio/IntBuffer;I)V

    .line 152
    invoke-virtual {v4}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 153
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$200(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 154
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$200(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v8, v6, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 157
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$800(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-interface {v8, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 158
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$108(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 160
    .end local v0    # "bpaint":Landroid/graphics/Paint;
    .end local v1    # "bpp":I
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v3    # "fpaint":Landroid/graphics/Paint;
    .end local v4    # "ibuf":Ljava/nio/IntBuffer;
    .end local v5    # "scaleFactor":F
    .end local v6    # "srcRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v7

    .line 161
    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v8, v8, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v8, v8, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    invoke-interface {v8, v14}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerError(I)V

    goto/16 :goto_0

    .line 121
    .end local v7    # "x":Ljava/lang/Exception;
    :cond_4
    const/4 v1, 0x2

    goto/16 :goto_1

    .line 125
    .restart local v1    # "bpp":I
    .restart local v4    # "ibuf":Ljava/nio/IntBuffer;
    :cond_5
    :try_start_4
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 142
    .restart local v0    # "bpaint":Landroid/graphics/Paint;
    .restart local v3    # "fpaint":Landroid/graphics/Paint;
    .restart local v5    # "scaleFactor":F
    .restart local v6    # "srcRect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 143
    :catch_1
    move-exception v8

    goto :goto_4
.end method
