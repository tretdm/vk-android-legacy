.class Lcom/vkontakte/android/fragments/PostViewFragment$26;
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

.field private final synthetic val$cid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$26;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$26;->val$cid:I

    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1160
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$26;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1153
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$26;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$15(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1154
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$26;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$40(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1155
    return-void

    .line 1142
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 1143
    .local v0, "c":Lcom/vkontakte/android/NewsComment;
    iget v2, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    iget v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$26;->val$cid:I

    if-ne v2, v3, :cond_0

    .line 1147
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    .line 1149
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$26;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v1

    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    goto :goto_0
.end method
