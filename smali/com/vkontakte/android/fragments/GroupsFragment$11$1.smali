.class Lcom/vkontakte/android/fragments/GroupsFragment$11$1;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupsFragment$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupsFragment$11;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 348
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1200(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 349
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1300(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 350
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1100(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 351
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    iget v2, v0, Lcom/vkontakte/android/api/Group;->type:I

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1300(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1200(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    .end local v0    # "g":Lcom/vkontakte/android/api/Group;
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1400(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1300(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Lcom/vkontakte/android/fragments/GroupListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 355
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1500(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1000(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/GroupsFragment$11$1$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$11$1$1;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment$11$1;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/GroupListFragment;->runAfterInit(Ljava/lang/Runnable;)V

    .line 363
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1000(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1200(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/vkontakte/android/fragments/GroupListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 364
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$300(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    .line 365
    return-void
.end method
