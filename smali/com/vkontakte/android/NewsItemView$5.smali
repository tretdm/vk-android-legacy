.class Lcom/vkontakte/android/NewsItemView$5;
.super Ljava/lang/Object;
.source "NewsItemView.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallLike$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsItemView;->like(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsItemView;

.field final synthetic val$lOid:I

.field final synthetic val$lPid:I

.field final synthetic val$liked:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsItemView;IIZ)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iput p2, p0, Lcom/vkontakte/android/NewsItemView$5;->val$lOid:I

    iput p3, p0, Lcom/vkontakte/android/NewsItemView$5;->val$lPid:I

    iput-boolean p4, p0, Lcom/vkontakte/android/NewsItemView$5;->val$liked:Z

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

    .line 617
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsItemView$5;->val$lOid:I

    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsItemView$5;->val$lPid:I

    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-eq v0, v2, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsItemView$5;->val$liked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 622
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/vkontakte/android/NewsItemView$5;->val$liked:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 623
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsItemView;->access$202(Lcom/vkontakte/android/NewsItemView;Z)Z

    .line 624
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    new-instance v1, Lcom/vkontakte/android/NewsItemView$5$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsItemView$5$3;-><init>(Lcom/vkontakte/android/NewsItemView$5;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 622
    goto :goto_2
.end method

.method public success(III)V
    .locals 2
    .param p1, "likes"    # I
    .param p2, "retweets"    # I
    .param p3, "postID"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsItemView$5;->val$lOid:I

    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/NewsItemView$5;->val$lPid:I

    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-eq v0, v1, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iput p1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 597
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsItemView$5;->val$liked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iput p2, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsItemView;->access$202(Lcom/vkontakte/android/NewsItemView;Z)Z

    .line 600
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/vkontakte/android/NewsItemView$5;->val$liked:Z

    if-eq v0, v1, :cond_3

    .line 601
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    new-instance v1, Lcom/vkontakte/android/NewsItemView$5$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsItemView$5$1;-><init>(Lcom/vkontakte/android/NewsItemView$5;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    new-instance v1, Lcom/vkontakte/android/NewsItemView$5$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsItemView$5$2;-><init>(Lcom/vkontakte/android/NewsItemView$5;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
