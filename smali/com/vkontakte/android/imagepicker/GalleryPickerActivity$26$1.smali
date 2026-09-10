.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->run(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;

.field private final synthetic val$entries:Ljava/util/List;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

.field private final synthetic val$index:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;Landroid/view/View;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$index:I

    iput-object p4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p5, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$entries:Ljava/util/List;

    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1237
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$view:Landroid/view/View;

    instance-of v0, v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$view:Landroid/view/View;

    check-cast v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->hideOverlay(Z)V

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;->access$1(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$index:I

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$view:Landroid/view/View;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$entries:Ljava/util/List;

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$26(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V

    .line 1241
    return-void

    .line 1240
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$view:Landroid/view/View;

    instance-of v3, v3, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26$1;->val$view:Landroid/view/View;

    goto :goto_0
.end method
