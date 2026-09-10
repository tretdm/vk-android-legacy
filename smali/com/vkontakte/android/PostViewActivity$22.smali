.class Lcom/vkontakte/android/PostViewActivity$22;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallRestoreComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->restoreComment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;

.field private final synthetic val$cid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iput p2, p0, Lcom/vkontakte/android/PostViewActivity$22;->val$cid:I

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 744
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 729
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 737
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/PostViewActivity;->updateList()V

    .line 738
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$29(Lcom/vkontakte/android/PostViewActivity;)V

    .line 739
    return-void

    .line 729
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 730
    .local v0, "c":Lcom/vkontakte/android/NewsComment;
    iget v2, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    iget v3, p0, Lcom/vkontakte/android/PostViewActivity$22;->val$cid:I

    if-ne v2, v3, :cond_0

    .line 732
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v1

    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 733
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    goto :goto_0
.end method
