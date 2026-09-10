.class Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;
.super Ljava/lang/Object;
.source "BoardTopicsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardGetTopics$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$302(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->onError(ILjava/lang/String;)V

    .line 133
    return-void
.end method

.method public success(ILjava/util/ArrayList;ZI)V
    .locals 2
    .param p1, "count"    # I
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
    .line 120
    .local p2, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardTopic;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p2, v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-static {v0, p3}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$102(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Z)Z

    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-static {v0, p4}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$202(Lcom/vkontakte/android/fragments/BoardTopicsFragment;I)I

    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$302(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 127
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
