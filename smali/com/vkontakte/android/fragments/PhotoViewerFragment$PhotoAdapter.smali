.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;)V
    .locals 0

    .prologue
    .line 794
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    return-void
.end method


# virtual methods
.method public allowZoom(I)Z
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 832
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 798
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getPhoto(I)Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;
    .locals 3
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 809
    new-instance v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    .line 811
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo;

    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Lcom/vkontakte/android/Photo;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getPhotoLoadProgress(I)F
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method public getThumb(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "num"    # I

    .prologue
    const/4 v2, 0x0

    .line 837
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 846
    :cond_0
    :goto_0
    return-object v2

    .line 838
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 839
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 840
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    .line 841
    .local v1, "ph":Lcom/vkontakte/android/Photo;
    iget-object v3, v1, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo$Image;

    .line 842
    .local v0, "im":Lcom/vkontakte/android/Photo$Image;
    iget-object v4, v0, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 843
    iget-object v2, v0, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public isCached(I)Z
    .locals 5
    .param p1, "num"    # I

    .prologue
    const/16 v4, 0x78

    const/4 v2, 0x0

    .line 852
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 856
    :cond_0
    :goto_0
    return v2

    .line 853
    :cond_1
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 854
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo;

    .line 855
    .local v0, "photo":Lcom/vkontakte/android/Photo;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    iget-boolean v2, v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->useSmall:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v2

    iget-object v1, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 856
    .local v1, "url":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 855
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x79

    invoke-virtual {v0, v2, v4}, Lcom/vkontakte/android/Photo;->getImage(CC)Lcom/vkontakte/android/Photo$Image;

    move-result-object v2

    iget-object v1, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_1
.end method

.method public isPhotoLoaded(I)Z
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 803
    const/4 v0, 0x0

    return v0
.end method

.method public requestPhotoDownload(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 817
    return-void
.end method

.method public shouldPreload()Z
    .locals 1

    .prologue
    .line 826
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
