.class final Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder$1;
.super Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;
.source "FilterViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTapCanceled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "beforeCompleted"    # Z

    .prologue
    .line 42
    return-void
.end method

.method public onTapCompleted(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder;

    .line 51
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder;
    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getAreFiltersSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsImageFailed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder;->getPosition()I

    move-result v2

    sget-object v3, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->applyFilter(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Z)V

    .line 67
    .end local v0    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local v0    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder;
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->showFiltersToast()V

    goto :goto_0
.end method

.method public onTapStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    return-void
.end method
