.class Lcom/vkontakte/android/UserListActivity$10$1;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesRemoveChatUser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UserListActivity$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/UserListActivity$10;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UserListActivity$10;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$10$1;->this$1:Lcom/vkontakte/android/UserListActivity$10;

    iput p2, p0, Lcom/vkontakte/android/UserListActivity$10$1;->val$id:I

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$10$1;->this$1:Lcom/vkontakte/android/UserListActivity$10;

    invoke-static {v0}, Lcom/vkontakte/android/UserListActivity$10;->access$0(Lcom/vkontakte/android/UserListActivity$10;)Lcom/vkontakte/android/UserListActivity;

    move-result-object v0

    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 400
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 388
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$10$1;->this$1:Lcom/vkontakte/android/UserListActivity$10;

    invoke-static {v1}, Lcom/vkontakte/android/UserListActivity$10;->access$0(Lcom/vkontakte/android/UserListActivity$10;)Lcom/vkontakte/android/UserListActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 394
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$10$1;->this$1:Lcom/vkontakte/android/UserListActivity$10;

    invoke-static {v1}, Lcom/vkontakte/android/UserListActivity$10;->access$0(Lcom/vkontakte/android/UserListActivity$10;)Lcom/vkontakte/android/UserListActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/UserListActivity;->updateList()V

    .line 395
    return-void

    .line 388
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 389
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v3, p0, Lcom/vkontakte/android/UserListActivity$10$1;->val$id:I

    if-ne v2, v3, :cond_0

    .line 390
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$10$1;->this$1:Lcom/vkontakte/android/UserListActivity$10;

    invoke-static {v1}, Lcom/vkontakte/android/UserListActivity$10;->access$0(Lcom/vkontakte/android/UserListActivity$10;)Lcom/vkontakte/android/UserListActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
