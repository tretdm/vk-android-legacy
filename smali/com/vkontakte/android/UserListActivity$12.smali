.class Lcom/vkontakte/android/UserListActivity$12;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UserListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListActivity;

.field private final synthetic val$u:Lcom/vkontakte/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UserListActivity;Lcom/vkontakte/android/UserProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$12;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput-object p2, p0, Lcom/vkontakte/android/UserListActivity$12;->val$u:Lcom/vkontakte/android/UserProfile;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$12;->this$0:Lcom/vkontakte/android/UserListActivity;

    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 459
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$12;->val$u:Lcom/vkontakte/android/UserProfile;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 452
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$12;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$12;->val$u:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$12;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListActivity;->updateList()V

    .line 454
    return-void
.end method
