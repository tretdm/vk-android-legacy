.class Lcom/vkontakte/android/PhotoViewerFragment$18;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallDeleteComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->deleteComment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;

.field private final synthetic val$cid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    iput p2, p0, Lcom/vkontakte/android/PhotoViewerFragment$18;->val$cid:I

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 608
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 594
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 601
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$16(Lcom/vkontakte/android/PhotoViewerFragment;)V

    .line 602
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->updateInfoPanel()V

    .line 603
    return-void

    .line 594
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 595
    .local v0, "c":Lcom/vkontakte/android/NewsComment;
    iget v2, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$18;->val$cid:I

    if-ne v2, v3, :cond_0

    .line 596
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    .line 597
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v1

    iget v2, v1, Lcom/vkontakte/android/Photo;->nComments:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/vkontakte/android/Photo;->nComments:I

    goto :goto_0
.end method
