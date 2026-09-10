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

.field private final synthetic val$entries:Ljava/util/List;

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$index:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$index:I

    iput-object p5, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$entries:Ljava/util/List;

    .line 1373
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    return-object v0
.end method


# virtual methods
.method public run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 8
    .param p1, "result"    # Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .prologue
    .line 1378
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 1381
    :cond_0
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$view:Landroid/view/View;

    iget v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$index:I

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$entries:Ljava/util/List;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;Landroid/view/View;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1393
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    return-void
.end method
