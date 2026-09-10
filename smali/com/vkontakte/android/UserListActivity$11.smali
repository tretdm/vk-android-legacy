.class Lcom/vkontakte/android/UserListActivity$11;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesEditChat$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UserListActivity;->setChatTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListActivity;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UserListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$11;->this$0:Lcom/vkontakte/android/UserListActivity;

    iput-object p2, p0, Lcom/vkontakte/android/UserListActivity$11;->val$title:Ljava/lang/String;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$11;->this$0:Lcom/vkontakte/android/UserListActivity;

    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 432
    return-void
.end method

.method public success()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.CHAT_TITLE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "chat_id"

    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$11;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "chat_id"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string v2, "title"

    iget-object v3, p0, Lcom/vkontakte/android/UserListActivity$11;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$11;->this$0:Lcom/vkontakte/android/UserListActivity;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v0, v3}, Lcom/vkontakte/android/UserListActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$11;->this$0:Lcom/vkontakte/android/UserListActivity;

    const v3, 0x7f0901fd

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 424
    .local v1, "t":Landroid/widget/Toast;
    const/16 v2, 0x31

    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 425
    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/Toast;->setMargin(FF)V

    .line 426
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 427
    return-void
.end method
