.class Lcom/vkontakte/android/fragments/ChatFragment$18;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatFragment$18;)Lcom/vkontakte/android/fragments/ChatFragment;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1125
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1126
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v1, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1136
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1137
    new-instance v3, Lcom/vkontakte/android/fragments/ChatFragment$18$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/ChatFragment$18$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$18;)V

    invoke-static {v1, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 1151
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/ChatFragment$18$2;

    invoke-direct {v4, p0, p2, p1}, Lcom/vkontakte/android/fragments/ChatFragment$18$2;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$18;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1126
    .end local v1    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ChatUser;

    .line 1127
    .local v2, "user":Lcom/vkontakte/android/ChatUser;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    if-eqz v4, :cond_1

    .line 1128
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$21(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v2, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v2, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1131
    .end local v2    # "user":Lcom/vkontakte/android/ChatUser;
    .restart local v1    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 1132
    .local v0, "msg":Lcom/vkontakte/android/Message;
    iget v4, v0, Lcom/vkontakte/android/Message;->sender:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$18;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$21(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1133
    iget v4, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
