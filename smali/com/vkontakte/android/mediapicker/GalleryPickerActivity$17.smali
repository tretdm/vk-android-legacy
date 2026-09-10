.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->applyCrop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$coords:[F

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;[F)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->val$coords:[F

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 844
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->hideCropperAction()V

    .line 846
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-nez v2, :cond_0

    .line 882
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setPreventInvalidateViewer(Z)V

    .line 851
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$1;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$1;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 867
    .local v0, "after":Ljava/lang/Runnable;
    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$2;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-direct {v1, p0, v2, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$2;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/lang/Runnable;)V

    .line 879
    .local v1, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    const-string v5, "Crop data set: %b, coords: %b"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v4

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->val$coords:[F

    if-nez v2, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v3

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->val$coords:[F

    invoke-virtual {v3, v2, v4, v1}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->crop(Landroid/graphics/Bitmap;[FLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 879
    goto :goto_1
.end method
