.class Lcom/vkontakte/android/GroupsActivity$1$1;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsJoin$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/GroupsActivity$1;

.field private final synthetic val$g:Lcom/vkontakte/android/api/Group;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsActivity$1;Lcom/vkontakte/android/api/Group;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->this$1:Lcom/vkontakte/android/GroupsActivity$1;

    iput-object p2, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->val$g:Lcom/vkontakte/android/api/Group;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method

.method public success()V
    .locals 5

    .prologue
    .line 78
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->this$1:Lcom/vkontakte/android/GroupsActivity$1;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity$1;->access$0(Lcom/vkontakte/android/GroupsActivity$1;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v2

    const v3, 0x7f090207

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 79
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->this$1:Lcom/vkontakte/android/GroupsActivity$1;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity$1;->access$0(Lcom/vkontakte/android/GroupsActivity$1;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$0(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->val$g:Lcom/vkontakte/android/api/Group;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->val$g:Lcom/vkontakte/android/api/Group;

    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->this$1:Lcom/vkontakte/android/GroupsActivity$1;

    invoke-static {v3}, Lcom/vkontakte/android/GroupsActivity$1;->access$0(Lcom/vkontakte/android/GroupsActivity$1;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/GroupsCache;->add(Lcom/vkontakte/android/api/Group;Landroid/content/Context;)V

    .line 81
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->this$1:Lcom/vkontakte/android/GroupsActivity$1;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity$1;->access$0(Lcom/vkontakte/android/GroupsActivity$1;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->this$1:Lcom/vkontakte/android/GroupsActivity$1;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity$1;->access$0(Lcom/vkontakte/android/GroupsActivity$1;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$2(Lcom/vkontakte/android/GroupsActivity;)V

    .line 88
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->this$1:Lcom/vkontakte/android/GroupsActivity$1;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity$1;->access$0(Lcom/vkontakte/android/GroupsActivity$1;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.GROUPS_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/GroupsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v3, "groups"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 91
    .local v1, "ng":I
    add-int/lit8 v1, v1, -0x1

    .line 92
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 93
    :cond_1
    sget-object v2, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v3, "groups"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->this$1:Lcom/vkontakte/android/GroupsActivity$1;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity$1;->access$0(Lcom/vkontakte/android/GroupsActivity$1;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->this$1:Lcom/vkontakte/android/GroupsActivity$1;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity$1;->access$0(Lcom/vkontakte/android/GroupsActivity$1;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$3(Lcom/vkontakte/android/GroupsActivity;)V

    .line 95
    :cond_2
    sget-object v2, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/MenuListView;->updateList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "ng":I
    :cond_3
    :goto_1
    return-void

    .line 81
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/GroupInvitation;

    .line 82
    .local v0, "inv":Lcom/vkontakte/android/api/GroupInvitation;
    iget-object v3, v0, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget v3, v3, Lcom/vkontakte/android/api/Group;->id:I

    iget-object v4, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->val$g:Lcom/vkontakte/android/api/Group;

    iget v4, v4, Lcom/vkontakte/android/api/Group;->id:I

    if-ne v3, v4, :cond_0

    .line 83
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$1$1;->this$1:Lcom/vkontakte/android/GroupsActivity$1;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity$1;->access$0(Lcom/vkontakte/android/GroupsActivity$1;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v0    # "inv":Lcom/vkontakte/android/api/GroupInvitation;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
