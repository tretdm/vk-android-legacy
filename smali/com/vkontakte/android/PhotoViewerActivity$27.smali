.class Lcom/vkontakte/android/PhotoViewerActivity$27;
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1033
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->access$17(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1034
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->access$18(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v2, :cond_0

    .line 1035
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->access$18(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 1036
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->access$18(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v2

    iput-object v5, v2, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 1038
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v1, v2, 0x1

    .line 1039
    .local v1, "pl":I
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 1040
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 1053
    :cond_2
    :goto_1
    return-void

    .line 1033
    .end local v1    # "pl":I
    :cond_3
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 1041
    .restart local v1    # "pl":I
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoViewerActivity;->access$18(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    .line 1042
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 1043
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/ImageCache;->remove(Ljava/lang/String;)V

    .line 1044
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->access$0(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1045
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "page"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1046
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v2, :cond_2

    .line 1047
    check-cast v0, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v0    # "f":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/vkontakte/android/PhotoViewerFragment;->displayImage(Landroid/graphics/Bitmap;ZI)V

    .line 1048
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting next photo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1051
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v3, 0x7f0600da

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ZoomableImageView;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$27;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ZoomableImageView;->setNextImage(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1
.end method
