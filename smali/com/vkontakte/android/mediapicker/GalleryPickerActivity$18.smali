.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->prepareCropper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$crop:Z

.field private final synthetic val$toShow:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->val$toShow:Z

    iput-boolean p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->val$crop:Z

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 906
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->val$toShow:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setSwitchEnabled(Z)V

    .line 908
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-boolean v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->val$toShow:Z

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCheck(Z)V

    .line 909
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateThumbnail(I)V

    .line 911
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->val$toShow:Z

    if-eqz v0, :cond_2

    .line 913
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$14(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 914
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-boolean v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->val$crop:Z

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->val$crop:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$24(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    move-result-object v0

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$25(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;)V

    .line 915
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->updateForImageViewer(Z)V

    .line 924
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 906
    goto :goto_0

    .line 914
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$26(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 920
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$27(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 921
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->updateForImageViewer(Z)V

    .line 922
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showBadge(Z)V

    goto :goto_2
.end method
