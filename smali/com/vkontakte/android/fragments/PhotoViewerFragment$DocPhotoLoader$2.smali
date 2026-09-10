.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$2;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$2;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 992
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$2;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->access$2(Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$4(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$2;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->access$2(Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$4(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$2;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->access$2(Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v1

    const v2, 0x7f080259

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->setErrorText(Ljava/lang/String;)V

    .line 994
    :cond_0
    return-void
.end method
