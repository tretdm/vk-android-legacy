.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

.field final synthetic val$result:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 0

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->val$result:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1394
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$view:Landroid/view/View;

    instance-of v0, v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$view:Landroid/view/View;

    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->hideOverlayView(Z)V

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->val$result:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->val$result:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iget v1, v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$index:I

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$view:Landroid/view/View;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iget-object v4, v4, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$entries:Ljava/util/List;

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$3200(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V

    .line 1399
    :cond_1
    return-void

    .line 1398
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$view:Landroid/view/View;

    instance-of v3, v3, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;->val$view:Landroid/view/View;

    goto :goto_0
.end method
