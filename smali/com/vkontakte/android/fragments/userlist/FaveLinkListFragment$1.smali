.class Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment$1;
.super Ljava/lang/Object;
.source "FaveLinkListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FaveGetLinks$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->access$002(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    invoke-static {v0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->access$400(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;ILjava/lang/String;)V

    .line 44
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
    .line 36
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->access$002(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 37
    iget-object v1, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->access$100(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->access$200(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;)Ljava/util/ArrayList;

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
    invoke-static {v1, p1, v0}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->access$300(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;Ljava/util/List;Z)V

    .line 38
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
