.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$7;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initialize(Z)V
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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$7;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$7;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$7;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setRequestedOrientation(I)V

    .line 394
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$7;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->launchCamera(Landroid/app/Activity;)V

    .line 395
    return-void

    .line 392
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
