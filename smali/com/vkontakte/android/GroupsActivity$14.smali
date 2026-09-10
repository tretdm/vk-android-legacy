.class Lcom/vkontakte/android/GroupsActivity$14;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsLeave$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsActivity;->declineInvitation(Lcom/vkontakte/android/api/GroupInvitation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsActivity;

.field private final synthetic val$inv:Lcom/vkontakte/android/api/GroupInvitation;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsActivity;Lcom/vkontakte/android/api/GroupInvitation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$14;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iput-object p2, p0, Lcom/vkontakte/android/GroupsActivity$14;->val$inv:Lcom/vkontakte/android/api/GroupInvitation;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 605
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 590
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$14;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$14;->val$inv:Lcom/vkontakte/android/api/GroupInvitation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 591
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$14;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$2(Lcom/vkontakte/android/GroupsActivity;)V

    .line 592
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$14;->this$0:Lcom/vkontakte/android/GroupsActivity;

    const v2, 0x7f090208

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 594
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v2, "groups"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 595
    .local v0, "ng":I
    add-int/lit8 v0, v0, -0x1

    .line 596
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 597
    :cond_0
    sget-object v1, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v2, "groups"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$14;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$14;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$3(Lcom/vkontakte/android/GroupsActivity;)V

    .line 599
    :cond_1
    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->updateList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v0    # "ng":I
    :cond_2
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v1

    goto :goto_0
.end method
