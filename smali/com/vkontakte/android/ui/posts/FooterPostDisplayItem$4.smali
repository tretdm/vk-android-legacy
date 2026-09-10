.class Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;
.super Ljava/lang/Object;
.source "FooterPostDisplayItem.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallLike$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->like(ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

.field final synthetic val$lOid:I

.field final synthetic val$lPid:I

.field final synthetic val$liked:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;Landroid/view/View;IIZ)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iput-object p2, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$lOid:I

    iput p4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$lPid:I

    iput-boolean p5, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$liked:Z

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

    .line 216
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$lOid:I

    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v2, v2, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$lPid:I

    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v2, v2, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-eq v0, v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$liked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 221
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$liked:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 222
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->access$102(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;Z)Z

    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$view:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$3;-><init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 221
    goto :goto_2
.end method

.method public success(III)V
    .locals 3
    .param p1, "likes"    # I
    .param p2, "retweets"    # I
    .param p3, "postID"    # I

    .prologue
    .line 191
    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->access$102(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;Z)Z

    .line 192
    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$view:Landroid/view/View;

    const v2, 0x7f080136

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 193
    .local v0, "_e":Lcom/vkontakte/android/NewsEntry;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$lOid:I

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$lPid:I

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-eq v1, v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v1, v1, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iput p1, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 197
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$liked:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v1, v1, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iput p2, v1, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v1, v1, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$liked:Z

    if-eq v1, v2, :cond_3

    .line 200
    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$view:Landroid/view/View;

    new-instance v2, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;-><init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$view:Landroid/view/View;

    new-instance v2, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$2;-><init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
