.class Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 991
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$2;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 996
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 982
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$1;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 987
    return-void
.end method
