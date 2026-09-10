.class Lcom/vkontakte/android/fragments/PostViewFragment$35;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallLike$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->like(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

.field final synthetic val$liked:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->val$liked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1514
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->val$liked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1515
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->val$liked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1517
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4902(Lcom/vkontakte/android/fragments/PostViewFragment;Z)Z

    .line 1518
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2100(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2100(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$35$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$35$3;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$35;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1525
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1514
    goto :goto_0

    .line 1516
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_1
.end method

.method public success(III)V
    .locals 2
    .param p1, "likes"    # I
    .param p2, "retweets"    # I
    .param p3, "postID"    # I

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iput p1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1493
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->val$liked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iput p2, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 1494
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3300(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1495
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4902(Lcom/vkontakte/android/fragments/PostViewFragment;Z)Z

    .line 1496
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2100(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1510
    :goto_0
    return-void

    .line 1497
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->val$liked:Z

    if-eq v0, v1, :cond_2

    .line 1498
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2100(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$35$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$35$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$35;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1504
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2100(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$35$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$35$2;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$35;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
