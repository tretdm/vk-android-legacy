.class final Lcom/vkontakte/android/data/Posts$5;
.super Ljava/lang/Object;
.source "Posts.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallLike$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Posts;->like(Lcom/vkontakte/android/NewsEntry;ZLandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$e:Lcom/vkontakte/android/NewsEntry;

.field final synthetic val$id:J

.field final synthetic val$lOid:I

.field final synthetic val$lPid:I

.field final synthetic val$liked:Z


# direct methods
.method constructor <init>(JLcom/vkontakte/android/NewsEntry;ZLandroid/app/Activity;II)V
    .locals 0

    .prologue
    .line 296
    iput-wide p1, p0, Lcom/vkontakte/android/data/Posts$5;->val$id:J

    iput-object p3, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    iput-boolean p4, p0, Lcom/vkontakte/android/data/Posts$5;->val$liked:Z

    iput-object p5, p0, Lcom/vkontakte/android/data/Posts$5;->val$act:Landroid/app/Activity;

    iput p6, p0, Lcom/vkontakte/android/data/Posts$5;->val$lOid:I

    iput p7, p0, Lcom/vkontakte/android/data/Posts$5;->val$lPid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$lOid:I

    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$lPid:I

    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-eq v0, v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$liked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 317
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$liked:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 318
    invoke-static {}, Lcom/vkontakte/android/data/Posts;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    iget-wide v1, p0, Lcom/vkontakte/android/data/Posts$5;->val$id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$act:Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/data/Posts$5$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/data/Posts$5$1;-><init>(Lcom/vkontakte/android/data/Posts$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 324
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-static {v0}, Lcom/vkontakte/android/data/Posts;->access$200(Lcom/vkontakte/android/NewsEntry;)V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_1

    .line 317
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public success(III)V
    .locals 4
    .param p1, "likes"    # I
    .param p2, "retweets"    # I
    .param p3, "postID"    # I

    .prologue
    const/16 v3, 0x8

    .line 299
    invoke-static {}, Lcom/vkontakte/android/data/Posts;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    iget-wide v1, p0, Lcom/vkontakte/android/data/Posts$5;->val$id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    iput p1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 301
    iget-boolean v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$liked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    iput p2, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/vkontakte/android/data/Posts$5;->val$liked:Z

    if-eq v0, v1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$5;->val$act:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/data/Posts;->like(Lcom/vkontakte/android/NewsEntry;ZLandroid/app/Activity;)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$5;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-static {v0}, Lcom/vkontakte/android/data/Posts;->access$200(Lcom/vkontakte/android/NewsEntry;)V

    goto :goto_0
.end method
