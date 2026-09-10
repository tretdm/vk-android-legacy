.class Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$1;
.super Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;
.source "ImageViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final animateScale:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$1;->animateScale:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onTapCanceled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "beforeCompleted"    # Z

    .prologue
    .line 65
    return-void
.end method

.method public onTapCompleted(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 73
    .local v1, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;

    .line 75
    .local v0, "holder":Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 77
    sget-object v2, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    sget-object v2, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->chooseImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->toggleChecked()V

    .line 102
    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v2

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

    invoke-static {v2, v3}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->updateCheck(ZLcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;)V

    .line 103
    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v2

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->updateBorder(ZLandroid/view/View;)V

    goto :goto_0
.end method

.method public onTapStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    return-void
.end method
