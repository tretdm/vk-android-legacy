.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showCropper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$coords:[F


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;[F)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;->val$coords:[F

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 635
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;->val$coords:[F

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->applyEmptyCropDataToViewer()V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;->val$coords:[F

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->showCropper(Z)V

    .line 639
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$16(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->displayCropperAction(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;)V

    .line 640
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$17(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->updateForImageViewer(Z)V

    .line 641
    return-void

    :cond_1
    move v0, v1

    .line 638
    goto :goto_0
.end method
