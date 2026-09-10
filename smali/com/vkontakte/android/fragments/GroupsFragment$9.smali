.class Lcom/vkontakte/android/fragments/GroupsFragment$9;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupsFragment;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x12c

    .line 350
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$26(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$26(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 352
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$24(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 353
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$25(Lcom/vkontakte/android/fragments/GroupsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 354
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    const/16 v5, 0x12c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 330
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$18(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$18(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 332
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$19(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 333
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$20(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 334
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$18(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$7(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/GroupsView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$19(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/GroupsView;->setData(Ljava/util/ArrayList;Z)V

    .line 339
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$8(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/GroupsView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$20(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/vkontakte/android/GroupsView;->setData(Ljava/util/ArrayList;Z)V

    .line 340
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$18(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$21(Lcom/vkontakte/android/fragments/GroupsFragment;I)V

    .line 341
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1, v3}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$22(Lcom/vkontakte/android/fragments/GroupsFragment;I)V

    .line 342
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$4(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    .line 343
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$23(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1, v4, v5}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 344
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$24(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-static {v1, v3, v5}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 345
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$25(Lcom/vkontakte/android/fragments/GroupsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 346
    return-void

    .line 334
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 335
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    iget v2, v0, Lcom/vkontakte/android/api/Group;->type:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$20(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$9;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$19(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
