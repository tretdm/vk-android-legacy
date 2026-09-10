.class Lcom/vkontakte/android/WikiViewActivity$5;
.super Ljava/lang/Object;
.source "WikiViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PagesGetHTML$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WikiViewActivity;->loadPage(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WikiViewActivity;

.field final synthetic val$id:I

.field final synthetic val$oid:I

.field final synthetic val$useHistory:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WikiViewActivity;ZII)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity$5;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/WikiViewActivity$5;->val$useHistory:Z

    iput p3, p0, Lcom/vkontakte/android/WikiViewActivity$5;->val$oid:I

    iput p4, p0, Lcom/vkontakte/android/WikiViewActivity$5;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$5;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/WikiViewActivity;->access$700(Lcom/vkontakte/android/WikiViewActivity;I)V

    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$5;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/WikiViewActivity;->access$602(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 227
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "meta"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$5;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p3}, Lcom/vkontakte/android/WikiViewActivity;->access$302(Lcom/vkontakte/android/WikiViewActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$5;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/WikiViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$5;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/WikiViewActivity;->access$400(Lcom/vkontakte/android/WikiViewActivity;Ljava/lang/String;)V

    .line 218
    iget-boolean v0, p0, Lcom/vkontakte/android/WikiViewActivity$5;->val$useHistory:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$5;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    iget v1, p0, Lcom/vkontakte/android/WikiViewActivity$5;->val$oid:I

    iget v2, p0, Lcom/vkontakte/android/WikiViewActivity$5;->val$id:I

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/WikiViewActivity;->access$500(Lcom/vkontakte/android/WikiViewActivity;IILjava/lang/String;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$5;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, v3}, Lcom/vkontakte/android/WikiViewActivity;->access$602(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 220
    return-void
.end method
