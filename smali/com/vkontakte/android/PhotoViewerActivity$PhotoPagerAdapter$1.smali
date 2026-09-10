.class Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->getItem(I)Landroid/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;

.field private final synthetic val$f:Lcom/vkontakte/android/PhotoViewerFragment;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;Lcom/vkontakte/android/PhotoViewerFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter$1;->val$f:Lcom/vkontakte/android/PhotoViewerFragment;

    iput p3, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter$1;->val$position:I

    .line 1526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1527
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1528
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter$1;->val$f:Lcom/vkontakte/android/PhotoViewerFragment;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter$1;->val$position:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/PhotoViewerFragment;->displayImage(Landroid/graphics/Bitmap;ZI)V

    .line 1529
    return-void
.end method
