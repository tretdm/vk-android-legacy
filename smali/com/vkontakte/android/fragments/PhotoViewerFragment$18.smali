.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;
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

.field final synthetic val$liked:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->val$liked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 718
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$600(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->val$liked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 719
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->val$liked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$600(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v0

    iget v2, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 721
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1602(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)Z

    .line 722
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1700(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$3;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 728
    return-void

    :cond_0
    move v0, v1

    .line 718
    goto :goto_0

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$600(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v0

    iget v2, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    goto :goto_1
.end method

.method public success(III)V
    .locals 3
    .param p1, "likes"    # I
    .param p2, "retweets"    # I
    .param p3, "postID"    # I

    .prologue
    .line 692
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$600(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v1

    iput p1, v1, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 694
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$600(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/Photo;->postID:I

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1500(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1602(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)Z

    .line 697
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$600(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/vkontakte/android/Photo;->isLiked:Z

    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->val$liked:Z

    if-eq v1, v2, :cond_1

    .line 698
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1700(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$1;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 714
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$1700(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18$2;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.UPDATE_PHOTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aid"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$600(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/Photo;->albumID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    const-string v1, "photo"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$600(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 712
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
