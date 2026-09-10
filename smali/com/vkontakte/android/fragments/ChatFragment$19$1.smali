.class Lcom/vkontakte/android/fragments/ChatFragment$19$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$19;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$19;)V
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1163
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 1164
    .local v1, "user":Lcom/vkontakte/android/UserProfile;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1166
    .end local v1    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1167
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/ChatFragment$19$1$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/ChatFragment$19$1$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$19$1;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1172
    :cond_1
    return-void
.end method
