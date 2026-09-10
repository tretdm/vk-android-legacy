.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private canceled:Z

.field private photo:Lcom/vkontakte/android/Photo;

.field private progr:Lcom/vkontakte/android/ImageCache$ProgressCallback;

.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

.field private wrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Lcom/vkontakte/android/Photo;)V
    .locals 1
    .param p2, "p"    # Lcom/vkontakte/android/Photo;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    new-instance v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;

    invoke-direct {v0}, Lcom/vkontakte/android/ImageCache$RequestWrapper;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->wrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    .line 866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->canceled:Z

    .line 869
    iput-object p2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->photo:Lcom/vkontakte/android/Photo;

    .line 870
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v1, 0x1

    .line 883
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->wrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->wrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    iget-object v0, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->wrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    iget-object v0, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 885
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->canceled:Z

    .line 888
    :cond_0
    return v1
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 901
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->get(JLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->canceled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x78

    .line 874
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->canceled:Z

    .line 875
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    iget-boolean v1, v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->useSmall:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->photo:Lcom/vkontakte/android/Photo;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 878
    .local v0, "url":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->wrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->progr:Lcom/vkontakte/android/ImageCache$ProgressCallback;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->bmp:Landroid/graphics/Bitmap;

    .line 879
    return-void

    .line 875
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    iget-boolean v1, v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->useBig:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->photo:Lcom/vkontakte/android/Photo;

    const/4 v2, 0x3

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/Photo;->getImage([C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->photo:Lcom/vkontakte/android/Photo;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/Photo;->getImage(CC)Lcom/vkontakte/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x7as
        0x79s
        0x78s
    .end array-data
.end method

.method public setProgressCallback(Lcom/vkontakte/android/ImageCache$ProgressCallback;)V
    .locals 0
    .param p1, "c"    # Lcom/vkontakte/android/ImageCache$ProgressCallback;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;->progr:Lcom/vkontakte/android/ImageCache$ProgressCallback;

    .line 917
    return-void
.end method
