.class Lcom/vkontakte/android/fragments/PostViewFragment$25;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallDeleteComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->deleteComment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

.field final synthetic val$cid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 994
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$25;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$25;->val$cid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1015
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 997
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$25;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 998
    .local v0, "c":Lcom/vkontakte/android/NewsComment;
    iget v2, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    iget v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$25;->val$cid:I

    if-ne v2, v3, :cond_0

    .line 1002
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    .line 1004
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$25;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v3, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 1008
    .end local v0    # "c":Lcom/vkontakte/android/NewsComment;
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$25;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$800(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1009
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$25;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3300(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1010
    return-void
.end method
