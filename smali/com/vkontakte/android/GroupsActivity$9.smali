.class Lcom/vkontakte/android/GroupsActivity$9;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsActivity;->createListView()Lcom/vkontakte/android/ui/RefreshableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$9;->this$0:Lcom/vkontakte/android/GroupsActivity;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/GroupsActivity$9;)Lcom/vkontakte/android/GroupsActivity;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$9;->this$0:Lcom/vkontakte/android/GroupsActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 373
    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr p3, v4

    .line 374
    if-gez p3, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v2

    .line 375
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/GroupsActivity$9;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v4}, Lcom/vkontakte/android/GroupsActivity;->access$11(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->resolveIndex(I)[I

    move-result-object v1

    .line 376
    .local v1, "p":[I
    aget v4, v1, v2

    if-nez v4, :cond_0

    .line 377
    aget v4, v1, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$9;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/GroupInvitation;

    .line 380
    .local v0, "g":Lcom/vkontakte/android/api/GroupInvitation;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/vkontakte/android/GroupsActivity$9;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkontakte/android/GroupsActivity$9;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090209

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Lcom/vkontakte/android/GroupsActivity$9$1;

    invoke-direct {v5, p0, v0}, Lcom/vkontakte/android/GroupsActivity$9$1;-><init>(Lcom/vkontakte/android/GroupsActivity$9;Lcom/vkontakte/android/api/GroupInvitation;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "g":Lcom/vkontakte/android/api/GroupInvitation;
    :goto_1
    move v2, v3

    .line 389
    goto :goto_0

    .line 388
    :catch_0
    move-exception v2

    goto :goto_1
.end method
