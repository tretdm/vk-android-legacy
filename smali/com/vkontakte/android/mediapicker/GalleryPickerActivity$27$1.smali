.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27$1;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;

    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$29(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1313
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$29(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1315
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$6(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1317
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$30(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 1318
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    .line 1319
    return-void
.end method
