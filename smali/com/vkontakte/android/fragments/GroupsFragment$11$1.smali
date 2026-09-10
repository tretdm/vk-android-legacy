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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11$1;)Lcom/vkontakte/android/fragments/GroupsFragment$11;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 349
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$19(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 350
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$20(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 351
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$17(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$9(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$20(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/vkontakte/android/fragments/GroupListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 356
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$21(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$8(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/GroupsFragment$11$1$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$11$1$1;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment$11$1;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/GroupListFragment;->runAfterInit(Ljava/lang/Runnable;)V

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$8(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$19(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/vkontakte/android/fragments/GroupListFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 365
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$4(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    .line 366
    return-void

    .line 351
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 352
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    iget v2, v0, Lcom/vkontakte/android/api/Group;->type:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$20(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment$11;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$19(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
