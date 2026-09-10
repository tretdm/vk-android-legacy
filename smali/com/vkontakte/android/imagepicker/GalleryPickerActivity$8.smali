.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initialize(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEditorActionsAvailable()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsImageFailed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBigCancelPressed()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$10(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 411
    return-void
.end method

.method public onBigCompletePressed()V
    .locals 0

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->onCompletePressed()V

    .line 417
    return-void
.end method

.method public onCancelPressed()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$11(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Z)V

    .line 405
    return-void
.end method

.method public onCompletePressed()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$11(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Z)V

    .line 423
    return-void
.end method

.method public onCropPressed()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->prepareCropper(Z)V

    .line 443
    return-void
.end method

.method public onEnchancePressed()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public onFiltersPressed()Z
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->toggle(Z)Z

    move-result v0

    return v0
.end method

.method public onRetryPressed()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showRetryButton(Z)V

    .line 429
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$12(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 430
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$13(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 431
    return-void
.end method

.method public onTextPressed()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$14(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 455
    return-void
.end method
