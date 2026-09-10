.class Lcom/vkontakte/android/UserListActivity$10;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UserListActivity;->removeChatUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListActivity;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UserListActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$10;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput p2, p0, Lcom/vkontakte/android/UserListActivity$10;->val$id:I

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/UserListActivity$10;)Lcom/vkontakte/android/UserListActivity;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$10;->this$0:Lcom/vkontakte/android/UserListActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 384
    new-instance v0, Lcom/vkontakte/android/api/MessagesRemoveChatUser;

    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$10;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "chat_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/UserListActivity$10;->val$id:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/MessagesRemoveChatUser;-><init>(II)V

    .line 385
    new-instance v1, Lcom/vkontakte/android/UserListActivity$10$1;

    iget v2, p0, Lcom/vkontakte/android/UserListActivity$10;->val$id:I

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/UserListActivity$10$1;-><init>(Lcom/vkontakte/android/UserListActivity$10;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesRemoveChatUser;->setCallback(Lcom/vkontakte/android/api/MessagesRemoveChatUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$10;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$10;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 404
    return-void
.end method
