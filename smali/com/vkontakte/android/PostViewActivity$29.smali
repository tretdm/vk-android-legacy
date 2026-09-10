.class Lcom/vkontakte/android/PostViewActivity$29;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallDelete$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->deletePost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1120
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 1105
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.POST_DELETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1107
    const-string v2, "post_id"

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1108
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/PostViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1109
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_0

    .line 1110
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/UserWallCache;->remove(ILandroid/content/Context;)V

    .line 1112
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1113
    .local v1, "intent1":Landroid/content/Intent;
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1114
    const-string v2, "pid"

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1115
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/vkontakte/android/PostViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 1116
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$29;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/PostViewActivity;->finish()V

    .line 1117
    return-void
.end method
