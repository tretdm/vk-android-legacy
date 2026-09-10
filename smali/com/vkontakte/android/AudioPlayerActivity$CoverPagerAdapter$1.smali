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

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->val$v:Landroid/view/View;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 991
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->access$1(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$2;

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->val$v:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$2;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 996
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 982
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->access$1(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$1;

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->val$v:Landroid/view/View;

    invoke-direct {v1, p0, v2, p1}, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$1;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 987
    return-void
.end method
