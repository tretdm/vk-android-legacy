.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;
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

.field private final synthetic val$block:Ljava/lang/Runnable;

.field private final synthetic val$coords:[F

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;[FLcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;->val$coords:[F

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;->val$block:Ljava/lang/Runnable;

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;->val$coords:[F

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;->val$coords:[F

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->applyCropDataToViewer([FLcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;->val$block:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 667
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$18(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Z)V

    .line 668
    return-void
.end method
