.class Lcom/vkontakte/android/BoardCreateTopicActivity$6;
.super Ljava/lang/Object;
.source "BoardCreateTopicActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardAddTopic$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardCreateTopicActivity;->send()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardCreateTopicActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$6;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    iput-object p2, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$6;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$6;->val$text:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 115
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$6;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    const v1, 0x7f090184

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    :cond_0
    return-void
.end method

.method public success(I)V
    .locals 3
    .param p1, "tid"    # I

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$6;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "text"

    iget-object v2, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$6;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$6;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/BoardCreateTopicActivity;->setResult(ILandroid/content/Intent;)V

    .line 110
    iget-object v1, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$6;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/BoardCreateTopicActivity;->finish()V

    .line 111
    return-void
.end method
