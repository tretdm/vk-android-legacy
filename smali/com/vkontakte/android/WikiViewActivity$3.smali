.class Lcom/vkontakte/android/WikiViewActivity$3;
.super Ljava/lang/Object;
.source "WikiViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PagesGetHTML$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WikiViewActivity;->loadPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WikiViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WikiViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity$3;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$3;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/WikiViewActivity;->access$4(Lcom/vkontakte/android/WikiViewActivity;I)V

    .line 145
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$3;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/WikiViewActivity;->access$2(Lcom/vkontakte/android/WikiViewActivity;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$3;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$3;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "oid"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/WikiViewActivity$3;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pid"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/WikiViewActivity;->access$3(Lcom/vkontakte/android/WikiViewActivity;IILjava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$3;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/WikiViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method
