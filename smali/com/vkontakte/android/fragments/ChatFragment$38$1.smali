.class Lcom/vkontakte/android/fragments/ChatFragment$38$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$38;->onUsersLoaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$38;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$38;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2342
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$38$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$38;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$38$1;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2344
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2345
    .local v3, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$38$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .local v4, "up":Lcom/vkontakte/android/UserProfile;
    iget v5, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2346
    .end local v4    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$38$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$38;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$38;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2347
    .local v2, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v5, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-lez v5, :cond_1

    iget v5, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2348
    iget v5, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v5, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    .line 2349
    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$38$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$38;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$38;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment$Image;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$1;)V

    .line 2350
    .local v1, "im":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    const v5, 0x7f0800d0

    iput v5, v1, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    .line 2351
    iget v5, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v5, v1, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    .line 2352
    iget-object v5, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2355
    .end local v1    # "im":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    .end local v2    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$38$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$38;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$38;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 2356
    return-void
.end method
