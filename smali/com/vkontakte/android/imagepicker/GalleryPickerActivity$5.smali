.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 355
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->getCurrentPhotoFile()Ljava/io/File;

    move-result-object v0

    .line 357
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->addImageToGallery(Landroid/app/Activity;)V

    .line 359
    new-instance v1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget v2, v2, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentCameraBucketId:I

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;-><init>(ILjava/lang/String;ZI)V

    .line 360
    .local v1, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setOrientationByPath(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/io/File;)V

    .line 362
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    new-instance v3, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5$1;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5$1;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method
