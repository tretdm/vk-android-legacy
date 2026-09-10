.class Lcom/vkontakte/android/LinkRedirActivity$4;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardGetTopics$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LinkRedirActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LinkRedirActivity;

.field private final synthetic val$oid:I

.field private final synthetic val$tid:I

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LinkRedirActivity;IILandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iput p2, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->val$oid:I

    iput p3, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->val$tid:I

    iput-object p4, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->val$uri:Landroid/net/Uri;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 425
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->access$0(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 426
    return-void
.end method

.method public success(ILjava/util/ArrayList;ZI)V
    .locals 4
    .param p1, "total"    # I
    .param p3, "canCreate"    # Z
    .param p4, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/BoardTopic;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardTopic;>;"
    iget-object v2, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 413
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    .line 414
    .local v1, "topic":Lcom/vkontakte/android/api/BoardTopic;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 416
    const-string v2, "gid"

    iget v3, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->val$oid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    const-string v2, "tid"

    iget v3, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->val$tid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    iget v2, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    const-string v2, "is_closed"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    :cond_0
    const-string v2, "BoardTopicViewFragment"

    iget-object v3, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 420
    return-void
.end method
