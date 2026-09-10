.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$3;
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
        "Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;",
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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$3;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$3;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$3;->val$after:Ljava/lang/Runnable;

    .line 782
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V
    .locals 1
    .param p1, "result"    # Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$3;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    .line 789
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$3;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 790
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$3;->run(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    return-void
.end method
