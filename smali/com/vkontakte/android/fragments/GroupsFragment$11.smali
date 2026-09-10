.class Lcom/vkontakte/android/fragments/GroupsFragment$11;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/GroupsFragment$11;)Lcom/vkontakte/android/fragments/GroupsFragment;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_from_menu"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$17(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 338
    const-wide/16 v0, 0xb4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$17(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$18(Lcom/vkontakte/android/fragments/GroupsFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$17(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->getAdminedGroups(Ljava/util/ArrayList;)V

    .line 346
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$11$1;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment$11;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    :cond_1
    return-void

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$11;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$17(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->getGroups(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 339
    :catch_0
    move-exception v0

    goto :goto_0
.end method
