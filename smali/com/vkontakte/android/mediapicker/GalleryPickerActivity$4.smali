.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$4;
.super Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
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
    .line 242
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$4;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropApply()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$4;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$800(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 247
    return-void
.end method

.method public onCropReset()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$4;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$900(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 253
    return-void
.end method
