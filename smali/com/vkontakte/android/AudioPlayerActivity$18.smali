.class Lcom/vkontakte/android/AudioPlayerActivity$18;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->doUpdateCover(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 775
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    if-eq v1, p1, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->access$900(Lcom/vkontakte/android/AudioPlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1100(Lcom/vkontakte/android/AudioPlayerActivity;)V

    .line 777
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->access$000(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 778
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    new-instance v2, Lcom/vkontakte/android/AudioPlayerActivity$18$2;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity$18$2;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$18;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 737
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    if-eq v0, p2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oldOid:I

    if-eq v0, p2, :cond_2

    .line 772
    :cond_1
    :goto_0
    return-void

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$18$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/AudioPlayerActivity$18$1;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$18;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
