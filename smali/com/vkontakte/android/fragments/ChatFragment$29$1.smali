.class Lcom/vkontakte/android/fragments/ChatFragment$29$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$29;->onUsersLoaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

.field private final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$29;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$users:Ljava/util/ArrayList;

    .line 1549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1551
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1552
    .local v2, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1553
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1562
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1563
    return-void

    .line 1552
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .local v3, "up":Lcom/vkontakte/android/UserProfile;
    iget v5, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1553
    .end local v3    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1554
    .local v1, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v4, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    if-lez v4, :cond_0

    iget v4, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1555
    iget v4, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v4, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    .line 1556
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment$Image;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$Image;)V

    .line 1557
    .local v0, "im":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    const v4, 0x7f0800c9

    iput v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    .line 1558
    iget v4, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    .line 1559
    iget-object v4, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
