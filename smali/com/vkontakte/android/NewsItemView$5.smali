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

.field private final synthetic val$lOid:I

.field private final synthetic val$lPid:I

.field private final synthetic val$liked:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsItemView;IIZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iput p2, p0, Lcom/vkontakte/android/NewsItemView$5;->val$lOid:I

    iput p3, p0, Lcom/vkontakte/android/NewsItemView$5;->val$lPid:I

    iput-boolean p4, p0, Lcom/vkontakte/android/NewsItemView$5;->val$liked:Z

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsItemView$5;)Lcom/vkontakte/android/NewsItemView;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 603
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

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsItemView$5;->val$liked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 608
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/vkontakte/android/NewsItemView$5;->val$liked:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 609
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsItemView;->access$2(Lcom/vkontakte/android/NewsItemView;Z)V

    .line 610
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    new-instance v1, Lcom/vkontakte/android/NewsItemView$5$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsItemView$5$3;-><init>(Lcom/vkontakte/android/NewsItemView$5;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_1

    .line 608
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public success(III)V
    .locals 2
    .param p1, "likes"    # I
    .param p2, "retweets"    # I
    .param p3, "postID"    # I

    .prologue
    .line 579
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

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iput p1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 583
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsItemView$5;->val$liked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iput p2, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsItemView;->access$2(Lcom/vkontakte/android/NewsItemView;Z)V

    .line 586
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/vkontakte/android/NewsItemView$5;->val$liked:Z

    if-eq v0, v1, :cond_3

    .line 587
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    new-instance v1, Lcom/vkontakte/android/NewsItemView$5$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsItemView$5$1;-><init>(Lcom/vkontakte/android/NewsItemView$5;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    new-instance v1, Lcom/vkontakte/android/NewsItemView$5$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsItemView$5$2;-><init>(Lcom/vkontakte/android/NewsItemView$5;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsItemView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
