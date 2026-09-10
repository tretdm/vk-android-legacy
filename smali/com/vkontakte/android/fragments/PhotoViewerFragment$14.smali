.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallLike$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->like(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

.field private final synthetic val$liked:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->val$liked:Z

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 518
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->val$liked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 519
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->val$liked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v0

    iget v2, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 521
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$14(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V

    .line 522
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$15(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14$3;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 528
    return-void

    .line 518
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v0

    iget v2, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    goto :goto_1
.end method

.method public success(III)V
    .locals 2
    .param p1, "likes"    # I
    .param p2, "retweets"    # I
    .param p3, "postID"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v0

    iput p1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 500
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$14(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V

    .line 501
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->val$liked:Z

    if-eq v0, v1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$15(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14$1;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 514
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$15(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14$2;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
