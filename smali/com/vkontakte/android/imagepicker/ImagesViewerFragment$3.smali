.class Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$3;
.super Ljava/lang/Object;
.source "ImagesViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$3;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$3;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$1(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$3;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$1(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;->onDismiss()V

    .line 269
    :cond_0
    return-void
.end method

.method public onPrepareDismiss()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$3;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$1(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$3;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$1(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;->onPrepareDismiss()V

    .line 276
    :cond_0
    return-void
.end method
