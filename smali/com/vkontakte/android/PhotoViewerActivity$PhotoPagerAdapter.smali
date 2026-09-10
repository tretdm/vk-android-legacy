.class Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;
.super Lcom/vkontakte/android/ui/FragmentStatePagerAdapter;
.source "PhotoViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 1

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 1510
    invoke-virtual {p1}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 1511
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;)Lcom/vkontakte/android/PhotoViewerActivity;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v0, v0

    .line 1539
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1515
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getItem "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    new-instance v0, Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/PhotoViewerFragment;-><init>(I)V

    .line 1517
    .local v0, "f":Lcom/vkontakte/android/PhotoViewerFragment;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    if-nez v1, :cond_1

    .line 1532
    :cond_0
    :goto_0
    return-object v0

    .line 1520
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 1521
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoViewerFragment;->setPhoto(Lcom/vkontakte/android/Photo;)V

    .line 1523
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1524
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/vkontakte/android/PhotoViewerFragment;->displayImage(Landroid/graphics/Bitmap;ZI)V

    goto :goto_0

    .line 1525
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1526
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter$1;-><init>(Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;Lcom/vkontakte/android/PhotoViewerFragment;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1529
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
