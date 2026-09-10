.class Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder$1;
.super Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;
.source "FilterViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTapCanceled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "beforeCompleted"    # Z

    .prologue
    .line 41
    return-void
.end method

.method public onTapCompleted(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;

    .line 50
    .local v0, "holder":Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;
    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getAreFiltersSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsImageFailed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->getPosition()I

    move-result v2

    sget-object v3, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/imagepicker/InlineUtils;->applyFilter(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 66
    .end local v0    # "holder":Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 62
    .restart local v0    # "holder":Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->showFiltersToast()V

    goto :goto_0
.end method

.method public onTapStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    return-void
.end method
