.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$6;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 438
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$6;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 442
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->getCurrentPhotoFile()Ljava/io/File;

    move-result-object v0

    .line 444
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$6;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->addImageToGallery(Landroid/app/Activity;)V

    .line 449
    new-instance v1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$6;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentCameraBucketId:I

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(ILjava/lang/String;ZI)V

    .line 450
    .local v1, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->setOrientationByPath(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/io/File;)V

    .line 452
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$6;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    new-instance v3, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$6$1;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$6$1;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$6;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
