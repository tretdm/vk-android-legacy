.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;
.super Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
        "<",
        "Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$imageIndex:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;->val$imageIndex:I

    .line 963
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 4
    .param p1, "result"    # Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .prologue
    .line 968
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 970
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setPreventInvalidateViewer(Z)V

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    iget v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;->val$imageIndex:I

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->updateThumbnailForImage(Landroid/graphics/Bitmap;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 974
    return-void

    .line 973
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;->run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    return-void
.end method
