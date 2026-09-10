.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initialize(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEditorActionsAvailable()Z
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsImageFailed()Z

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
    .line 503
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1300(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 504
    return-void
.end method

.method public onBigCompletePressed()V
    .locals 0

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->onCompletePressed()V

    .line 510
    return-void
.end method

.method public onCancelPressed()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1300(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1500(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V

    goto :goto_0
.end method

.method public onCompletePressed()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1500(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V

    .line 516
    return-void
.end method

.method public onCropPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 535
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0, v1, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->prepareCropper(ZZ)V

    .line 536
    return-void
.end method

.method public onEnhancePressed(Z)V
    .locals 1
    .param p1, "doApply"    # Z

    .prologue
    .line 553
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1900(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V

    .line 554
    return-void
.end method

.method public onFiltersPressed()Z
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->toggle(Z)Z

    move-result v0

    return v0
.end method

.method public onRetryPressed()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showRetryButton(Z)V

    .line 522
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1600(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 523
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1700(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 524
    return-void
.end method

.method public onTextPressed()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1800(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 548
    return-void
.end method
