.class Lcom/vkontakte/android/MessageViewActivity$1;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$1;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-static {p1}, Lcom/vkontakte/android/Global;->setViewSel(Landroid/view/View;)V

    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$1;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$1;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/MessageViewActivity;->isOut:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$1;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$1;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "sender"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method
