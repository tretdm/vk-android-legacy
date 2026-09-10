.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;
.super Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->loadAndOpenImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
        "<",
        "Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field final synthetic val$entries:Ljava/util/List;

.field final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field final synthetic val$index:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$index:I

    iput-object p5, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$entries:Ljava/util/List;

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 2
    .param p1, "result"    # Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .prologue
    .line 1386
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1401
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1382
    check-cast p1, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    return-void
.end method
