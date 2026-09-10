.class Lcom/vkontakte/android/fragments/PostViewFragment$36;
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

.field private final synthetic val$liked:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->val$liked:Z

    .line 1659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PostViewFragment$36;)Lcom/vkontakte/android/fragments/PostViewFragment;
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1684
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->val$liked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1685
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->val$liked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1687
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$52(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    .line 1688
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$8(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$8(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$36$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$36$3;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$36;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1695
    :cond_0
    return-void

    .line 1684
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1686
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

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
    .line 1662
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iput p1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1663
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->val$liked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iput p2, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$40(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1665
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$52(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    .line 1666
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$8(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1680
    :goto_0
    return-void

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->val$liked:Z

    if-eq v0, v1, :cond_2

    .line 1668
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$8(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$36$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$36$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$36;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1674
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$8(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$36$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$36$2;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$36;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
