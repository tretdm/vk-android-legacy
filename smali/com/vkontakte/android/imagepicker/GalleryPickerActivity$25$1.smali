.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25$1;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;

    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$24(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1165
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$24(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$5(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$25(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 1170
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    .line 1171
    return-void
.end method
