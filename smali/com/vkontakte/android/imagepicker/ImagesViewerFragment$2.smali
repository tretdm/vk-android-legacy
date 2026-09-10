.class Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$2;
.super Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;
.source "ImagesViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$2;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    .line 251
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$2;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$1(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$2;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$1(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;->onPositionChanged(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$2;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$2(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;I)V

    .line 260
    return-void
.end method
