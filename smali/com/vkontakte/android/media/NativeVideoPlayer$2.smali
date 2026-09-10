.class Lcom/vkontakte/android/media/NativeVideoPlayer$2;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/NativeVideoPlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V
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
    .line 77
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v7, 0x0

    .line 88
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$200(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 90
    .local v0, "bpaint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 91
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 92
    .local v1, "c":Landroid/graphics/Canvas;
    if-nez v1, :cond_1

    .line 99
    .end local v0    # "bpaint":Landroid/graphics/Paint;
    .end local v1    # "c":Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v0    # "bpaint":Landroid/graphics/Paint;
    .restart local v1    # "c":Landroid/graphics/Canvas;
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$300(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$400(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    .local v2, "srcRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$200(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 97
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 84
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 80
    return-void
.end method
