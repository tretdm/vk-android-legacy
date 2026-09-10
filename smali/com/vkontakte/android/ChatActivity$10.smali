.class Lcom/vkontakte/android/ChatActivity$10;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$10;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 494
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$10;->this$0:Lcom/vkontakte/android/ChatActivity;

    const-class v2, Lcom/vkontakte/android/UserListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    sget v2, Lcom/vkontakte/android/UserListActivity;->TYPE_CHAT_MEMBERS:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    const-string v1, "chat_id"

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$10;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v2

    const v3, 0x77359400

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$10;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$10;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 499
    return-void
.end method
