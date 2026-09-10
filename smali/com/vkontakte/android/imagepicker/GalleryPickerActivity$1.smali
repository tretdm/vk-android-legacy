.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;
.super Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;
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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 102
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundUpdate(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 140
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$5(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 145
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const v0, 0x3f7fbe77    # 0.999f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 147
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$5(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$4(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 135
    return-void
.end method

.method public onImageStyled(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 129
    return-void
.end method

.method public onPositionChanged(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput p1, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    .line 110
    if-eqz p2, :cond_1

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$1(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ZLandroid/widget/ImageView;)V

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0, p2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$2(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v1, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$3(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->updateRect(Landroid/view/View;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->updateList()V

    goto :goto_0
.end method
