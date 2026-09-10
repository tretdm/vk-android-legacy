.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$2;
.super Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;

.field private final synthetic val$after:Ljava/lang/Runnable;

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$2;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$2;->val$after:Ljava/lang/Runnable;

    .line 867
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Landroid/graphics/Bitmap;)V

    .line 874
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$2;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 875
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$2;->run(Landroid/graphics/Bitmap;)V

    return-void
.end method
