.class Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$8;
.super Ljava/lang/Object;
.source "ImageViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->hideCropper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$8;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$8;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$400(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/ui/CropperView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->setVisibility(I)V

    .line 513
    return-void
.end method
