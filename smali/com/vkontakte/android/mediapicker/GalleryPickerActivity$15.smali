.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$15;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCropper(ZLcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field final synthetic val$block:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$15;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$15;->val$block:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$15;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$2300(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V

    .line 763
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$15;->val$block:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 764
    return-void
.end method
