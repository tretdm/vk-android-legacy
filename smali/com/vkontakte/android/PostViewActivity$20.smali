.class Lcom/vkontakte/android/PostViewActivity$20;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallLike$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->likeComment(Lcom/vkontakte/android/NewsComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;

.field private final synthetic val$comm:Lcom/vkontakte/android/NewsComment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/NewsComment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$20;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PostViewActivity$20;->val$comm:Lcom/vkontakte/android/NewsComment;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$20;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const v1, 0x7f090052

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 584
    return-void
.end method

.method public success(III)V
    .locals 2
    .param p1, "likes"    # I
    .param p2, "retweets"    # I
    .param p3, "postID"    # I

    .prologue
    .line 576
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$20;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$20;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-boolean v0, v0, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    .line 577
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$20;->val$comm:Lcom/vkontakte/android/NewsComment;

    iput p1, v0, Lcom/vkontakte/android/NewsComment;->numLikes:I

    .line 578
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$20;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PostViewActivity;->updateList()V

    .line 579
    return-void

    .line 576
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
