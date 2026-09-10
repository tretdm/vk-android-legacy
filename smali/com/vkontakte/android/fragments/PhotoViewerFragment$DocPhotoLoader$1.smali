.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$1;
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
    .line 979
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$1;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$1;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$1;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 983
    :cond_0
    return-void
.end method
