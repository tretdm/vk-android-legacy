.class Lcom/vkontakte/android/PhotoViewerActivity$20;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->preloadNextImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 597
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$15(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 598
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$16(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$16(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 600
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$16(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v0, v1, 0x1

    .line 603
    .local v0, "pl":I
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    .line 609
    :cond_2
    :goto_1
    return-void

    .line 597
    .end local v0    # "pl":I
    :cond_3
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 605
    .restart local v0    # "pl":I
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerActivity;->access$16(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    .line 606
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 607
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->remove(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600c0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ZoomableImageView;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->setNextImage(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
