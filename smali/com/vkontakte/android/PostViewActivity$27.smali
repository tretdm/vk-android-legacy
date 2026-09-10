.class Lcom/vkontakte/android/PostViewActivity$27;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallLike$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->like()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;

.field private final synthetic val$wasLiked:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/PostViewActivity$27;->val$wasLiked:Z

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/vkontakte/android/PostViewActivity$27;->val$wasLiked:Z

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1012
    iget-boolean v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->val$wasLiked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1014
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$33(Lcom/vkontakte/android/PostViewActivity;)V

    .line 1015
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$29(Lcom/vkontakte/android/PostViewActivity;)V

    .line 1016
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->access$36(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 1017
    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_0
.end method

.method public success(III)V
    .locals 3
    .param p1, "likes"    # I
    .param p2, "reposts"    # I
    .param p3, "pid"    # I

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iput p1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1004
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$33(Lcom/vkontakte/android/PostViewActivity;)V

    .line 1005
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$29(Lcom/vkontakte/android/PostViewActivity;)V

    .line 1006
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->access$36(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 1007
    return-void
.end method
