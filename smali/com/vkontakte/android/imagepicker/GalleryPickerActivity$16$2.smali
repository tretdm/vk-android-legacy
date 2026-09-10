.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$2;
.super Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;

.field private final synthetic val$after:Ljava/lang/Runnable;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$2;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$2;->val$after:Ljava/lang/Runnable;

    .line 765
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setImageData(Landroid/graphics/Bitmap;)V

    .line 772
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$2;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 773
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$2;->run(Landroid/graphics/Bitmap;)V

    return-void
.end method
