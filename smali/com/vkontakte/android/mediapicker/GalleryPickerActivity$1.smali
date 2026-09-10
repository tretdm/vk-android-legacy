.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;
.super Lcom/vkontakte/android/mediapicker/entries/IVCallback;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 112
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/IVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundUpdate(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 150
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$6(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 155
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const v0, 0x3f7fbe77    # 0.999f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 157
    :cond_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$6(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$5(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 145
    return-void
.end method

.method public onImageStyled(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 139
    return-void
.end method

.method public onPositionChanged(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iput-object p2, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iput p1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    .line 120
    if-eqz p2, :cond_1

    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$2(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLandroid/widget/ImageView;)V

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0, p2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$3(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v1, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$4(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->updateRect(Landroid/view/View;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->updateList()V

    goto :goto_0
.end method
