.class Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment$1;
.super Ljava/lang/Object;
.source "FaveUserListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FaveGetUsers$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->access$002(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    invoke-static {v0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->access$400(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;ILjava/lang/String;)V

    .line 35
    return-void
.end method

.method public success(Ljava/util/List;I)V
    .locals 3
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->access$002(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 28
    iget-object v1, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->access$100(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->access$200(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-ge v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->access$300(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;Ljava/util/List;Z)V

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
