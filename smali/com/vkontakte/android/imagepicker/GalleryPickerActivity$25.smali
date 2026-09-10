.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setIsShowingViewer(Z)V
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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->showThumb()V

    .line 1159
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$24(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25$1;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;)V

    .line 1172
    const-wide/16 v2, 0xa

    .line 1159
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1173
    return-void
.end method
