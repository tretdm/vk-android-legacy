.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$4;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/Photo;->albumID:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$8(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
