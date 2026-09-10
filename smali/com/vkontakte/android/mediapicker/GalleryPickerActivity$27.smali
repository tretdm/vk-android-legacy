.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsShowingViewer(Z)V
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->showThumb()V

    .line 1307
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$29(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27$1;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;)V

    .line 1320
    const-wide/16 v2, 0xa

    .line 1307
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1321
    return-void
.end method
