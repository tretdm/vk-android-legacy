.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;
.super Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 188
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getCheckViewFromWrap(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->getCheckViewFromWrap(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getCheckViewFromWrap(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEntry(Landroid/view/View;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->getEntry(Landroid/widget/ImageView;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Landroid/widget/ImageView;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .locals 1
    .param p1, "checkView"    # Landroid/widget/ImageView;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    return-object v0
.end method

.method public bridge synthetic updateCheck(Landroid/view/View;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->updateCheck(Landroid/widget/ImageView;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z

    move-result v0

    return v0
.end method

.method public updateCheck(Landroid/widget/ImageView;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z
    .locals 3
    .param p1, "checkView"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->chooseImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    .line 207
    :cond_1
    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->toggleChecked()V

    .line 209
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget v1, v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->update(IZ)V

    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$1(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ZLandroid/widget/ImageView;)V

    .line 213
    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    goto :goto_0
.end method
