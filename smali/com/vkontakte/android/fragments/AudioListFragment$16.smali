.class Lcom/vkontakte/android/fragments/AudioListFragment$16;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;->getAndShowCover(IILandroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

.field final synthetic val$aid:I

.field final synthetic val$iv:Landroid/widget/ImageView;

.field final synthetic val$oid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;IILandroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->val$oid:I

    iput p3, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->val$aid:I

    iput-object p4, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->val$iv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 723
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "_oid"    # I
    .param p3, "_aid"    # I

    .prologue
    .line 711
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET COVER OK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->val$oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->val$aid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->val$iv:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$16$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment$16$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment$16;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 717
    return-void
.end method
