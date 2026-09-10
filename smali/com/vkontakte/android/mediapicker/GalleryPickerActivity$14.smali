.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCropper(ZLcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

.field private final synthetic val$coords:[F

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;[FLcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->val$coords:[F

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->val$callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 733
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->val$coords:[F

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->applyEmptyCropDataToViewer()V

    .line 738
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->val$coords:[F

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->showCropper(Z)V

    .line 739
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v5, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->val$callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->val$callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    :goto_2
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->val$callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    :goto_3
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->val$callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    :goto_4
    invoke-virtual {v5, v0, v3, v4}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->displayCropperAction(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;II)V

    .line 740
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$22(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->updateForImageViewer(Z)V

    .line 741
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showBadge(Z)V

    .line 742
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->val$coords:[F

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, v3, v4}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->applyCropDataToViewer([FLcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 738
    goto :goto_1

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$21(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v3, 0x7

    goto :goto_3

    :cond_4
    const/4 v4, 0x5

    goto :goto_4
.end method
