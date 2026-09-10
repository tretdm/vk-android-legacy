.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->prepareCropper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$toShow:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->val$toShow:Z

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 814
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->val$toShow:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setSwitchEnabled(Z)V

    .line 815
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->val$toShow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateBadgeVisible(Z)V

    .line 816
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-boolean v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->val$toShow:Z

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showCheck(Z)V

    .line 817
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget v3, v3, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateThumbnail(I)V

    .line 819
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->val$toShow:Z

    if-eqz v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$19(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 822
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$20(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 823
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->updateForImageViewer(Z)V

    .line 831
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 814
    goto :goto_0

    :cond_1
    move v0, v1

    .line 815
    goto :goto_1

    .line 827
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$21(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 828
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$22(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 829
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->updateForImageViewer(Z)V

    goto :goto_2
.end method
