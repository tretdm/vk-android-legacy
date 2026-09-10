.class Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$4;
.super Ljava/lang/Object;
.source "ImagesViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$4;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomChanged(FFF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "max"    # F
    .param p3, "min"    # F

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$4;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$1(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$4;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$1(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;->onZoomChanged(FFF)V

    .line 285
    :cond_0
    return-void
.end method
