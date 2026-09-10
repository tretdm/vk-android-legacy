.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$11;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateThumbnailForImage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$11;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$11;->val$index:I

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 640
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$11;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-nez v2, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$11;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$11;->val$index:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$4(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)Landroid/view/View;

    move-result-object v1

    .line 645
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    .line 649
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    if-eqz v0, :cond_0

    .line 650
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$11;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getImageAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->updateImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    goto :goto_0
.end method
