.class Lcom/vkontakte/android/WikiViewActivity$1;
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
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity$1;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$1;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/WikiViewActivity;->access$10(Lcom/vkontakte/android/WikiViewActivity;I)V

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$1;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/WikiViewActivity;->access$9(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 137
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "meta"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$1;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p3}, Lcom/vkontakte/android/WikiViewActivity;->access$6(Lcom/vkontakte/android/WikiViewActivity;Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$1;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/WikiViewActivity;->access$7(Lcom/vkontakte/android/WikiViewActivity;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$1;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity$1;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v3, v1}, Lcom/vkontakte/android/WikiViewActivity;->access$8(Lcom/vkontakte/android/WikiViewActivity;IILjava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$1;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/WikiViewActivity;->access$9(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 129
    return-void
.end method
