.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$4;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;
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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$4;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropApply()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$4;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$7(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 223
    return-void
.end method

.method public onCropReset()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$4;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$8(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 229
    return-void
.end method
